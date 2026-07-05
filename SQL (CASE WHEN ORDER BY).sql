SELECT *
FROM employees;

SELECT employee_name, salary,
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END AS salary_category
FROM employees
ORDER BY
CASE
	WHEN salary >= 70000 THEN 'A'
	WHEN salary >= 50000 THEN 'B'
	ELSE 'C'
END;