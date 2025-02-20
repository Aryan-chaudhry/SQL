CREATE DATABASE IF NOT EXISTS org;


USE org;

SHOW TABLES;

CREATE TABLE Employee(
    ID INT PRIMARY KEY NOT NULL,
    FIRST_NAME VARCHAR(25) NOT NULL,
    LAST_NAME VARCHAR(25) NOT NULL,
    PHONE_NUM VARCHAR(10),
    AGE INT NOT NULL,
    DEPARTMENT VARCHAR(25) NOT NULL,
    SALARY DECIMAL(10,2) DEFAULT 25000.00
);

INSERT INTO Employee
    (ID, FIRST_NAME, LAST_NAME, PHONE_NUM, AGE, DEPARTMENT, SALARY) VALUES
    (1, "Raju", "Shrivastav", "9896354789", 35, "Re-Search Analytics", 70000),
    (2, "Mahesh", "Bony", "7845896578", 40, "Data-Analytics", 95000),
    (3, "Ruby", "Singh", "9896215489", 25, "Mozila-Developer", 150000),
    (4, "Ganpat-Rao", "Aptee", "8221445897", 56, "Management-Team", 100000),
    (5, "Vinet", "Oberoy", "8794561475", 32, "Data-Security", 180000);
    

INSERT INTO Employee
    (ID, FIRST_NAME, LAST_NAME, PHONE_NUM, AGE, DEPARTMENT, SALARY) VALUES
    (6, "Sunil", "Wasker", "9899232552", 35, "Data-Security", 190000);

-- Simple Basic Query

-- Print full table
SELECT * FROM Employee;

-- give me the table whose age is greater than 30

SELECT * FROM Employee WHERE AGE > 30;

-- GIVE ME THE LIST OF THE PEOPLE WITH DEAIL WHOSE NAME START WITH R

SELECT * FROM Employee WHERE FIRST_NAME LIKE 'R%';

-- Give me the NAME of those person whose mobile digit start with 9896
SELECT FIRST_NAME, LAST_NAME FROM Employee where PHONE_NUM LIKE '9896%';

--GIVE ME THE FULL NAME OF PERSON WHOSE FIRSTNAME CONTAIN UB IN BETWEEN
SELECT FIRST_NAME, LAST_NAME FROM Employee WHERE FIRST_NAME LIKE '%ub%';

-- give me the Employee detail whose ga eis exact 40
SELECT * FROM Employee WHERE AGE = 40;

-- GIVE ME THE EMPLOYEE NAME IN ASSINDING ORDER

SELECT * FROM Employee ORDER BY FIRST_NAME ASC;

-- Give me top3 employee name department and having maximum salary

SELECT FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY FROM Employee 
ORDER BY SALARY DESC 
LIMIT 3

-- AGGREGATE 

-- GIVE AVERAGE SALARY OF TOP 3 EMPLOYEE HAVING MAXIMUM SALARY

SELECT AVG(SALARY) FROM employee
ORDER BY SALARY ASC
LIMIT 3;

-- COUNT THE NUMBER OF EMPLYEE WHOSE AGE LIE BETWEEN 22 TO 32
SELECT COUNT(*) FROM Employee
WHERE AGE BETWEEN 22 AND 32;

-- GIVE ME THE EMPLOYEE DETAIL HAVING MIN SALARY
SELECT * FROM Employee ORDER BY SALARY ASC LIMIT 1;



