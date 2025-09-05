# Запросы посложнее


from sqlalchemy import Column, Integer, String, func
from database import Base, SessionLocal


class User(Base):
    __tablename__ = "sample_user"  # Имя таблицы в базе данных

    user_id = Column(Integer, primary_key=True)  # Первичный ключ
    gender = Column(Integer)  # Пол пользователя (числовой код)
    age = Column(Integer)  # Возраст пользователя
    country = Column(String)  # Страна
    city = Column(String)  # Город
    exp_group = Column(Integer)  # Экспериментальная группа
    os = Column(String)  # Операционная система
    source = Column(String)  # Источник трафика


if __name__ == "__main__":
    # Создаем сессию для работы с базой данных
    session = SessionLocal()

    try:
        # Выполнение сложного запроса:
        # 1. Выбираем поля country, os и количество записей (count)
        # 2. Фильтруем только пользователей с exp_group = 3
        # 3. Группируем по парам (country, os)
        # 4. Оставляем только группы с количеством записей > 100
        # 5. Сортируем по убыванию количества записей
        results = (
            session.query(User.country, User.os, func.count().label('count'))
            .filter(User.exp_group == 3)  # WHERE exp_group = 3
            .group_by(User.country, User.os)  # GROUP BY country, os
            .having(func.count() > 100)  # HAVING COUNT(*) > 100
            .order_by(func.count().desc())  # ORDER BY COUNT(*) DESC
            .all()  # Выполняем запрос и получаем все результаты
        )

        # Преобразование результатов в список кортежей
        # Каждый результат - это кортеж (country, os, count)
        result_list = [(country, os, count) for country, os, count in results]

        # Печать результата
        print(result_list)

    finally:
        # Всегда закрываем сессию после работы
        session.close()
