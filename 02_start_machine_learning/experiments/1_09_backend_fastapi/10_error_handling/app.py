# Обрабатываем ошибки


from fastapi import FastAPI, HTTPException
import psycopg2
from psycopg2.extras import RealDictCursor

# Создание экземпляра FastAPI приложения
app = FastAPI()


@app.get("/user/{user_id}")
def get_user(user_id: int):
    """
    Endpoint для получения данных пользователя по ID из базы данных.
    Возвращает 404 ошибку если пользователь не найден.

    Args:
        user_id (int): ID пользователя для поиска в базе данных

    Returns:
        dict: Данные пользователя в формате JSON с полями gender, age, city

    Raises:
        HTTPException: 404 если пользователь не найден

    Example:
        >>> GET /user/205
        {
          "gender": 0,
          "age": 32,
          "city": "Dugulubgey"
        }

        >>> GET /user/999999
        {
          "detail": "user not found"
        }
    """
    # Подключение к базе данных PostgreSQL
    conn = psycopg2.connect(
        host="localhost",
        port=5432,
        database="startml_mock",
        user="postgres",
        password="postgres",
        cursor_factory=RealDictCursor
    )

    # Создание курсора для выполнения запросов
    cursor = conn.cursor()

    # Выполнение SQL запроса для поиска пользователя по ID
    cursor.execute(
        """
        SELECT gender, age, city
        FROM sample_user
        WHERE user_id = %s
        """,
        (user_id,)
    )

    # Получение результата запроса
    result = cursor.fetchone()

    # Закрытие соединения с базой данных
    cursor.close()
    conn.close()

    # Проверка наличия пользователя
    if result is None:
        raise HTTPException(status_code=404, detail="user not found")

    return result
