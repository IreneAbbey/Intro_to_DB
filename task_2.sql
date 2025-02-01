USE DATABASE alx_book_store_;

CREATE TABLE IF NOT EXISTS books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id FOREIGN KEY REFERENCES author,
    price DOUBLE PRECISION,
    publication_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE IF NOT EXISTS customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    addrress TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id FOREIGN KEY REFERENCES customers,
    order_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS order_details(
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id FOREIGN KEY REFERENCES orders,
    book_id FOREIGN KEY REFERENCES books,
    quantity DOUBLE PRECISION
);