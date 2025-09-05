# Валидация ответа


from fastapi import FastAPI, HTTPException, Depends
import psycopg2
from psycopg2.extras import RealDictCursor
from pydantic import BaseModel

# Создание экземпляра FastAPI приложения
app = FastAPI()


class PostResponse(BaseModel):
    """
    Модель Pydantic для валидации ответа с данными поста.

    Attributes:
        id (int): ID поста
        text (str): Текст поста
        topic (str): Тема поста
    """
    id: int
    text: str
    topic: str

    class Config:
        # Включаем поддержку ORM mode для работы с данными из БД
        orm_mode = True


def get_db():
    """
    Dependency функция для получения соединения с базой данных.

    Returns:
        psycopg2.connection: Объект соединения с PostgreSQL
    """
    conn = psycopg2.connect(
        host="localhost",
        port=5432,
        database="startml_mock",
        user="postgres",
        password="postgres",
        cursor_factory=RealDictCursor
    )
    return conn


@app.get("/post/{id}", response_model=PostResponse)
def get_post(id: int, db=Depends(get_db)):
    """
    Endpoint для получения данных поста по ID с валидацией ответа.

    Args:
        id (int): ID поста для поиска в базе данных
        db: Соединение с базой данных (внедряется через dependency injection)

    Returns:
        PostResponse: Данные поста, провалидированные через модель

    Raises:
        HTTPException: 404 если пост не найден

    Example:
        >>> GET /post/123
        {
          "id": 123,
          "text": "Пример текста поста",
          "topic": "programming"
        }
    """
    # Создание курсора для выполнения запросов
    with db.cursor() as cursor:
        # Выполнение SQL запроса для поиска поста по ID
        cursor.execute(
            """
            SELECT post_id AS id, text, topic
            FROM sample_post
            WHERE post_id = %s
            """,
            (id,)
        )

        # Получение результата запроса
        result = cursor.fetchone()

    # Проверка наличия поста
    if result is None:
        raise HTTPException(status_code=404, detail="post not found")

    # Валидация и возврат данных через Pydantic модель
    return PostResponse(**result)
