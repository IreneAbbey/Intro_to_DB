CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE IF NOT EXISTS Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id FOREIGN KEY REFERENCES author,
    price DOUBLE PRECISION,
    publication_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id FOREIGN KEY REFERENCES customers,
    order_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Order_Details(
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id FOREIGN KEY REFERENCES orders,
    book_id FOREIGN KEY REFERENCES books,
    quantity DOUBLE PRECISION
);