import pandas as pd
import psycopg2
from psycopg2.extras import execute_values
import os

# Конфигурация базы данных
DB_CONFIG = {
    "host": "localhost",
    "port": 5432,
    "database": "startml_mock",
    "user": "postgres",
    "password": "postgres"
}


def create_tables(conn):
    """Создание таблиц в базе данных"""
    commands = (
        """
        CREATE TABLE IF NOT EXISTS sample_user (
            user_id INTEGER PRIMARY KEY,
            gender INTEGER NOT NULL,
            age INTEGER NOT NULL,
            country VARCHAR(100) NOT NULL,
            city VARCHAR(100) NOT NULL,
            exp_group INTEGER NOT NULL,
            os VARCHAR(50) NOT NULL,
            source VARCHAR(50) NOT NULL
        )
        """,
        """
        CREATE TABLE IF NOT EXISTS sample_post (
            post_id INTEGER PRIMARY KEY,
            text TEXT NOT NULL,
            topic VARCHAR(100) NOT NULL
        )
        """,
        """
        CREATE TABLE IF NOT EXISTS sample_feed_action (
            timestamp TIMESTAMP NOT NULL,
            user_id INTEGER NOT NULL,
            post_id INTEGER NOT NULL,
            action VARCHAR(50) NOT NULL,
            target INTEGER NOT NULL,
            FOREIGN KEY (user_id) REFERENCES sample_user (user_id),
            FOREIGN KEY (post_id) REFERENCES sample_post (post_id)
        )
        """
    )

    try:
        with conn.cursor() as cur:
            for command in commands:
                cur.execute(command)
        conn.commit()
        print("Таблицы успешно созданы")
    except Exception as e:
        print(f"Ошибка при создании таблиц: {e}")
        conn.rollback()
        raise


def load_data_from_csv(conn, file_path, table_name):
    """Загрузка данных из CSV файла в таблицу"""
    try:
        # Чтение CSV файла
        df = pd.read_csv(file_path)

        # Получение названий колонок
        columns = list(df.columns)
        columns_str = ', '.join(columns)

        # Создание строки с плейсхолдерами для значений
        placeholders = ', '.join(['%s'] * len(columns))

        # Подготовка данных для вставки
        data_tuples = [tuple(x) for x in df.to_numpy()]

        # SQL запрос для вставки данных
        sql = f"INSERT INTO {table_name} ({columns_str}) VALUES {placeholders}"

        with conn.cursor() as cur:
            # Используем execute_values для эффективной вставки множества строк
            execute_values(cur, f"INSERT INTO {table_name} ({columns_str}) VALUES %s", data_tuples)

        conn.commit()
        print(f"Данные из {file_path} успешно загружены в таблицу {table_name}")

    except Exception as e:
        print(f"Ошибка при загрузке данных из {file_path}: {e}")
        conn.rollback()
        raise


def main():
    """Основная функция"""
    try:
        # Подключение к базе данных
        conn = psycopg2.connect(**DB_CONFIG)
        print("Успешное подключение к базе данных")

        # Создание таблиц
        create_tables(conn)

        # Определение путей к файлам
        base_dir = os.path.dirname(os.path.abspath(__file__))
        data_dir = os.path.join(base_dir, '..', 'data')

        # Загрузка данных из CSV файлов
        load_data_from_csv(conn, os.path.join(data_dir, 'sample_user.csv'), 'sample_user')
        load_data_from_csv(conn, os.path.join(data_dir, 'sample_post.csv'), 'sample_post')
        load_data_from_csv(conn, os.path.join(data_dir, 'sample_feed_action.csv'), 'sample_feed_action')

        print("Все данные успешно загружены в базу данных")

    except Exception as e:
        print(f"Произошла ошибка: {e}")
    finally:
        if conn:
            conn.close()
            print("Соединение с базой данных закрыто")


if __name__ == "__main__":
    main()
