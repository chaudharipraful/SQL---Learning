CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
	name VARCHAR(50),
	city VARCHAR(50),
	age INT
);

SELECT * FROM customers;

INSERT INTO customers
VALUES
(1, 'Praful', 'Pune', 23),
(2, 'Amit', 'Mumbai', 24),
(3, 'Rahul', 'Pune', 27),
(4, 'Neha', 'Delhi', 23);

SELECT name
FROM customers;

SELECT city
FROM customers;

SELECT name, city
FROM customers;

SELECT name, age
FROM customers;

SELECT * 
FROM customers;


SELECT city
FROM customers;

SELECT DISTINCT city
FROM customers;


SELECT DISTINCT age
FROM customers;

SELECT DISTINCT city, age
FROM customers;

SELECT *
FROM customers
WHERE city = 'Pune';

SELECT *
FROM customers
WHERE age = 27;

SELECT *
FROM customers
WHERE age > 25;

SELECT * 
FROM customers
WHERE age < 25;

SELECT * 
FROM customers
WHERE city <> 'Pune';


SELECT *
FROM customers
WHERE name = 'Amit';

SELECT name
from customers
WHERE age < 25;

Select name 
FROM customers
WHERE city = 'Pune';

SELECT * 
FROM customers
WHERE age >= 24;


SELECT name
FROM customers
WHERE city = 'Pune'
AND age > 25;

SELECT name
FROM customers
WHERE city = 'Pune'
OR city = 'Mumbai';

SELECT * FROM customers;

SELECT name 
FROM customers
WHERE NOT city = 'Pune';

SELECT name
FROM customers
WHERE city = 'Pune'
AND age >= 25;

SELECT name
FROM customers
WHERE city = 'Mumbai'
OR city = 'Delhi';

SELECT name
FROM customers
WHERE NOT city = 'Pune';


