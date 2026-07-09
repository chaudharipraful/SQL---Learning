SELECT *
FROM employees;

SELECT employee_name, salary,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;

SELECT employee_name, department, salary,
ROW_NUMBER() OVER (ORDER BY department DESC) AS row_num
FROM employees;