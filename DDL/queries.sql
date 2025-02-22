USE STUDENT;

USE Student;

CREATE TABLE Students(
    UID INT PRIMARY KEY NOT NULL,
    NAME VARCHAR(30) NOT NULL,
    MARKS INT,
    GRADE CHAR,
    CITY VARCHAR(30) NOT NULL
);

INSERT INTO Students
    (UID, NAME, MARKS, GRADE, CITY) VALUES
    (101, "anil", 78, "c", "Pune"),
    (102, "Amit", 93, "a", "Mumbai"),
    (103, "chetan", 85, "b", "Mumbai"),
    (104, "dhruv", 96, "a", "Delhi"),
    (105, "sunil", 12, "f", "Delhi"),
    (106, "farah", 82, "b", "Delhi");

CREATE TABLE dept(
    ID INT PRIMARY KEY NOT NULL,
    NAME VARCHAR(50) NOT NULL
);

INSERT INTO dept
    (ID, NAME) VALUES
    (101, "English"),
    (102, "IT");


CREATE TABLE teacher(
    ID INT PRIMARY KEY NOT NULL,
    NAME VARCHAR(50) NOT NULL,
    dept_id INT, Foreign Key (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE -- to update linked table
    ON DELETE CASCADE -- to update linked table
);

INSERT INTO teacher
    (ID, NAME, dept_id) VALUES
    (101, "Adam", 101),
    (102, "Eva", 102);

SELECT * FROM Students;
SELECT * FROM dept;
SELECT * FROM teacher;

-- alter  it is used to change the schema
-- to add coloumn
-- to drop column
-- to rename table

ALTER TABLE STUDENTS
ADD COLUMN AGE INT;

SELECT * FROM STUDENTS;