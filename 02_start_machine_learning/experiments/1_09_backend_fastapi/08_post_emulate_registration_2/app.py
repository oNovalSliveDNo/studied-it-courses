# POST: эмулируем регистрацию (2/2)


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


@app.post("/user/validate")
def validate_user(user: User) -> str:
    """
    Endpoint для валидации данных пользователя при регистрации.

    Принимает JSON с данными пользователя, валидирует их через модель User
    и возвращает сообщение о готовности добавления пользователя.

    Args:
        user (User): Данные пользователя для валидации

    Returns:
        str: Сообщение о готовности добавления пользователя

    Example:
        >>> POST /user/validate
        >>> Body: {
            "name": "Aleksei",
            "surname": "Kozharin",
            "age": 77,
            "registration_date": "2022-01-01"
        }
        >>> Response: "Will add user: Aleksei Kozharin with age 77"

    Error Example:
        >>> POST /user/validate
        >>> Body: {
            "name": "Aleksei",
            "surname": "Another"
        }
        >>> Response: 422 Unprocessable Entity с деталями ошибки валидации
    """
    # Формируем сообщение с использованием валидированных данных
    return f"Will add user: {user.name} {user.surname} with age {user.age}"
