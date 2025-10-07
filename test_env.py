# test_env.py
import os
from dotenv import load_dotenv

# Carrega as variáveis do arquivo .env
load_dotenv()

# Lê as variáveis
POSTGRES_USER = os.getenv("POSTGRES_USER")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD")
POSTGRES_DB = os.getenv("POSTGRES_DB")
POSTGRES_HOST = os.getenv("POSTGRES_HOST")
POSTGRES_PORT = os.getenv("POSTGRES_PORT")

# Imprime para conferir
print("POSTGRES_USER:", POSTGRES_USER)
print("POSTGRES_PASSWORD:", POSTGRES_PASSWORD)
print("POSTGRES_DB:", POSTGRES_DB)
print("POSTGRES_HOST:", POSTGRES_HOST)
print("POSTGRES_PORT:", POSTGRES_PORT)
