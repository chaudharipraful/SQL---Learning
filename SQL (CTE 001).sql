SELECT *
FROM employees;

SELECT AVG(salary)
FROM(
	SELECT *
	FROM employees 
	WHERE salary > 60000
);

SELECT COUNT(*) AS total_employees
FROM (
	SELECT *
	FROM employees
	WHERE salary > 60000
);

SELECT SUM(salary) AS total_salary
FROM (
	SELECT *
	FROM employees
	WHERE salary > 60000
);

WITH high_salary AS(
	SELECT *
	FROM employees
	WHERE salary > 60000
)

SELECT *
FROM high_salary;


WITH high_salary AS (
	SELECT *
	FROM employees
	WHERE salary > 60000
)

SELECT *
FROM high_salary;

WITH sales_employees AS(

	SELECT *
	FROM employees
	WHERE department In ('Sales')
)

SELECT *
FROM sales_employees;

WITH pune_employees AS(
	SELECT *
	FROM employees
	WHERE city = 'Pune'
)

SELECT *
FROM pune_employees;

WITH finance_employees AS(
	SELECT *
	FROM employees
	WHERE department = 'Finance'
)

SELECT *
FROM finance_employees;

WITH experience_employees AS(
	SELECT *
	FROM employees
	WHERE salary >= 55000
)

SELECT *
FROM experience_employees;

WITH high_salary AS(
	SELECT *
	FROM employees
	WHERE salary > 60000
)

SELECT COUNT(*) AS total_employees
FROM high_salary;

WITH it_employees AS(

	SELECT *
	FROM employees
	WHERE department = 'IT'
)

SELECT AVG(salary)
FROM it_employees;

WITH mumbai_employees AS(
	SELECT *
	FROM employees
	WHERE city = 'Mumbai'
)

SELECT SUM(salary)
FROM mumbai_employees;

WITH high_salary AS(
	SELECT *
	FROM employees
	WHERE salary > 50000
)

SELECT MAX(salary)
FROM high_salary;

WITH hr_department AS(
	SELECT *
	FROM employees
	WHERE department = 'HR'
)

SELECT MIN(salary)
FROM hr_department;

WITH all_employees AS(
	SELECT *
	FROM employees
)

SELECT department, COUNT(*) AS total_employees
FROM all_employees
GROUP BY department;

WITH high_salary AS(
	SELECT *
	FROM employees
	WHERE salary > 50000
)

SELECT department, AVG(salary) AS average_salary
FROM high_salary
GROUP BY department;

WITH pune_employees AS(
	SELECT *
	FROM employees
	WHERE city = 'Pune'
)

SELECT department, COUNT(*) AS total_employees
FROM pune_employees
GROUP BY department;

WITH all_employees AS(
	SELECT *
	FROM employees
)

SELECT city, SUM(salary) AS total_salary
FROM all_employees
GROUP BY city;

WITH high_salary AS(
	SELECT *
	FROM employees
	WHERE salary > 55000
)

SELECT department, MAX(salary)
FROM high_salary
GROUP BY department;

WITH new_column AS(
	SELECT *, 
		CASE
			WHEN salary >= 70000 THEN 'High'
			WHEN salary >= 50000 THEN 'Medium'
			ELSE 'Low'
		END
		FROM employees
)

SELECT *
FROM new_column;

WITH new_column AS(
	SELECT *,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
	FROM employees
)

SELECT salary_category, COUNT(*)
FROM new_column
GROUP BY salary_category
ORDER BY
	CASE salary_category
		WHEN 'High' THEN 1
		WHEN 'Medium' THEN 2
		ELSE 3
	END;

WITH new_column AS(
	SELECT *,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
	FROM employees
)

SELECT salary_category, AVG(salary)
FROM new_column
GROUP BY salary_category
ORDER BY
	CASE salary_category
		WHEN 'High' THEN 1
		WHEN 'Medium' THEN 2
		WHEN 'Low' THEN 3
	END;