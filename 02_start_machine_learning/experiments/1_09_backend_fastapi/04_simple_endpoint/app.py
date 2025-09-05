# Простой endpoint


from fastapi import FastAPI

# Создание экземпляра FastAPI приложения
app = FastAPI()


@app.get("/")
def say_hello() -> str:
    """
    Простой endpoint для приветствия.

    Returns:
        str: Строка приветствия "hello, world"

    Example:
        >>> GET http://localhost:8000/
        "hello, world"
    """

    return "hello, world"
