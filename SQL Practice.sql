SELECT *
FROM customers;

SELECT * 
FROM sales;

SELECT name AS customer_name
FROm customers;

SELECT name, city
FROM customers
WHERE city = 'Pune';

SELECT *
FROM customers
WHERE city IN ('Pune');

SELECT *
FROM customers
WHERE age > 25;

SELECT name, city
FROM customers
WHERE city = 'Pune'
OR city = 'Mumbai';

SELECT *
FROM customers
WHERE city In ('Pune', 'Mumbai');

SELECT *
FROM customers
WHERE age BETWEEN 24 AND 28;

SELECT *
FROM customers
WHERE age >= 24 
AND age <= 28;

SELECT name
FROM customers
WHERE name LIKE 'P%';

SELECT *
FROM customers
ORDER BY age DESC
LIMIT 1;

SELECT *
FROM customers
ORDER BY age ASC
LIMIT 1;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT *
FROM sales;

SELECT SUM(amount) AS total_sales_amount
FROM sales;

SELECT AVG(amount) AS average_sales_amount
FROm sales;

SELECT *
FROM sales
ORDER BY amount DESC
LIMIT 1;

SELECT *
FROM sales 
ORDER BY amount ASC
LIMIT 1;

SELECT MAX(amount) AS highest_sales_amount
FROM sales;

SELECT MIN(amount) AS lowest_sales_amount
FROM sales;

SELECT *
FROM sales
ORDER By amount DESC
LIMIT 3;

SELECT *
FROM customers
ORDER BY age DESC;

SELECT *
FROM customers
LIMIT 2;