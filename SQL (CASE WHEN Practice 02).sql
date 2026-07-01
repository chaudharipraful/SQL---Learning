SELECT *
FROM employees;

SELECT
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END AS category,

COUNT(*) As total_employees

FROM employees
GROUP BY
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END;

SELECT department,
CASE
	WHEN salary >= 70000 THEN 'High'
	WHEN salary >= 50000 THEN 'Medium'
	ELSE 'Low'
END AS category,
COUNT(*) AS total_employees
FROM employees
GROUP BY department,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END;

SELECT city,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS category,
COUNT(*) As total_employees
FROM employees
GROUP BY city,
		CASE
			WHEN salary >= 70000 THEN 'High'
			WHEN salary >= 50000 THEN 'Medium'
			ELSE 'Low'
		END
ORDER BY city;

SELECT 
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS category,
	AVG(salary) AS average_salary
FROM employees
GROUP BY 
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END
ORDER BY AVG(salary);

