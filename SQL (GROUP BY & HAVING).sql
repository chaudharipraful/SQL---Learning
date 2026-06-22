SELECT * 
FROM customers;

SELECT *
FROM sales;

INSERT INTO sales
VALUES
(5, 'Praful', 3000),
(6, 'Amit', 1000),
(7, 'Rahul', 2000);

SELECT customer_name, SUM(amount)
FROM sales
GROUP BY customer_name;

SELECT customer_name, COUNT(*)
FROM sales
GROUP BY customer_name;

SELECT customer_name, AVG(amount)
FROM sales
GROUP BY customer_name;

SELECT customer_name, MAX(amount)
FROM sales
GROUP BY customer_name;

SELECT customer_name, MIN(amount)
FROM sales
GROUP BY customer_name;

SELECT customer_name
FROM sales
GROUP BY customer_name;

SELECT *
FROM sales;

SELECT customer_name, SUM(amount)
FROM sales
GROUP BY customer_name
HAVING SUM(amount) > 3000;

SELECT customer_name, COUNT(*)
FROM sales
GROUP BY customer_name
HAVING COUNT(*) >= 2;

SELECT customer_name, AVG(amount)
FROM sales
GROUP BY customer_name
HAVING AVG(amount) > 1500;

CREATE TABLE customers2(
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(50)
);

SELECT *
FROM customers2;

INSERT INTO customers2
VALUES
(1, 'Praful'),
(2, 'Amit'),
(3, 'Rahul');

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
	customer_id INT,
	amount INT
);

SELECT *
FROM orders;

INSERT INTO orders
VALUES
(101, 1, 5000),
(102, 2, 3000),
(103, 1, 2000);

SELECT c.customer_name, o.amount
FROM customers2 c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT customers2.customer_name, orders.amount
FROM customers2
INNER JOIN orders
ON customers2.customer_id = orders.customer_id;