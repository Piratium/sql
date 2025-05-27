-- Создание таблицы users
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER
);

-- Наполнение таблицы users данными
INSERT INTO users (id, name, age) VALUES
(1, 'Юля', 25),
(2, 'Никита', 30),
(3, 'Савелий', 28);

SELECT * FROM users;


-- Создание таблицы orders
CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    product TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

-- Наполнение таблицы orders данными
INSERT INTO orders (id, user_id, product) VALUES
(1, 1, 'Ноутбук'),
(2, 1, 'Наушники'),
(3, 2, 'Монитор'),
(4, 3, 'Клавиатура');

SELECT * FROM orders;

-- Примеры JOIN запросов:

-- Внутреннее соединение (Inner Join)
SELECT users.name, orders.product
FROM users
INNER JOIN orders ON users.id = orders.user_id;

-- Левое соединение (Left Join)
SELECT users.name, orders.product
FROM users
LEFT JOIN orders ON users.id = orders.user_id;

-- Если добавить 

INSERT INTO users (id, name, age) VALUES
(4, 'Серёжа', 21);
SELECT * FROM users;
DELETE FROM users WHERE id = 5;

INSERT INTO orders (id, user_id, product) VALUES
(5, 1, 'Микрофон');
DELETE FROM orders WHERE id = 5;

-- Перекрёстное соединение (Cross Join)
SELECT users.name, orders.product
FROM users
CROSS JOIN orders;

