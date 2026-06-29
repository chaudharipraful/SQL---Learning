SELECT * FROM employees;

DROP TABLE employees;

CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
	employee_name VARCHAR(50) NOT NULL,
	department VARCHAR(50),
	salary DECIMAL(10, 2),
	city VARCHAR(50),
	joining_date date
);

SELECT *
FROM employees;

INSERT INTO employees
VALUES
(1, 'Praful', 'Sales', 50000, 'Pune', '2023-01-15'),
(2, 'Amit', 'HR', 60000, 'Mumbai', '2022-08-10'),
(3, 'Rahul', 'IT', 70000, 'Pune', '2021-05-20'),
(4, 'Neha', 'Sales', 55000, 'Delhi', '2023-03-18'),
(5, 'Pooja', 'Finance', 65000, 'Mumbai', '2020-11-01'),
(6, 'Rohit', 'IT', 72000, 'Pune', '2019-07-25'),
(7, 'Sneha', 'HR', 58000, 'Delhi', '2022-01-30'),
(8, 'Karan', 'Finance', 48000, 'Pune', '2024-02-12');

SELECT *
FROM employees;

SELECT *
FROM employees
ORDER BY salary DESC;

SELECT *
FROM employees
WHERE city IS NULL;

SELECT *
FROM employees
WHERE city IS NOT NULL;

SELECT department, AVG(salary)
FROM employees
GROUP BY department
ORDER BY AVG(salary) DESC;

SELECT employee_name, salary,
CASE 
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END AS salary_status
FROM employees;

SELECT city, COUNT(*) AS total_employees
FROM employees
GROUP BY city;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC
LIMIT 1;

SELECT COUNT(*) AS total_employees
FROM employees
WHERE salary > 60000;

SELECT department, COUNT(*) As total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

SELECT city, AVG(salary) AS average_salary
FROM employees
GROUP BY city
ORDER BY average_salary
LIMIT 1;

SELECT department, COUNT(*) AS total_employees, AVG(salary) AS average_salary, MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS average_salary, COUNT (*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC
LIMIT 1;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC
LIMIT 1;