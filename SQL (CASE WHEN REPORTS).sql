SELECT *
FROM employees;

SELECT COUNT(*) AS total_employees,

SUM(
CASE
	WHEN department = 'IT' THEN 1
	ELSE 0
END) AS it_employees,

SUM(
CASE
	WHEN department = 'HR' THEN 1
	ELSE 0
END) AS hr_employees,

SUM(
CASE
	WHEN salary >= 70000 THEN 1
	ELSE 0
END) AS high_salary_employees,

AVG(salary) AS average_salary

FROM employees;

SELECT COUNT(*) AS total_employees,

SUM(
CASE
	WHEN department = 'IT' THEN 1
	ELSE 0
END) AS it_employees,

SUM(
CASE
	WHEN department = 'HR' THEN 1
	ELSE 0
END) AS hr_employees,

SUM(
CASE
	WHEN department = 'Finance' THEN 1
	ELSE 0
END) AS finance_employees,

SUM(
CASE
	WHEN department = 'Sales' THEN 1
	ELSE 0
END) AS sales_employees

FROM employees;

SELECT
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END AS salary_category,

COUNT(*) AS total_employees

FROM employees

GROUP BY
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END;

SELECT
SUM(
CASE
	WHEN city = 'Pune' THEN 1
	ELSE 0
END) AS pune_employees,

SUM(
CASE
	WHEN city = 'Mumbai' THEN 1
	ELSE 0
END) AS mumbai_employees,

SUM(
CASE
	WHEN city = 'Delhi' THEN 1
	ELSE 0
END) AS delhi_employees

FROM employees;

SELECT COUNT(*) AS total_employees,

SUM(salary) AS total_salary,

AVG(salary) AS average_salary,

SUM(
CASE
	WHEN department = 'IT' THEN 1
	ELSE 0
END) AS it_employees,

SUM(
CASE
	WHEN department = 'HR' THEN 1
	ELSE 0
END) AS hr_employees,

SUM(
CASE
	WHEN department = 'Finance' THEN 1
	ELSE 0
END) AS finance_employees,

SUM(
CASE
	WHEN department = 'Sales' THEN 1
	ELSE 0
END) AS sales_employees,

SUM(
CASE
	WHEN salary >= 70000 THEN 1
	ELSE 0
END) AS high_salary_employees,

SUM(
CASE
	WHEN salary BETWEEN 50000 AND 69999 THEN 1
	ELSE 0
END) AS medium_salary_employees,

SUM(
CASE
	WHEN salary < 50000 THEN 1
	ELSE 0
END) AS low_salary_employees

FROM employees;