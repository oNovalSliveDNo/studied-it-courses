# ORM: первая модель


from sqlalchemy import Column, Integer, String, Text
from database import Base


class Post(Base):
    __tablename__ = "sample_post"  # Имя таблицы в базе данных

    post_id = Column(Integer, primary_key=True)  # Первичный ключ
    text = Column(Text)  # Содержимое поста
    topic = Column(String)  # Тема поста
