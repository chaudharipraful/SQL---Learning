SELECT *
FROM customers2;

SELECT *
FROM orders;

INSERT INTO customers2
VALUES
(4, 'Neha');

INSERT INTO orders
VALUES
(104, 5, 4000);

SELECT customers2.customer_name, orders.amount
FROM customers2
INNER JOIN orders
ON customers2.customer_id = orders.customer_id;


SELECT c.customer_name, o.amount
FROM customers2 c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.amount
FROM customers2 c
LEFT JOIN orders o 
ON c.customer_id = o.customer_id;

SELECT c.customer_name, SUM(amount)
FROM customers2 c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

SELECT c.customer_name, SUM(o.amount) AS total_sales
FROM customers2 AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

SELECT c. customer_name, SUM(o. amount)
FROM customers2 c
LEFT JOIN orders o
ON c. customer_id = o. customer_id
GROUP BY c. customer_name
HAVING SUM(o. amount) > 5000;

