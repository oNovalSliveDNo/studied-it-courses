# GET: принимаем параметры


from fastapi import FastAPI

# Создание экземпляра FastAPI приложения
app = FastAPI()


@app.get("/")
def sum_two_numbers(a: int, b: int) -> int:
    """
    Endpoint для сложения двух целых чисел.

    Принимает два параметра в query string и возвращает их сумму.

    Args:
        a (int): Первое число для сложения
        b (int): Второе число для сложения

    Returns:
        int: Сумма двух чисел a + b

    Example:
        >>> GET http://localhost:8000/?a=5&b=3
        8

        >>> GET http://localhost:8000/?a=10&b=-2
        8

        >>> GET http://localhost:8000/?a=0&b=15
        15
    """

    return a + b
