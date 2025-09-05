# Больше моделей


from sqlalchemy import Column, Integer, String
from database import Base


class User(Base):
    __tablename__ = "sample_user"  # Имя таблицы в базе данных

    user_id = Column(Integer, primary_key=True)  # Первичный ключ
    gender = Column(Integer)  # Пол пользователя (числовой код)
    age = Column(Integer)  # Возраст пользователя
    country = Column(String)  # Страна (максимум 100 символов)
    city = Column(String)  # Город (максимум 100 символов)
    exp_group = Column(Integer)  # Экспериментальная группа
    os = Column(String)  # Операционная система
    source = Column(String)  # Источник трафика
