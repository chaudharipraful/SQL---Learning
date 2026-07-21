SELECT *
FROM employees;


SELECT employee_name, salary,
		ROW_NUMBER()
		OVER(ORDER BY salary DESC) AS row_num
FROM employees;

SELECT employee_name, joining_date,
	   ROW_NUMBER()
	   OVER(ORDER BY joining_date ASC) AS row_num
FROM employees;

SELECT *
FROM(
	SELECT employee_name, salary,
	ROW_NUMBER()
	OVER(ORDER BY salary DESC) AS row_num
	FROM employees
)
WHERE row_num = 2;


SELECT *
FROM(
	SELECT employee_name, salary,
	ROW_NUMBER()
	OVER(ORDER BY salary DESC) AS row_num
	FROM employees
)
WHERE row_num IN (1,2,3);


SELECT *
FROM(
	SELECT employee_name, joining_date,
	ROW_NUMBER()
	OVER(ORDER BY joining_date DESC) AS row_num
	FROM employees
)
WHERE row_num = 1;