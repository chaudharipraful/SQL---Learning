SELECT *
FROM employees;

WITH employee_data AS(
	SELECT *
	FROM employees
),

it_employees AS(
	SELECT *
	FROM employee_data
	WHERE department = 'IT'
),

high_salary AS(
	SELECT *
	FROM it_employees
	WHERE salary >= 70000
),

pune_employees AS(
	SELECT *
	FROM high_salary
	WHERE city = 'Pune'
)

SELECT *
FROM pune_employees;


WITH it_employees AS(
	SELECT *
	FROM employees
	WHERE department = 'IT'
),

high_salary AS(
	SELECT *
	FROM it_employees
	WHERE salary >= 70000
)

SELECT *
FROM high_salary;

WITH eligible_employees AS(
	SELECT *
	FROM employees
	WHERE salary >= 50000
),

salary_category AS(
	SELECT *, 
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 60000 THEN 'Medium'
		ELSE 'Low'
	END AS category
	FROM eligible_employees
)

SELECT category, COUNT(*) AS total_employees, AVG(salary) AS average_salary
FROM salary_category
GROUP BY category;


SELECT department, COUNT(*) AS total_employees
FROM employees
GROUp BY department
HAVING COUNT(*) > 2;


WITH filtered_employees AS(
	SELECT *
	FROM employees
	WHERE department IN ('IT', 'HR', 'Finance')
),

summary_report AS(
	SELECT department, COUNT(*) AS total_employees, AVG(salary) AS average_salary, MAX(salary) AS highest_salary,
	CASE
		WHEN COUNT(*) >= 2 THEN 'High'
		ELSE 'Low'
	END AS department_size
	FROM filtered_employees
	GROUP BY department
)

SELECT *
FROM summary_report;

WITH pune_employees AS(
	SELECT *
	FROM employees
	WHERE city = 'Pune'
),

category AS(
	SELECT *,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
	FROM pune_employees
),

summary AS(
	SELECT salary_category, COUNT(*) AS total_employees, SUM(salary) AS total_salary, AVG(salary) AS average_salary
	FROM category
	GROUP BY salary_category
)

SELECT *
FROM summary
WHERE salary_category IN ('High', 'Medium');


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
	SELECT department, COUNT(*) AS total_employees, AVG(salary) AS average_salary
	FROM employee_category
	GROUP BY department
),

report AS(
	SELECT salary_category, COUNT(*) AS total_employees
	FROM employee_category
	GROUP BY salary_category
)

SELECT *
FROM report
ORDER BY 
	CASE salary_category
		WHEN 'High' THEN 1
		WHEN 'Medium' THEN 2
		ELSE 3
	END;