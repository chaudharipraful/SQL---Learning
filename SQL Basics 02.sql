SELECT * 
FROM customers;

SELECT * 
FROM customers
WHERE city IN ('Pune', 'Delhi');

SELECT * 
FROM customers
WHERE city NOT IN ('Pune','Mumbai');

SELECT name
FROM customers
Where age BETWEEN 24 AND 27;

SELECt name, age
FROM customers
WHERE age BETWEEN 24 AND 27;

SELECT name, city
FROM customers
WHERE city IN ('Pune', 'Delhi');

SELECT name, city
FROM customers
WHERE city NOT IN ('Mumbai');

SELECT name, age
FROM customers
WHERE age BETWEEN 23 AND 25;

SELECT * 
FROM customers;

SELECT * 
FROM customers
WHERE name LIKE '%l';

SELECT *
FROM customers
WHERE city LIKE 'P%';

SELECT * 
FROM customers
WHERE name LIKE '%a%';

SELECT name, city
FROM customers
WHERE city LIKE '_u%';

SELECT *
FROM customers
WHERE name LIKE 'P%';

SELECT * 
FROM customers
WHERE city LIKE '%e%';

SELECT *
FROM customers
WHERE name LIKE '%a%';

SELECT *
FROM customers
ORDER BY age;

SELECT * 
FROM customers
ORDER BY age DESC;

SELECT *
FROM customers
ORDER BY name;

SELECT *
FROM customers
ORDER BY name DESC;

SELECT *
FROM customers
ORDER BY city, age;

SELECT *
FROM customers
WHERE city = 'Pune'
ORDER BY age ASC;

SELECT *
FROM customers
WHERE city = 'Pune'
ORDER BY age DESC;

SELECT name, age
FROM customers
ORDER BY age ASC;

SELECT name, age
FROM customers
ORDER BY age DESC;

SELECT name
FROM customers
ORDER BY name;

SELECT *
FROM customers;

SELECT *
FROM customers
LIMIT 2;

SELECT * 
FROM customers
ORDER BY age DESC
LIMIT 1;

SELECT * 
FROM customers
ORDER BY age ASC
LIMIT 1;

SELECT * 
FROM customers
LIMIT 3;

SELECT name, age
FROM customers
ORDER BY age DESC
LIMIT 1;

SELECT name, age
FROM customers
ORDER BY age ASC
LIMIT 2;

SELECT COUNT (*) AS customers_count
FROM customers;

SELECT AVG (age) AS average_age
FROM customers;

SELECT name AS customers_name,
age AS customers_age
FROM customers;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT *
FROM customers;

SELECT COUNT(*)
FROM customers;

SELECT COUNT(city)
FROM customers;

SELECT COUNT(name)
FROM customers;

SELECT * 
FROM customers;

CREATE TABLE sales (
	sales_id INT PRIMARY KEY,
	customer_name VARCHAR(50),
	amount INT
);

SELECT *
FROM sales;

INSERT INTO sales
VALUES
(1,'Praful', 1000),
(2, 'Amit', 2000),
(3, 'Rahul', 1500),
(4, 'Neha', 2500);

SELECT SUM(amount)
FROM sales;

SELECT * 
FROM sales;

SELECT AVG(amount)
FROM sales;

SELECT MIN(customer_name)
FROM sales;

SELECT * 
FROM sales;

SELECT MAX(amount)
FROM sales;

SELECT 
	COUNT(*) AS total_sales,
	SUM(amount) AS total_revenue,
	AVG(amount) AS average_sale,
	MIN(amount) AS minimum_sale,
	Max(amount) AS maximum_sale
FROM sales;
