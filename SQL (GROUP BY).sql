SELECT *
FROm customers2;

SELECT *
FROM orders;

SELECT c.customer_name, o.amount
FROM customers2 AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id;