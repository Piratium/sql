--GROUP BY

--Средняя зп по палате
SELECT department_id, MAX(salary) AS max_salary
FROM employees
GROUP BY department_id
HAVING max_salary BETWEEN 60000 AND 80000;

--Кол-во сотрудников в каждом отделе
SELECT department_id, COUNT(id) AS employee_count
FROM employees
GROUP BY department_id;


SELECT department_id, MAX(salary) AS max_salary
FROM employees
GROUP BY department_id
HAVING max_salary BETWEEN 60000 AND 80000;