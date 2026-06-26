CREATE TABLE students(
	student_id INT,
	student_name VARCHAR(50) NOT NULL
);

SELECT * 
FROM students;

SELECT *
FROM employees;

DROP table employees;

SELECT *
FROM departments;

CREATE TABLE departments(
	department_id INT PRIMARY KEY,
	department_name VARCHAR(50)
);

CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
	employee_name VARCHAR(50),
	department_id INT,
	FOREIGN KEY (department_id)
	REFERENCES departments(department_id)
);