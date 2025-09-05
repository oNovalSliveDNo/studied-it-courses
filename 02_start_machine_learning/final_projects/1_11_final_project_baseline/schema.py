# Готовим схемы на pydantic


from pydantic import BaseModel
from datetime import datetime
from typing import Optional


# Модель для представления данных из таблицы user
class UserGet(BaseModel):
    user_id: int
    gender: int
    age: int
    country: str
    city: str
    exp_group: int
    os: str
    source: str

    class Config:
        orm_mode = True


# Модель для представления данных из таблицы post
class PostGet(BaseModel):
    post_id: int
    text: str
    topic: str

    class Config:
        orm_mode = True


# Модель для представления данных из таблицы feed_action
class FeedGet(BaseModel):
    timestamp: datetime
    user_id: int
    post_id: int
    action: str
    target: int

    user: Optional[UserGet]  # Добавляем вложенную модель UserGet
    post: Optional[PostGet]  # Добавляем вложенную модель PostGet

    class Config:
        orm_mode = True
