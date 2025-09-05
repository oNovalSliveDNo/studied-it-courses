# GET: принимаем сложные типы данных


from fastapi import FastAPI
from datetime import date, timedelta

# Создание экземпляра FastAPI приложения
app = FastAPI()


@app.get("/sum_date")
def sum_date(current_date: date, offset: int) -> str:
    """
    Endpoint для сложения даты и смещения в днях.

    Принимает дату в формате YYYY-MM-DD и целочисленное смещение,
    возвращает новую дату после добавления смещения.

    Args:
        current_date (date): Исходная дата в формате YYYY-MM-DD
        offset (int): Количество дней для добавления (может быть отрицательным)

    Returns:
        str: Новая дата в формате YYYY-MM-DD после добавления смещения

    Example:
        >>> GET http://localhost:8000/sum_date?current_date=2008-09-15&offset=2
        "2008-09-17"

        >>> GET http://localhost:8000/sum_date?current_date=2023-01-01&offset=-1
        "2022-12-31"

        >>> GET http://localhost:8000/sum_date?current_date=2023-02-28&offset=2
        "2023-03-02"
    """

    # Вычисляем новую дату, добавляя смещение в днях
    new_date = current_date + timedelta(days=offset)

    # Возвращаем дату в формате строки YYYY-MM-DD
    return new_date.isoformat()
