CREATE TABLE employees(
	employee_id INT,
	employee_name VARCHAR(50),
	salary decimal,
	joining_date date
);

SELECT *
FROM employees;

ALTER TABLE employees
ADD
email VARCHAR(100);

ALTER TABLE employees
ADD
department VARCHAR(50);

DROP TABLE employees;

SELECT *
FROM employees;

CREATE TABLE employees(
	employee_id INT,
	employee_name VARCHAR(30),
	salary INT
);

ALTER TABLE employees
ADD email VARCHAR(50);

ALTER TABLE employees
DROP COLUMN salary;

ALTER TABLE employees
ADD salary INT;

ALTER TABLE employees
RENAME COLUMN salary TO employee_salary;

ALTER TABLE employees
ALTER COLUMN employee_salary TYPE DECIMAL(10,2);

ALTER TABLE employees
RENAME COLUMN employee_salary TO salary;

SELECT *
FROM employees;