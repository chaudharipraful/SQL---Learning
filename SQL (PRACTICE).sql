CREATE TABLE employees(
	employee_id INT,
	employee_name VARCHAR(50),
	department VARCHAR(50),
	city VARCHAR(50),
	salary INT
);

SELECT *
FROM employees;

INSERT INTO employees
VALUES
(1, 'Praful', 'Sales', 'Pune', 50000),
(2, 'Amit', 'HR', 'Mumbai', 45000),
(3, 'Rahul', 'IT', 'Nashik', 60000),
(4, 'Neha', 'Sales', 'Delhi', 70000),
(5, 'Priya', 'Finance', 'Pune', 55000),
(6, 'Amit', 'IT', 'Mumbai', 48000);

SELECT *
FROM employees;

SELECT employee_name, salary
FROM employees;

SELECT employee_name, salary
FROM employees
WHERE salary > 50000;

SELECT employee_name, city
FROM employees
WHERE city IN ('Pune');

SELECT employee_name, city
FROM employees
WHERE city = 'Pune';

SELECT employee_name
FROM employees
WHERE employee_name IN ('Amit');
WHERE employee_name = 'Amit';

SELECT SUM(salary) AS total_salary
FROM employees;

SELECT AVG(salary) AS average_salary
FROM employees;

SELECT MAX(salary) AS highest_salary
FROM employees;

SELECT MIN(salary) AS lowest_salary
FROM employees;

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employees_count
FROM employees
GROUP BY department;

SELECT city, AVG(salary) AS average_salary
FROM employees
GROUP BY city;

SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employees_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

SELECT * 
FROM employees;

UPDATE employees
SET salary = salary + 5000
WHERE employee_id = 3;

UPDATE employees
SET salary = salary + 2000;

UPDATE employees
SET city = 'Pune'
WHERE employee_id = 4;

UPDATE employees
SET employee_name = 'Amit Kumar'
WHERE employee_id = 2;

SELECT * 
FROM employees;

DELETE FROM employees
WHERE employee_id = 5;

DELETE FROM employees
WHERE employee_name = 'Amit';

ALTER TABLE employees
ADD email VARCHAR(100);

ALTER TABLE employees
RENAME COLUMN department TO dept;

ALTER TABLE employees
RENAME TO company_employees;

SELECT *
FROM company_employees;

ALTER TABLE company_employees
DROP COLUMN email;

BEGIN;

UPDATE company_employees
SET salary = salary + 5000
WHERE employee_id = 1;

SAVEPOINT sp1;

DELETE FROM company_employees
WHERE employee_id = 3;

ROLLBACK TO SAVEPOINT sp1;

SELECT * 
FROM company_employees;

TRUNCATE TABLE company_employees:

DROP TABLE company_employees;

CREATE TABLE projects(
	project_id INT,
	project_name VARCHAR(100)
);

ALTER TABLE company_employees
RENAME TO employees;

SELECT *
FROM employees;

