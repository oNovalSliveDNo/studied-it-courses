# Соединяем ORM и FastAPI


from fastapi import FastAPI, HTTPException, Depends
from sqlalchemy.orm import Session
from database import SessionLocal
from schema import UserGet, PostGet
from table_user import User
from table_post import Post

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
