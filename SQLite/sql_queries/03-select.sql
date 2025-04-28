SELECT * FROM employees WHERE name LIKE '%ва' OR '%ев' ORDER BY salary ASC;

SELECT e.id, e.name, e.salary FROM employees AS e WHERE e.salary BETWEEN 55000 AND 70000;

SELECT name AS 'Имя Фамилия', position AS 'Должность' FROM employees;

SELECT name, salary 
FROM employees 
WHERE salary 
ORDER BY salary ASC 
LIMIT 6;

SELECT position, AVG(salary) AS avg_salary
FROM employees
WHERE name LIKE '%ва' OR '%ев'
GROUP BY position
HAVING salary BETWEEN 60000 AND 76000;
