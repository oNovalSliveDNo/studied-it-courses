# Строим отношения


# Импортируем необходимые компоненты FastAPI
from fastapi import FastAPI, HTTPException, Depends, Query

# Импортируем инструменты для работы с базой данных
from sqlalchemy.orm import Session, joinedload
from sqlalchemy import func  # для агрегатных функций (COUNT, SUM и т.д.)
from database import SessionLocal  # наше подключение к базе данных
from schema import UserGet, PostGet, FeedGet  # Pydantic схемы для валидации
from table_user import User  # ORM модель пользователя
from table_post import Post  # ORM модель поста
from table_feed import Feed  # ORM модель действий в ленте
from typing import List  # для типизации списков

# Создаем экземпляр приложения FastAPI - это основной объект нашего веб-сервера
app = FastAPI()


# Зависимость, которая создает сессию базы данных для каждого запроса
# и автоматически закрывает её после завершения (чтобы не было утечек соединений)
def get_db():
    # Создаем новое соединение с базой данных
    db = SessionLocal()
    try:
        # Отдаем соединение в обработчик запроса
        yield db
    finally:
        # Гарантированно закрываем соединение после обработки запроса
        db.close()


# Эндпоинт для получения данных пользователя по ID
# GET /user/123 - вернет данные пользователя с ID 123
@app.get("/user/{id}", response_model=UserGet)
def get_user(id: int, db: Session = Depends(get_db)):
    # Ищем пользователя в базе данных по user_id
    user = db.query(User).filter(User.user_id == id).first()

    # Если пользователь не найден, возвращаем ошибку 404
    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    # Возвращаем найденного пользователя (автоматически конвертируется в JSON)
    return user


# Эндпоинт для получения данных поста по ID
# GET /post/456 - вернет данные поста с ID 456
@app.get("/post/{id}", response_model=PostGet)
def get_post(id: int, db: Session = Depends(get_db)):
    # Ищем пост в базе данных по post_id
    post = db.query(Post).filter(Post.post_id == id).first()

    # Если пост не найден, возвращаем ошибку 404
    if not post:
        raise HTTPException(status_code=404, detail="Post not found")

    # Возвращаем найденный пост
    return post


# Эндпоинт для получения ленты действий конкретного пользователя
# GET /user/123/feed?limit=5 - последние 5 действий пользователя 123
@app.get("/user/{id}/feed", response_model=List[FeedGet])
def get_user_feed(id: int, limit: int = Query(10), db: Session = Depends(get_db)):
    # Строим запрос к базе данных:
    feed = (
        db.query(Feed)  # Выбираем данные из таблицы Feed
        .options(joinedload(Feed.user), joinedload(Feed.post))  # Загружаем связанные данные пользователя и поста
        .filter(Feed.user_id == id)  # Фильтруем по ID пользователя
        .order_by(Feed.timestamp.desc())  # Сортируем по времени (новые сначала)
        .limit(limit)  # Ограничиваем количество результатов
        .all()  # Выполняем запрос и получаем все результаты
    )
    return feed


# Эндпоинт для получения ленты действий по конкретному посту
# GET /post/456/feed?limit=3 - последние 3 действия с постом 456
@app.get("/post/{id}/feed", response_model=List[FeedGet])
def get_post_feed(id: int, limit: int = Query(10), db: Session = Depends(get_db)):
    # Аналогичный запрос, но фильтруем по ID поста
    feed = (
        db.query(Feed)
        .options(joinedload(Feed.user), joinedload(Feed.post))
        .filter(Feed.post_id == id)  # Фильтруем по ID поста
        .order_by(Feed.timestamp.desc())
        .limit(limit)
        .all()
    )
    return feed


# Эндпоинт для получения рекомендованных постов (топ по лайкам)
# GET /post/recommendations/?limit=5 - топ-5 самых залайканных постов
@app.get("/post/recommendations/", response_model=List[PostGet])
def get_recommended_posts(limit: int = Query(10), db: Session = Depends(get_db)):
    # Сложный запрос для получения самых популярных постов:
    recommended_posts = (
        db.query(Post)  # В результате хотим получить данные постов
        .select_from(Feed)  # Но начинаем с таблицы Feed (действий)
        .join(Post, Feed.post_id == Post.post_id)  # Соединяем с таблицей постов
        .filter(Feed.action == 'like')  # Берем только лайки
        .group_by(Post.post_id)  # Группируем по ID поста чтобы считать лайки
        .order_by(func.count(Feed.post_id).desc())  # Сортируем по количеству лайков (убывание)
        .limit(limit)  # Ограничиваем результат
        .all()  # Выполняем запрос
    )
    return recommended_posts
