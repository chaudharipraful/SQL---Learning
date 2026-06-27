SELECT *
FROM employees;

SELECT employee_name, salary,
CASE WHEN salary >= 50000 THEN 'High Salary' ELSE 'Low Salary' END AS salary_category
FROM employees;

SELECT employee_name, salary,
CASE
	WHEN salary > 50000 THEN 'Good Salary' ELSE 'Low Salary'
END AS salary_category
FROM employees;

SELECT employee_name, salary,
CASE
	WHEN salary >= 60000 THEN 'Eligible' ELSE 'Not Eligible'
END AS bonus
FROM employees;