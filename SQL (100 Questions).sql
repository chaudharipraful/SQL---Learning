SELECT *
FROM employees;

SELECT employee_name AS NAME
FROM employees;

SELECT salary AS monthly_salary
FROM employees;

SELECT *
FROM employees
ORDER BY salary ASC;

SELECT *
FROM employees
ORDER BY salary DESC;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

SELECT *
FROM employees
LIMIT 3;

SELECT employee_name, department, city
FROM employees;

SELECT *
FROM employees
WHERE department IN ('Sales');

SELECT *
FROM employees
WHERE department = 'IT';

SELECT *
FROM employees
WHERE salary > 60000;

SELECT *
FROM employees
WHERE salary < 60000;

SELECT *
FROM employees
WHERE city IN ('Pune');

SELECT *
FROM employees
WHERE department IN ('Sales') AND city IN ('Pune');

SELECT *
FROM employees
WHERE department = 'Sales' OR department = 'HR';

SELECT *
FROM employees
WHERE NOT department = 'Finance';

SELECT *
FROM employees
WHERE department NOT IN ('Finance');

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 65000;

SELECT *
FROM employees
WHERE salary NOT BETWEEN 50000 AND 70000;

SELECT *
FROM employees
WHERE employee_name LIKE 'P%';

SELECT *
FROM employees
WHERE employee_name LIKE '%a';

SELECT *
FROM employees
WHERE employee_name LIKE '%ha%';

SELECT *
FROM employees
WHERE employee_name LIKE '_o%';

SELECT LENGTH(employee_name) AS c_length
FROM employees;

SELECT *
FROM employees
WHERE LENGTH(employee_name) = 5;

SELECT *
FROM employees
WHERE employee_name NOT LIKE 'A%';

SELECT *
FROM employees
WHERE department IN ('Sales', 'HR', 'IT');

SELECT *
FROM employees
WHERE department NOT IN ('HR');

SELECT COUNT(*)
FROM employees;

SELECT MAX(salary)
FROM employees;

SELECT MIN(salary)
FROM employees;

SELECT MAX(salary) - MIN(salary) AS difference
FROM employees;

SELECT COUNT(*)
FROM employees
WHERE city = 'Pune';

SELECT AVG(salary)
FROM employees
WHERE department = 'Sales';

SELECT MAX(salary)
FROM employees
WHERE department = 'HR';

SELECT MIN(salary) 
FROM employees
WHERE department = 'IT';

SELECT department, COUNT(*)
FROM employees
GROUP BY department;

SELECT city, COUNT(*)
FROM employees
GROUP BY city;

SELECT department, AVG(salary)
FROM employees
GROUP BY department;

SELECT department, MAX(salary)
FROM employees
GROUP BY department;

SELECT city, MIN(salary)
FROM employees
GROUP BY city;

SELECT city, COUNT(*)
FROM employees
GROUP BY city;

SELECT department, MAX(salary)
FROM employees
GROUP BY department;

SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

SELECT city, COUNT(*)
FROM employees
GROUP BY city
HAVING COUNT(*) > 2;

SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

SELECT city, SUM(salary)
FROM employees
GROUP BY city
HAVING SUM(salary) > 100000;

SELECT department, MIN(salary)
FROM employees
GROUP BY department
HAVING MIN(salary) > 50000;

SELECT AVG(salary)
FROM employees
WHERE city = 'Pune';

SELECT department, AVG(salary)
FROM employees
WHERE city = 'Pune'
GROUP BY department
HAVING AVG(salary) > 55000;

SELECT department, COUNT(*)
FROM employees
WHERE department NOT IN ('Finance')
GROUP BY department;

SELECT department, COUNT(*)
FROM employees
WHERE city <> 'Delhi'
GROUP BY department;

SELECT city, SUM(salary)
FROM employees
GROUP BY city
HAVING SUM(salary) > 50000;

SELECT department, SUM(salary)
FROM employees
GROUP BY department
ORDER BY SUM(salary) DESC
LIMIT 1;

SELECT city, AVG(salary)
FROM employees
GROUP BY city
ORDER BY AVG(salary) DESC
LIMIT 1;

SELECT department, AVG(salary)
FROM employees
GROUP BY department
ORDER BY AVG(salary)
LIMIT 1;

SELECT city, COUNT(*)
FROM employees
GROUP BY city
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT department, SUM(salary)
FROM employees
GROUP BY department
ORDER BY SUM(salary) DESC
LIMIT 1;

SELECT department, MIN(salary)
FROM employees
GROUP BY department
HAVING MIN(salary) > 50000;

SELECT department, MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) > 70000;

SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) BETWEEN 55000 AND 65000;

SELECT department, COUNT(*)
FROM employees
GROUP BY department
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

SELECT city, SUM(salary)
FROM employees
GROUP BY city
ORDER BY SUM(salary) DESC
LIMIT 2;

SELECT department, AVG(salary)
FROM employees
GROUP BY department
ORDER BY AVG(salary) DESC
LIMIT 3;

SELECT department, COUNT(*) AS employee_count, AVG(salary) AS average_salary, MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary, SUM(salary) AS total_salary
FROM employees
GROUP BY department;