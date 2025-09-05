# database.py


from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Строка подключения к PostgreSQL базе данных
# Формат: postgresql://username:password@host:port/database_name
SQLALCHEMY_DATABASE_URL = "postgresql://postgres:postgres@localhost:5432/startml_mock"

# Создаем движок (engine) - основной интерфейс к базе данных
# Движок управляет подключениями и выполняет SQL-запросы
engine = create_engine(SQLALCHEMY_DATABASE_URL)

# Создаем фабрику сессий (SessionLocal)
# Сессии используются для взаимодействия с базой данных
# autocommit=False - отключаем автоматическое подтверждение транзакций
# autoflush=False - отключаем автоматическую синхронизацию с БД
# bind=engine - привязываем сессии к созданному движку
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Создаем базовый класс для всех ORM моделей
# Все модели будут наследоваться от этого класса
Base = declarative_base()
