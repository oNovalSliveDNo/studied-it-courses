# Простой select


from sqlalchemy import Column, Integer, String, Text
from database import Base, SessionLocal


class Post(Base):
    __tablename__ = "sample_post"  # Имя таблицы в базе данных

    post_id = Column(Integer, primary_key=True)  # Первичный ключ
    text = Column(Text)  # Содержимое поста
    topic = Column(String)  # Тема поста


if __name__ == "__main__":
    # Создание сессии
    session = SessionLocal()

    try:
        # Запрос для получения первых 10 постов с темой "business"
        # Сортируем по убыванию post_id и берем первые 10
        posts = (
            session.query(Post.post_id)  # Выбираем только поле post_id
            .filter(Post.topic == "business")  # Фильтруем по теме "business"
            .order_by(Post.post_id.desc())  # Сортируем по убыванию post_id
            .limit(10)  # Ограничиваем результат 10 записями
            .all()
        )  # Получаем все результаты

        # Извлечение post_id из результата
        # Каждый post - это кортеж с одним элементом (post_id,)
        post_ids = [post[0] for post in posts]

        # Печать результата в виде списка чисел
        print(post_ids)

    finally:
        # Всегда закрываем сессию после работы
        session.close()
