import os
import pandas as pd
from pathlib import Path

# Определение путей к директориям с данными
RAW  = Path("../data/raw")  # Директория с исходными большими CSV файлами - остаются ТОЛЬКО локально (не добавляются в git)
MOCK = Path("../data")  # Директория для уменьшенных тестовых данных (моков) - их можно коммитить

# Параметризация долей выборки через переменные окружения с значениями по умолчанию
USERS_FRAC = float(os.getenv("USERS_FRAC", "0.01"))   # Доля пользователей для выборки (1% по умолчанию)
POSTS_FRAC = float(os.getenv("POSTS_FRAC", "0.05"))   # Доля постов для выборки (5%)
FEED_FRAC  = float(os.getenv("FEED_FRAC",  "0.001"))  # Доля действий в ленте (0.1% - 10k строк из 10M)

# 1) Чтение исходных данных из CSV файлов (выполняется локально)
users = pd.read_csv(RAW/"user_data.csv")              # Данные пользователей
posts = pd.read_csv(RAW/"post_text.csv")              # Тексты постов
feed  = pd.read_csv(RAW/"feed_data_10000000.csv")     # Данные действий в ленте (10M строк)

# 2) Создание репрезентативных выборок из данных
# Случайное извлечение подмножества пользователей и постов с фиксированным random_state для воспроизводимости
users_s = users.sample(frac=USERS_FRAC, random_state=42).copy()
posts_s = posts.sample(frac=POSTS_FRAC, random_state=42).copy()

# Создание множеств ID отобранных пользователей и постов для последующей фильтрации
u_keep = set(users_s["user_id"])  # оригинальные id пользователей
p_keep = set(posts_s["post_id"])  # оригинальные id постов

# Фильтрация действий в ленте: оставляем только те, где user_id и post_id присутствуют в отобранных подмножествах
feed_filtered = feed[
    feed["user_id"].isin(u_keep) & feed["post_id"].isin(p_keep)
].copy()

# Дополнительное ограничение размера данных ленты до фиксированного числа строк
FEED_ROWS = int(os.getenv("FEED_ROWS", "50000"))  # Максимальное количество строк (параметризуется)
if len(feed_filtered) > FEED_ROWS:
    # Если отфильтрованных строк больше лимита - берем случайную выборку
    feed_s = feed_filtered.sample(n=FEED_ROWS, random_state=42).copy()
else:
    # Иначе используем все отфильтрованные строки
    feed_s = feed_filtered

# 3) Консистентное переименование ID для анонимизации данных
# Создание словарей для маппинга оригинальных ID в последовательные целые числа

# Для пользователей: получаем уникальные ID и создаем словарь маппинга
u_ids = users_s["user_id"].drop_duplicates().reset_index(drop=True)
u_map = pd.Series(range(1, len(u_ids)+1), index=u_ids).to_dict()  # Маппинг в диапазон 1..N

# Для постов: аналогичная операция
p_ids = posts_s["post_id"].drop_duplicates().reset_index(drop=True)
p_map = pd.Series(range(1, len(p_ids)+1), index=p_ids).to_dict()  # Маппинг в диапазон 1..M

# Применение маппинга к данным пользователей и постов
users_s["user_id"] = users_s["user_id"].map(u_map)
posts_s["post_id"] = posts_s["post_id"].map(p_map)

# Применение маппинга к данным ленты и очистка от записей с отсутствующими ID
feed_s["user_id"] = feed_s["user_id"].map(u_map)
feed_s["post_id"] = feed_s["post_id"].map(p_map)

# Удаление строк, где маппинг не удался (значения NaN)
feed_s = feed_s.dropna(subset=["user_id", "post_id"])

# Приведение типов к integer (после маппинга могли появиться float из-за NaN)
feed_s[["user_id", "post_id"]] = feed_s[["user_id", "post_id"]].astype("int64")

# 6) Приведение типа временной метки к datetime
feed_s["timestamp"] = pd.to_datetime(feed_s["timestamp"])

# 7) Сохранение уменьшенных и анонимизированных данных в CSV файлы
users_s.to_csv(MOCK/"sample_user.csv", index=False)           # Данные пользователей
posts_s.to_csv(MOCK/"sample_post.csv", index=False)           # Данные постов
feed_s.to_csv(MOCK/"sample_feed_action.csv", index=False)     # Действия в ленте

# Вывод информации о процессе
print("Mock data saved to data/mock/")
# Вывод размеров полученных датафреймов для контроля
print(users_s.shape, posts_s.shape, feed_s.shape)