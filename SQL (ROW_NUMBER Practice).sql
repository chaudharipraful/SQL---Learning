SELECT *
FROM employees;

SELECT *,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS rank_number
FROM employees;

SELECT *,
ROW_NUMBER() OVER () AS rank_number
FROM employees;


SELECT *
FROM employees
ORDER BY department DESC, salary DESC;

SELECT employee_name, salary,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS rank_number
FROM employees
ORDER BY salary DESC;

SELECT employee_name, department, salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_number
FROM employees;