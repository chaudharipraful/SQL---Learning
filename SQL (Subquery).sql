SELECT *
FROM customers2;

SELECT *
FROM orders;

SELECT *
FROM customers2 c
WHERE EXISTS (
	SELECT 1
	FROM orders o
	WHERE c. customer_id = o. customer_id);

SELECT *
FROM customers2 c
WHERE NOT EXISTS (
	SELECT 1
	FROM orders o
	WHERE c. customer_id = o. customer_id);