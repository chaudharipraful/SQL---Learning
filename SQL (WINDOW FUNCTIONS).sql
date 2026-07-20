SELECT *
FROM employees;

SELECT employee_name,
	   department,
	   salary,
	   ROW_NUMBER()
	   OVER(
			ORDER BY salary DESC
	   )AS order_for_employees
FROM employees;


SELECT *,
	   ROW_NUMBER()
	   OVER(
			ORDER BY salary DESC
	   )AS row_num
FROM employees;


SELECT employee_name, department, salary,
	   RANK()
	   OVER(
			ORDER BY salary DESC
	   )AS row_num
FROM employees;


SELECT employee_name, department, salary,
	   DENSE_RANK()
	   OVER(ORDER BY salary DESC) AS row_num
FROM employees;

SELECT employee_name, department, salary,
	   LAG(salary) OVER(ORDER BY salary DESC) AS previous_emp_salary
FROM employees;

SELECT employee_name, salary,
	   LAG(salary, 1, 0) OVER(ORDER BY salary DESC) AS previous_emp_salary
FROM employees;

SELECT employee_name,
	   LAG(department, 1, 'Not Available') OVER(ORDER BY salary DESC) AS previous_emp_name
FROM employees;

SELECT employee_name, department, salary,
	   LEAD(salary) OVER(ORDER BY salary) AS next_emp_salary
FROM employees;

SELECT employee_name, salary,
	   LEAD(salary, 1, 0) OVER(ORDER BY salary DESC) AS next_emp_salary
FROM employees;


SELECT employee_name, salary,
	   FIRST_VALUE(employee_name)
	   OVER(ORDER BY salary DESC) AS first_emp_name
FROM employees;

SELECT employee_name, salary,
	   LAST_VALUE(employee_name)
	   OVER(ORDER BY salary DESC) AS last_emp_name
FROM employees;

SELECT employee_name,
	   LAST_VALUE(employee_name)
	   OVER(ORDER BY salary DESC
	        ROWS BETWEEN UNBOUNDED PRECEDING
            AND UNBOUNDED FOLLOWING
	        ) AS last_emp_name
FROM employees;