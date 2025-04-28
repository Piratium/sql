SELECT e.name AS 'Имя Фамилия', d.address AS 'Адрес' FROM employees AS e
INNER JOIN employee_details AS d ON e.id = d.id;

SELECT emp.name AS 'Имя Фамилия', dep.name AS 'Департамент' FROM departments AS dep 
INNER JOIN employees AS emp ON dep.id = emp.department_id;

SELECT emp.name AS 'Имя Фамилия', dep.name AS 'Департамент' FROM employees AS emp 
LEFT JOIN departments AS dep ON emp.department_id = dep.id;

INSERT INTO employees (name, position, department_id, salary) VALUES
('Артём Астюньпский', 'Смотрящий', null, 100000),
('Роман Астюньпский', 'Смотрящий', null, 100000),
('Виктор Астюньпский', 'Смотрящий', null, 100000);

DELETE FROM employees
WHERE id = 21;

SELECT * FROM employees;

SELECT emp.name AS 'Имя Фамилия', dep.name AS 'Департамент' 
FROM employees AS emp
CROSS JOIN departments AS dep;
