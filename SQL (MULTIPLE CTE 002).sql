WITH employee_category AS(
	SELECT employee_name, department, salary,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
	FROM employees
),

department_summary AS(
	SELECT department, COUNT(*) AS total_employees, AVG(salary) AS average_salary,
	MAX(salary) AS highest_salary, 
	SUM(
		CASE salary_category
			WHEN 'High' THEN 1
			ELSE 0
		END) AS high_salary_employees
	FROM employee_category
	GROUP BY department
)

SELECT *
FROM department_summary
WHERE average_salary > 55000
ORDER BY highest_salary DESC;


WITH employee_category AS(
	SELECT employee_name, department, city, salary, 
	CASE 
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
	FROM employees
),

city_salary_summary AS(
	SELECT city, salary_category, COUNT(*) AS total_employees, AVG(salary) AS average_salary,
				SUM(salary) AS total_salary, MAX(salary) AS highest_salary
	FROM employee_category
	GROUP BY city, salary_category
)

SELECT *
FROM city_salary_summary
WHERE total_employees >=2
ORDER BY
	CASE salary_category
		WHEN 'High' THEN 1
		WHEN 'Medium' THEN 2
		ELSE 3
	END, average_salary DESC;


WITH employee_category AS(
	SELECT employee_name, department, city, salary, 
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
	FROM employees
),

department_summary AS(
	SELECT department, COUNT(*) AS total_employees, AVG(salary) AS average_salary,
					SUM(salary) AS total_salary, MAX(salary) AS highest_salary,
					SUM(
						CASE salary_category
							WHEN 'High' THEN 1
							ELSE 0
						END) AS high_salary_employees
	FROM employee_category
	GROUP BY department
),

performance_category AS(
	SELECT *,
	CASE
		WHEN average_salary >= 70000 THEN 'Excellent'
		WHEN average_salary >= 60000 THEN 'Good'
		ELSE 'Need Improvements'
	END AS salary_performance
	FROM department_summary
)

SELECT *
FROM performance_category
WHERE total_employees >= 2
ORDER BY 
	CASE salary_performance
		WHEN 'Excellent' THEN 1
		WHEN 'Good' THEN 2
		ELSE 3
	END, highest_salary DESC;