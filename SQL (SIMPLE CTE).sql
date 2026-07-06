SELECT *
FROM employees;

WITH new_column AS(
	SELECT *,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
	FROM employees
)

SELECT salary_category, MAX(salary) AS highest_salary
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

SELECT salary_category, SUM(salary) AS total_salary
FROM new_column
GROUP BY salary_category
ORDER BY
	CASE salary_category
		WHEN 'High' THEN 1
		WHEN 'Medium' THEN 2
		ELSE 3
	END;

WITH employee_report AS(
	SELECT employee_name, department, salary, 
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
	FROM employees
)

SELECT salary_category, COUNT(*) AS total_employees, AVG(salary) AS average_salary
FROM employee_report
GROUP BY salary_category
ORDER BY 
	CASE salary_category
		WHEN 'High' THEN 1
		WHEN 'Medium' THEN 2
		ELSE 3
	END;


WITH employee_list AS(
	SELECT *
	FROM employees
	WHERE salary > 50000
)

SELECT department, COUNT(*) AS total_employees, AVG(salary) AS average_salary
FROM employee_list
GROUP BY department;

WITH pune_employees AS(
	SELECT *
	FROM employees
	WHERE city = 'Pune'
)

SELECT department, SUM(salary) AS total_salary, MAX(salary) AS highest_salary
FROM pune_employees
GROUP BY department;

WITH new_column AS(
	SELECT *,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
	FROM employees
)

SELECT salary_category, COUNT(*) AS total_employees, SUM(salary) AS total_salary, AVG(salary) AS average_salary
FROM new_column
GROUP BY salary_category
ORDER BY
	CASE salary_category
		WHEN 'High' THEN 1
		WHEN 'Medium' THEN 2
		ELSE 3
	END;


WITH employee_summary AS(
	SELECT employee_name, department, salary,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category 
	FROM employees
)

SELECT department, salary_category, COUNT(*) AS total_employees, AVG(salary) AS average_salary, MAX(salary) AS highest_salary
FROM employee_summary
GROUP BY department, salary_category;
