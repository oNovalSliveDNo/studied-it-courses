# ForeignKey


from sqlalchemy import Column, Integer, String, DateTime, ForeignKey
from database import Base


class Feed(Base):
    __tablename__ = "sample_feed_action"  # Имя таблицы в базе данных

    # Добавляем искусственный первичный ключ
    id = Column(Integer, primary_key=True, autoincrement=True)
    timestamp = Column(DateTime)  # Временная метка
    user_id = Column(Integer, ForeignKey('sample_user.user_id'))  # Ссылка на пользователя
    post_id = Column(Integer, ForeignKey('sample_post.post_id'))  # Ссылка на пост
    action = Column(String)  # Действие пользователя (like, view, etc.)
    target = Column(Integer)  # Целевое значение (вероятно, для лайков/дизлайков)
