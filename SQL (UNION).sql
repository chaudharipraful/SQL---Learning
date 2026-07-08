SELECT *
FROM customers;

ALTER TABLE customers
RENAME COLUMN name to customer_name;

SELECT *
FROM orders;

SELECT *
FROM customers2;

SELECT customer_name
FROM customers

UNION

SELECT customer_name
FROM customers2;

SELECT customer_name
FROM customers

UNION ALL

SELECT customer_name
FROM customers2;

SELECT customer_name
FROM customers

UNION ALL

SELECT customer_name
FROM customers2

ORDER BY customer_name;


SELECT customer_name
FROM customers

UNION ALL

SELECT customer_name
FROM customers2

ORDER BY customer_name DESC;

SELECT customer_name
FROM customers

INTERSECT

SELECT customer_name
FROM customers2;


SELECT customer_name
FROM customers

EXCEPT

SELECT customer_name
FROM customers2;

SELECT customer_name
FROM customers2

EXCEPT

SELECT customer_name
FROM customers;

