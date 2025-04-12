CREATE DATABASE TEMP;

USE TEMP;

CREATE TABLE Student(
    ID INT PRIMARY KEY,
    NAME VARCHAR(255)
);


INSERT INTO Student
VALUES
(1, "Ankit"),
(2, "Rahul");

SELECT * FROM Student;
