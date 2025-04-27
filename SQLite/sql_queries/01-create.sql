CREATE TABLE departaments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    position TEXT NOT NULL,
    departament_id INTEGER,
    salary REAL,
    FOREIGN KEY (departament_id) REFERENCES departaments(id)
);

CREATE TABLE employee_details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER,
    age INTEGER,
    address TEXT,
    join_date TEXT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);