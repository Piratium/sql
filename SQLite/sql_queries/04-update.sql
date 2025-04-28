SELECT * FROM employees ORDER BY salary ASC;

SELECT * FROM employee_details;

UPDATE employees 
SET salary = salary * 1.05 
WHERE position = 'HR-менеджер' OR salary < 62000;

SELECT d.employee_id, e.id, d.address, e.name FROM employee_details AS d 
JOIN employees AS e ON d.employee_id = e.id;

UPDATE employee_details
SET address = 'ул. Ленина, д. 121, Москва, 123456'
WHERE employee_id = (SELECT id FROM employees WHERE name = 'Иван Иванов');