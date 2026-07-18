SELECT *
FROM employees;

SELECT employee_name,
	   department,
	   salary,
	   ROW_NUMBER() OVER(ORDER BY salary DESC)
FROM employees;


SELECT employee_name,
	   department,
	   salary,
	   ROW_NUMBER() OVER(PARTITION BY department
	   				ORDER BY salary DESC
	   ) AS row_num
FROM employees;


INSERT INTO employees(
	employee_id,
	employee_name,
	department,
	salary,
	city,
	joining_date)
VALUES
(9, 'Samay', 'Sales', 60000, 'Pune', '2024-05-01');


SELECT employee_name,
	   department,
	   salary,
	   RANK() OVER (ORDER BY salary DESC)
FROM employees;


SELECT employee_name,
	   department,
	   salary,
	   RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees;


SELECT employee_name,
	   department,
	   salary,
	   DENSE_RANK() OVER(ORDER BY salary DESC)
FROM employees;

SELECT employee_name,
	   department,
	   salary,
	   DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees;

SELECT employee_name,
	   department,
	   salary,
	   ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_number_fun,
	   RANK() OVER(ORDER BY salary DESC) AS rank_fun,
	   DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_fun
FROM employees;


SELECT e1. employee_name,
	   e1. salary,
	   e2. salary AS previous_emp_salary
FROM employees AS e1
LEFT JOIN employees AS e2
ON e1. employee_id = e2. employee_id + 1
ORDER BY e1. employee_id ASC;