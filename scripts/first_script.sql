-- Example SQL script for setting up the user_x_db
CREATE DATABASE IF NOT EXISTS user_1_db;

USE user_1_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users (username, email, password)
VALUES ('testuser', 'testuser@example.com', 'password');
