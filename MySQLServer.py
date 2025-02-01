import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL Server
    alx_book_store = mysql.connector.connect(
        host="localhost",
        user="your_username",  # Change to your MySQL username
        password="your_password"  # Change to your MySQL password
    )

    if alx_book_store.is_connected():
        mycursor = alx_book_store.cursor()
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
        mycursor.close()

except mysql.connector.Error as e:  # Ensures the use of mysql.connector.Error
    print(f"Error connecting to MySQL: {e}")

finally:
    if 'alx_book_store' in locals() and alx_book_store.is_connected():
        alx_book_store.close()
        print("Database connection closed.")
