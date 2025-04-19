USE ORG;

SHOW TABLES;

CREATE TABLE Employee(
    Employee_id INT PRIMARY KEY NOT NULL,
    Name VARCHAR(225) NOT NULL,
    Email VARCHAR(225) UNIQUE NOT NULL,
    Phone_no INTEGER
);

INSERT INTO Employee
    VALUES(1, "Ashish", "Ash12@gmail.com", 878),
            (2, "Rahul Trivedi", "Raj532@gmail.com", 745),
            (3, "Muskan Chaudhary", "Mus247@gmail.com", 879),
            (4, "Aryan", "Ar2629@gmail.com", 589),
            (5, "Ayush", "Ay2628@gmail.com", 248);

SELECT * FROM Employee;

CREATE TABLE Project(
    Project_id INT PRIMARY KEY,
    Project_name VARCHAR(225),
    Customer_ID INT,
    Foreign Key (Customer_ID) REFERENCES Employee(Employee_id),
    Project_Status BOOLEAN
);

INSERT INTO Project
    VALUES(1, "track Application", 1, FALSE),
            (2, "track Application", 2, FALSE),
            (3, "META Verse", 3, FALSE),
            (4, "META Verse", 4, FALSE),
            (5, "META Verse", 5, FALSE);

 DROP TABLE Project;

SELECT * FROM Project;

-- Enlist all the employee id , name along with Project allocated to them

SELECT e.Employee_id , e.name, p.Project_id, p.Project_name FROM Employee AS e
 INNER JOIN Project AS P on e.Employee_id = p.customer_id;

 --OR

 SELECT Employee_id, name, Project_id, Project_name FROM Employee INNER JOIN Project ON Employee_id = customer_id;