SELECT *
FROM customers2;

SELECT *
FROM orders;

SELECT c. customer_name, COUNT(o. order_id)
FROM customers2 c
LEFT JOIN orders o
ON c. customer_id = o. customer_id
GROUP BY c. customer_name;

SELECT c. customer_name, AVG(o. amount)
FROM customers2 c 
INNER JOIN orders o
ON c. customer_id = o. customer_id
GROUP BY c. customer_name;

SELECT c. customer_name, COUNT(o. order_id)
FROM customers2 c
LEFT JOIN orders o
ON c. customer_id = o. customer_id
GROUP BY c. customer_name
HAVING COUNT(o. order_id) > 1;

SELECT c. customer_name, SUM(o. amount)
FROM customers2 c
LEFT JOIN orders o
ON c. customer_id = o. customer_id
GROUP BY c. customer_name
HAVING SUM(o. amount) > 5000;

