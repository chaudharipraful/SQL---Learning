SELECT *
FROM employees;

SELECT *
FROM employees
WHERE city = 'Pune' OR city = 'Mumbai';

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT *
FROM employees
ORDER BY salary ASC
LIMIT 1;

SELECT DISTINCT department
FROM employees;

SELECT department, COUNT(*)
FROM employees
GROUP BY department;

SELECT *
FROM employees
WHERE joining_date > DATE('2022-01-01');

SELECT *
FROM employees
WHERE joining_date < DATE('2023-01-01');

SELECT employee_name, EXTRACT(YEAR FROM joining_date) AS joinig_year
FROM employees;

SELECT employee_name, EXTRACT(MONTH FROM joining_date) AS joining_month
FROM employees;

SELECT employee_name, EXTRACT(DAY FROM joining_date) AS joining_day
FROM employees;

SELECT employee_name, EXTRACT(DOW FROM joining_date)
FROM employees;

SELECT 
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END AS salary_category,
MAX(salary) AS highest_salary
FROM employees
GROUP BY
		CASE
			WHEN salary >= 70000 THEN 'High'
			WHEN salary >= 50000 THEN 'Medium'
			ELSE 'Low'
		END;


SELECT 
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END AS salary_category,
AVG(salary) AS average_salary
FROM employees
GROUP BY
		CASE
			WHEN salary >= 70000 THEN 'High'
			WHEN salary >= 50000 THEN 'Medium'
			ELSE 'Low'
		END
ORDER BY average_salary DESC;

SELECT 
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END AS salary_category,
SUM(salary) AS total_salary
FROM employees
GROUP BY
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END
ORDER BY total_salary;