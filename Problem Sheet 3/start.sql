use  practice

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    manager_id INT
);

INSERT INTO Employee (emp_id, emp_name, dept_id, manager_id) VALUES
(1, 'Alice', 101, NULL),
(2, 'Bob', 102, 1),
(3, 'Charlie', NULL, 1),
(4, 'David', 103, 2),
(5, 'Eve', 102, 2);


CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

INSERT INTO Department (dept_id, dept_name) VALUES
(101, 'HR'),
(102, 'Engineering'),
(103, 'Marketing'),
(104, 'Sales');


CREATE TABLE Location (
    loc_id INT PRIMARY KEY,
    dept_id INT,
    city VARCHAR(100)
);

INSERT INTO Location (loc_id, dept_id, city) VALUES
(1, 101, 'New York'),
(2, 102, 'San Francisco'),
(3, 103, 'Chicago'),
(4, 104, 'Boston');


CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100)
);

INSERT INTO Student (student_id, student_name) VALUES
(1, 'John'),
(2, 'Sara'),
(3, 'Mike');


CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

INSERT INTO Course (course_id, course_name) VALUES
(1, 'Math'),
(2, 'Science'),
(3, 'History');


CREATE TABLE Enrollment (
    student_id INT,
    course_id INT
);

INSERT INTO Enrollment (student_id, course_id) VALUES
(1, 1),  -- John → Math
(1, 2),  -- John → Science
(2, 3),  -- Sara → History
(3, 1);  -- Mike → Math


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2)
);

INSERT INTO Customers (customer_id, customer_name) VALUES
(1, 'Adam'),
(2, 'Beth'),
(3, 'Cody');

INSERT INTO Purchases (purchase_id, customer_id, amount) VALUES
(101, 1, 99.99),
(102, 4, 149.50);  -- customer_id = 4 not in Customers (to test FULL OUTER)


