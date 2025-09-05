# FastAPI и ORM: усложняем


from fastapi import FastAPI, HTTPException, Depends, Query
from sqlalchemy.orm import Session
from database import SessionLocal
from schema import UserGet, PostGet, FeedGet
from table_user import User
from table_post import Post
from table_feed import Feed
from typing import List

# Создаем экземпляр приложения FastAPI
app = FastAPI()


# Зависимость, которая создает сессию базы данных
# для каждого запроса и закрывает её после завершения
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


# Эндпоинт для получения данных пользователя по ID
@app.get("/user/{id}", response_model=UserGet)
def get_user(id: int, db: Session = Depends(get_db)):
    user = db.query(User).filter(User.user_id == id).first()
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    return user


# Эндпоинт для получения данных поста по ID
@app.get("/post/{id}", response_model=PostGet)
def get_post(id: int, db: Session = Depends(get_db)):
    post = db.query(Post).filter(Post.post_id == id).first()
    if not post:
        raise HTTPException(status_code=404, detail="Post not found")
    return post


# Эндпоинт для получения фида действий пользователя по ID
@app.get("/user/{id}/feed", response_model=List[FeedGet])
def get_user_feed(id: int, limit: int = Query(10), db: Session = Depends(get_db)):
    feed = (
        db.query(
            Feed.timestamp,
            Feed.user_id,
            Feed.post_id,
            Feed.action,
            Feed.target
        )
        .filter(Feed.user_id == id)
        .order_by(Feed.timestamp.desc())
        .limit(limit)
        .all()
    )
    return feed


# Эндпоинт для получения фида действий по посту по ID
@app.get("/post/{id}/feed", response_model=List[FeedGet])
def get_post_feed(id: int, limit: int = Query(10), db: Session = Depends(get_db)):
    feed = (
        db.query(
            Feed.timestamp,
            Feed.user_id,
            Feed.post_id,
            Feed.action,
            Feed.target
        )
        .filter(Feed.post_id == id)
        .order_by(Feed.timestamp.desc())
        .limit(limit)
        .all()
    )
    return feed
