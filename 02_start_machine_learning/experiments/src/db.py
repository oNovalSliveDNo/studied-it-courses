# src/db.py

import os
import psycopg2
from contextlib import contextmanager


def get_db_url(env_var: str = "STARTML_DB_URL") -> str:
    url = os.getenv(env_var)
    if not url:
        raise RuntimeError(
            f"{env_var} not set. Provide DB URL via env var or use local CSV snapshots."
        )
    return url


@contextmanager
def get_conn():
    url = get_db_url()
    conn = psycopg2.connect(url)
    try:
        yield conn
    finally:
        conn.close()
