import mysql.connector
from mysql.connector import Error

try:
    alx_book_store =  mysql.connector.connect(
    host="localhost",
    user="your_username",
    password="password",
    database="alx_book_store"
)

    if alx_book_store.is_connected():
        mycursor = alx_book_store.cursor()
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
        alx_book_store.close()

except Error as e:
    print(f"Error connecting to MySQL: {e}")

finally:
    if 'alx_book_store' in locals() and alx_book_store.is_connected():
        alx_book_store.close()
        print("Database connection closed.")

