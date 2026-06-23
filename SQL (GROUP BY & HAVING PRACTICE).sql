SELECT *
FROM sales;

SELECT *
FROM customers;

SELECT * 
FROM customers2;

SELECT *
FROM orders;

SELECT customer_name
FROM sales
GROUP BY customer_name;

SELECT customer_name, SUM(amount)
FROM sales
GROUP BY customer_name;

SELECT customer_name, AVG(amount)
FROM sales
GROUP BY customer_name;

SELECT customer_name, COUNT(*)
FROM sales
GROUP BY customer_name;

SELECT customer_name, Max(amount)
FROM sales
GROUP BY customer_name;

SELECT customer_name, MIN(amount)
FROM sales
GROUP BY customer_name;

SELECT DISTINCT customer_name
FROm sales;

SELECT customer_name
FROM sales
GROUP BY customer_name;

SELECT *
FROM sales;

SELECT customer_name, SUM(amount)
FROM sales
WHERE amount > 1000
GROUP BY customer_name
HAVING SUM(amount) > 3000;

