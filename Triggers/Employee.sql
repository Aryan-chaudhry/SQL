use  practice;

DROP table IF EXISTS Employees;

Create table Employees(
    id int primary key AUTO_INCREMENT,
    name varchar(35) not null,
    Department varchar(25),
    salary  int default 75000
);

Insert into Employees
    (name, Department, salary) VALUES
    ("Angad", "Tech", 250000),
    ("Karamveer", "HR", 12000),
    ("Karishma", "Tech", 150000),
    ("Rohan", "HR", 95000),
    ("Mohit", "Marketing", 85000);

insert into Employees
    (name, department, salary) VALUES
    ("Kunal", "Cleening", 25000);

    select * from Employee;

    