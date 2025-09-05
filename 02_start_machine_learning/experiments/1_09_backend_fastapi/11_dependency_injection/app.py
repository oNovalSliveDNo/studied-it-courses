# Dependency injection


from fastapi import FastAPI, HTTPException, Depends
import psycopg2
from psycopg2.extras import RealDictCursor

# Создание экземпляра FastAPI приложения
app = FastAPI()


def get_db():
    """
    Dependency функция для получения соединения с базой данных.

    Returns:
        psycopg2.connection: Объект соединения с PostgreSQL

    Example:
        >>> db = get_db()
        >>> cursor = db.cursor()
    """
    # Создание и возвращение соединения с базой данных
    conn = psycopg2.connect(
        host="localhost",
        port=5432,
        database="startml_mock",
        user="postgres",
        password="postgres",
        cursor_factory=RealDictCursor
    )
    return conn


@app.get("/user/{user_id}")
def get_user(user_id: int, db=Depends(get_db)):
    """
    Endpoint для получения данных пользователя по ID из базы данных.
    Использует dependency injection для получения соединения с БД.

    Args:
        user_id (int): ID пользователя для поиска в базе данных
        db: Соединение с базой данных (внедряется через dependency injection)

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
    """
    # Создание курсора для выполнения запросов
    with db.cursor() as cursor:
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

    # Закрытие соединения с базой данных (FastAPI автоматически управляет жизненным циклом)

    # Проверка наличия пользователя
    if result is None:
        raise HTTPException(status_code=404, detail="user not found")

    return result
