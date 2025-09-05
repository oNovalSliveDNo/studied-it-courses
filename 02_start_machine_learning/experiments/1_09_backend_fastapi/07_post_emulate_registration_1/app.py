# POST: эмулируем регистрацию (1/2)


from fastapi import FastAPI
from pydantic import BaseModel
from datetime import date

# Создание экземпляра FastAPI приложения
app = FastAPI()


class User(BaseModel):
    """
    Модель Pydantic для валидации данных пользователя при регистрации.

    Attributes:
        name (str): Имя пользователя
        surname (str): Фамилия пользователя
        age (int): Возраст пользователя
        registration_date (date): Дата регистрации в формате YYYY-MM-DD
    """

    name: str
    surname: str
    age: int
    registration_date: date

    class Config:
        # Включаем поддержку ORM mode для возможной интеграции с базами данных
        orm_mode = True


# Для демонстрации работы модели можно добавить простой endpoint
@app.post("/user/validate")
def validate_user(user: User):
    """
    Endpoint для валидации данных пользователя.

    Принимает JSON с данными пользователя и валидирует их через модель User.

    Args:
        user (User): Данные пользователя для валидации

    Returns:
        dict: Сообщение об успешной валидации и принятые данные
    """

    return {
        "message": "Данные пользователя успешно валидированы",
        "user_data": user.dict()
    }
