# ForeignKey


from sqlalchemy import Column, Integer, String, DateTime, ForeignKey
from sqlalchemy.orm import relationship
from database import Base
from table_user import User
from table_post import Post


class Feed(Base):
    __tablename__ = "sample_feed_action"  # Имя таблицы в базе данных

    # Используем составной ключ
    timestamp = Column(DateTime, primary_key=True)  # Временная метка
    user_id = Column(Integer, ForeignKey('sample_user.user_id'), primary_key=True)  # Ссылка на пользователя
    post_id = Column(Integer, ForeignKey('sample_post.post_id'), primary_key=True)  # Ссылка на пост
    action = Column(String)  # Действие пользователя (like, view, etc.)
    target = Column(Integer)  # Целевое значение (вероятно, для лайков/дизлайков)

    # Определяем отношения
    user = relationship("User")  # Связь с таблицей User
    post = relationship("Post")  # Связь с таблицей Post
