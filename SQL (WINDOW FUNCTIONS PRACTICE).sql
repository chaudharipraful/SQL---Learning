SELECT *
FROM "employees";

-- Second highest salary department wise
SELECT *
FROM (
	SELECT employee_name, department, salary,
	ROW_NUMBER()
	OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
	FROM employees
)
WHERE row_num = 2
ORDER BY salary DESC;

-- Find the latest joined employee from each city.
SELECT *
FROM (
	SELECT employee_name, city, joining_date,
	ROW_NUMBER()
	OVER(PARTITION BY city ORDER BY joining_date DESC) AS row_num
	FROM employees
)
WHERE row_num = 1;


-- Display employees with row numbers city-wise, ordered by joining date.

	SELECT employee_name, city, joining_date,
	ROW_NUMBER()
	OVER(PARTITION BY city ORDER BY joining_date) AS row_num
	FROM employees;


--Rank all employees based on salary.
SELECT employee_name, department, salary,
RANK()
OVER(ORDER BY salary) AS emp_rank
FROM employees;


--Rank employees department-wise based on salary.
SELECT employee_name, department, salary,
RANK()
OVER(PARTITION BY department ORDER BY salary) AS emp_rank
FROM employees;


-- Find employees having Rank = 2.

SELECT *
FROM (
	SELECT employee_name, department, salary,
	RANK()
	OVER(PARTITION BY department ORDER BY salary) AS emp_rank
	FROM employees
)
WHERE emp_rank = 2
ORDER BY salary DESC;


-- Find the 2nd highest salary using DENSE_RANK().
SELECT *
FROM (
	SELECT employee_name, department, salary,
	DENSE_RANK()
	OVER(ORDER BY salary DESC) AS emp_rank
	FROM employees
)
WHERE emp_rank = 2;


-- Find the Top 2 salaries from every department.
SELECT *
FROM(
	SELECT employee_name, department, salary,
	DENSE_RANK()
	OVER(PARTITION BY department ORDER BY salary DESC) AS emp_rank
	FROM employees
)
WHERE emp_rank IN (1, 2);


-- Show each employee's salary along with the previous employee's salary.

SELECT employee_name, department, salary,
	LAG(salary, 1, 0)
	OVER(ORDER BY salary DESC) AS previous_emp_salary
FROM employees;


-- Show each employee's joining date and the previous joining date.

SELECT employee_name, department, joining_date,
LAG(joining_date)
OVER(ORDER BY joining_date) AS previous_emp_joining_date
FROM employees;


-- Show salary difference from the previous employee.
-- | Employee | Salary | Previous Salary | Difference |


SELECT *, previous_emp_salary - salary AS difference
FROM(
	SELECT employee_name, salary,
	LAG(salary, 1, 0)
	OVER(ORDER BY salary DESC) AS previous_emp_salary
	FROM employees
);


SELECT employee_name, department, salary,
LAG(salary, 1, 0)
OVER(PARTITION BY department ORDER BY salary) AS previous_emp_salary
FROM employees;


-- Display each employee's salary and the next employee's salary.

SELECT employee_name, salary,
LEAD(salary, 1, 0)
OVER(ORDER BY salary DESC) AS next_emp_salary
FROM employees;

SELECT *, salary - next_emp_salary AS difference
FROM(
	SELECT employee_name, salary,
	LEAD(salary, 1, 0)
	OVER(ORDER BY salary DESC) AS next_emp_salary
	FROM employees
);


-- Find employees whose salary is less than the next employee's salary.

SELECT *
FROM (
	SELECT employee_name, salary,
	LEAD(salary, 1, 0)
	OVER(ORDER BY salary) AS next_emp_salary
	FROM employees
)
WHERE salary < next_emp_salary;

SELECT employee_name,
FIRST_VALUE(salary)
OVER(ORDER BY salary DESC) AS highest_salary
FROM employees;

SELECT employee_name, department, 
FIRST_VALUE(salary)
OVER(PARTITION BY department ORDER BY salary DESC) AS highest_salary
FROM employees;


SELECT employee_name, salary,
LAST_VALUE(salary)
OVER(ORDER BY salary 
	ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_salary
FROM employees;


-- Find the Top 2 employees from each department.

SELECT *
FROM (
	SELECT employee_name, department,
	ROW_NUMBER()
	OVER(PARTITION BY department ORDER BY employee_name) AS row_num
	FROM employees
)
WHERE row_num IN (1, 2);


-- Find employees earning more than the previous employee.

SELECT *
FROM(
	SELECT employee_name, salary,
	LAG(salary, 1, 0)
	OVER(ORDER BY salary) AS previous_emp_salary
	FROM employees
)
WHERE salary > previous_emp_salary;


SELECT *
FROM(
	SELECT employee_name, salary,
	LEAD(salary, 1, 0)
	OVER(ORDER BY salary) AS next_month_salary
	FROM employees
)
WHERE salary < next_month_salary;


-- Display salary growth compared to the previous employee.

SELECT *, ROUND((salary - previous_emp_salary) / 100, 2) AS salary_growth
FROM(
	SELECT employee_name, salary,
	LAG(salary, 1, 0)
	OVER(ORDER BY salary) AS previous_emp_salary
	FROM employees
);


SELECT employee_name, salary,
	RANK()
	OVER(PARTITION BY department ORDER BY employee_name) AS emp_rank,
	LAG(salary, 1, 0)
	OVER(PARTITION BY department ORDER BY employee_name) AS previous_emp_salary,
	LEAD(salary, 1, 0)
	OVER(PARTITION BY department ORDER BY employee_name) AS next_month_salary
FROM employees;


SELECT employee_name, department, joining_date
FROM(
	SELECT *,
	LAG(joining_date)
	OVER(ORDER BY joining_date) AS previous_emp_salary
	FROM employees
)
WHERE joining_date > previous_emp_salary;


SELECT *
FROM(
	SELECT employee_name, city, salary,
	ROW_NUMBER()
	OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
	FROM employees
)
WHERE row_num = 1
ORDER BY salary DESC;


SELECT *
FROM employees;

SELECT employee_name, department, salary,
	DENSE_RANK()
	OVER(ORDER BY department) AS department_rank,
	LAG(salary, 1, 0)
	OVER(ORDER BY salary) AS previous_salary,
	LEAD(salary, 1, 0)
	OVER(ORDER BY salary) AS next_salary,
	FIRST_VALUE(salary)
	OVER(ORDER BY salary DESC) AS highest_salary
FROM employees;


SELECT employee_name, department, salary,
	   DENSE_RANK()
	   OVER(PARTITION BY department ORDER BY salary DESC) AS department_rank,
	   DENSE_RANK()
	   OVER(ORDER BY salary DESC) AS company_rank,
	   LAG(salary, 1, 0)
	   OVER(ORDER BY salary) AS previous_emp_salary,
	   LEAD(salary, 1, 0)
	   OVER(ORDER BY salary) AS next_emp_salary,
	   FIRST_VALUE(salary)
	   OVER(ORDER BY salary DESC) AS highest_salary
FROM employees;
	