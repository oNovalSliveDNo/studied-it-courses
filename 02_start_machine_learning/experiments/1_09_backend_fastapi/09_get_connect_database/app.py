# GET: подключаем БД


from fastapi import FastAPI
import psycopg2
from psycopg2.extras import RealDictCursor

# Создание экземпляра FastAPI приложения
app = FastAPI()


@app.get("/user/{user_id}")
def get_user(user_id: int):
    """
    Endpoint для получения данных пользователя по ID из базы данных.

    Args:
        user_id (int): ID пользователя для поиска в базе данных

    Returns:
        dict: Данные пользователя в формате JSON с полями gender, age, city

    Example:
        >>> GET /user/205
        {
          "gender": 0,
          "age": 32,
          "city": "Dugulubgey"
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
    # Используем параметризованный запрос для безопасности
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

    return result
