USE STUDENT;

USE Student;

CREATE TABLE Details(
    UID INT PRIMARY KEY NOT NULL,
    NAME VARCHAR(30) NOT NULL,
    MARKS INT,
    GRADE CHAR,
    CITY VARCHAR(30) NOT NULL
);

INSERT INTO Details
    (UID, NAME, MARKS, GRADE, CITY) VALUES
    (101, "anil", 78, "c", "Pune"),
    (102, "Amit", 93, "a", "Mumbai"),
    (103, "chetan", 85, "b", "Mumbai"),
    (104, "dhruv", 96, "a", "Delhi"),
    (105, "sunil", 12, "f", "Delhi"),
    (106, "farah", 82, "b", "Delhi");

SELECT * FROM DETAILS

-- DML 

-- UPDATE (TO UPDATE EXISTING ROW)

UPDATE DETAILS
SET GRADE = "O"
WHERE GRADE = "A";

SELECT * FROM DETAILS

-- SAFE MODE :- SET SQL_SAFE_UPDATES = 0

UPDATE DETAILS
SET MARKS = 98
WHERE UID = 104;

SELECT * FROM DETAILS

UPDATE DETAILS
SET CITY = "KARNAL"
WHERE UID = 104;

UPDATE DETAILS
SET MARKS = MARKS+1;


UPDATE DETAILS
SET MARKS = 63
WHERE UID = 105;

SELECT * FROM DETAILS;


-- DELETE  TO DELETE SOME XISITING ROWS

DELETE FROM DETAILS
WHERE MARKS <= 75;

SELECT * FROM DETAILS