SELECT *
FROM employees;

SELECT employee_name, salary,
CASE
	WHEN salary >= 60000 THEN 'Excellent Pay'
	WHEN salary >= 45000 THEN 'Good Pay'
END AS category
FROM employees;

SELECT employee_name,
CASE
	WHEN employee_name LIKE 'P%' THEN 'Name is start with P'
	WHEN employee_name LIKe 'A%' THEN 'Name is start with A'
END AS name_category
FROM employees;

SELECT COUNT(
CASE
	WHEN salary >= 50000 THEN 1
END
) AS Salary_Greater_Than_50000
FROM employees

SELECT COUNT(*)
FROM employees
WHERE department IN ('IT');

SELECT COUNT(*)
FROM employees
WHERE salary >= 70000;

SELECT
SUM(CASE
		WHEN salary >= 60000 THEN 1
		ELSE 0
	END) AS Excellent_Pay,
SUM(CASE
		WHEN salary BETWEEN 50000 AND 59999 THEN 1
		ELSE 0
	END) AS Good_Pay,
SUM(CASE
		WHEN salary <= 49000 THEN 1
		ELSE 0
	END) AS Low_Pay
FROM employees;

SELECT *
FROM employees;

SELECT 
SUM(CASE
		WHEN department = 'Sales' THEN 1
		ELSE 0
	END) AS Sales_Department,

SUM(CASE
		WHEN department = 'HR' THEN 1
		ELSE 0
	END) AS HR_Department,

SUM(CASE
		WHEN department = 'IT' THEN 1
		ELSE 0
	END) AS IT_Department,

SUM(CASE
		WHEN department = 'Finance' THEN 1
		ELSE 0
	END) AS Finance_Department
FROM employees;

SELECT
SUM(CASE
		WHEN department = 'IT' THEN salary
		ELSE 0
	END) AS it_salary,

SUM(CASE
		WHEN department = 'HR' THEN salary
		ELSE 0
	END) AS hr_salary,

SUM(CASE
		WHEN department = 'Sales' THEN salary
		ELSE 0
	END) AS sales_salary,

SUM(CASE
		WHEN department = 'Finance' THEN salary
		ELSE 0
	END) AS finance_salary
FROM employees;

SELECT 
SUM(CASE
		WHEN city = 'Pune' THEN salary
		ELSE 0
	END) AS pune_salary,
SUM(CASE
		WHEN city = 'Mumbai' THEN salary
		ELSE 0
	END) AS mumbai_salary,
SUM(CASE
		WHEN city = 'Delhi' THEN salary
		ELSE 0
	END) AS delhi_salary
FROM employees;

SELECT COUNT(*) AS total_employees,
	SUM(CASE
			WHEN salary >= 65000 THEN 1
			ELSE 0
		END) AS high_salary_employees,
	SUM(salary) AS total_salary,
	SUM(CASE
			WHEN department = 'IT' THEN 1
			ELSE 0
		END) AS it_employees,
	SUM(CASE
			WHEN department = 'HR' THEN 1
			ELSE 0
		END) AS hr_employees
FROM employees;