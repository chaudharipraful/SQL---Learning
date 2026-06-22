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
FROM customeres