CREATE DATABASE IF NOT EXISTS Student;
USE Student;

CREATE TABLE Student(
    UID INT PRIMARY KEY NOT NULL,
    NAME VARCHAR(30) NOT NULL,
    MARKS INT,
    GRADE CHAR,
    CITY VARCHAR(30) NOT NULL
);

INSERT INTO Student
    (UID, NAME, MARKS, GRADE, CITY) VALUES
    (101, "anil", 78, "c", "Pune"),
    (102, "Amit", 93, "a", "Mumbai"),
    (103, "chetan", 85, "b", "Mumbai"),
    (104, "dhruv", 96, "a", "Delhi"),
    (105, "sunil", 12, "f", "Delhi"),
    (106, "farah", 82, "b", "Delhi");

SELECT * FROM Student;

-- Group by 

SELECT CITY, NAME, count(UID) FROM student
GROUP BY CITY, NAME;

-- Write the Query to find avg marks in each city in asending order
SELECT CITY, AVG(MARKS) FROM student
GROUP BY CITY
ORDER BY AVG(MARKS); 

SELECT * FROM STUDENT;

SELECT GRADE, COUNT(NAME) FROM Student
GROUP BY GRADE
ORDER BY GRADE ASC;


SELECT CITY , COUNT(UID) FROM student
GROUP BY CITY 
HAVING MAX(MARKS) > 90;

SELECT CITY FROM STUDENT
WHERE GRADE = 'A'
GROUP BY CITY
HAVING MAX(MARKS) >= 93
ORDER BY CITY ASC;