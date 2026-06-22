SELECT *
FROM customers;

SELECT *
FROM sales;

SELECT DISTINCT city
FROM customers;

SELECT *
FROM customers
WHERE city = 'Mumbai';

SELECT *
FROM customers
WHERE age >= 24
AND city = 'Pune';

SELECT *
FROM sales
WHERE NOT amount < 2000;

SELECT *
FROM customers
WHERE city IN ('Pune', 'Delhi');

SELECT *
FROM customers
WHERE city NOT IN ('Pune','Mumbai');

SELECT *
FROM customers
WHERE city BETWEEN 'Delhi' AND 'Pune';

SELECT *
FROM customers
WHERE name LIKE 'P%';

SELECT *
FROM customers
WHERE name LIKE '%a%';

SELECT *
FROM customers
ORDER BY age ASC;

SELECT name, age
FROM customers
ORDER BY age DESC;

SELECT name, age
FROM customers
ORDER BY name, age;

SELECT *
FROM customers
LIMIT 2;

SELECT *
FROM customers
ORDER BY age DESC
LIMIT 1;

SELECT COUNT(*) AS Total_record
FROM customers;

SELECT SUM (amount)
FROM sales;

SELECT AVG (age)
FROM customers;

SELECT MIN(age)
FROM customers;