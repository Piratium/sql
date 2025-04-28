--Агрегатные функции

SELECT * FROM departments;
SELECT * FROM employees ORDER BY department_id ASC;

SELECT COUNT(department_id) AS 'Кол-во рабзработчиков'
FROM employees
WHERE department_id = 3;

SELECT SUM(salary) AS 'Сумма сп всех сотрудников' 
FROM employees;

SELECT ROUND(AVG(salary),2) AS 'Средняя зп разрабов'
FROM employees
WHERE department_id = 3;


SELECT MAX(salary) AS 'Максимальная зп разрабов'
FROM employees
WHERE department_id = 3;

SELECT MIN(salary) AS 'Минимальная зп разрабов'
FROM employees
WHERE department_id = 3;

--Подзапросы

--Вывод сотрудников с зп, которая больше средней по палате
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

--Вывод средней зп сотрудников из определенного отдела
SELECT AVG(tmp.salary)
FROM (SELECT salary FROM employees WHERE department_id = 1) AS tmp;

SELECT salary FROM employees WHERE department_id = 1;