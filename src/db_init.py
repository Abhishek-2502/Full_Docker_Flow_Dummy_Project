import psycopg2
import os

DATABASE_URL = os.getenv("DATABASE_URL")

try:
    conn = psycopg2.connect(DATABASE_URL)
    print("✅ Connected to the database successfully!")
except Exception as e:
    print(f"❌ Failed to connect: {e}")
