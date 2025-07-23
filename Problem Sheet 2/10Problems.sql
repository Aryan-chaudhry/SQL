
-- Q1 Write a query to fetch names of employees earning more than 50,000
select name from Employees where salary > 50000;

-- Q2 Retrieve the top 3 highest paid employees
select distinct(salary) from Employees order by salary desc limit 3;

-- Q3 Write a query to find the second highest salary from the Employees table
select salary as Second_Heighest_Salary from Employee order by salary desc limit 1,1;

-- OR

select max(salary) as Second_Heighest_Salary from Employees
    where salary NOT in (select max(salary) from Employee);
    
-- Q4 Select employees whose names start with 'A'
select * from Employees where Name like 'A%';

-- Q5 Write a query to get total number of employees in each department.

select department, count(EmployeeID) from Employees
    group by department;

-- Q6 What does DISTINCT do? Write a query using it.

-- it give unique value from table 

-- Q7 . Write a query using BETWEEN to fetch employees with salary between 40k-60k
select * from Employees where salary between 40000 and 60000;

-- Q8 Write a query using LIKE to find employees with names ending in 'n'.
select * from Employees where name like '%n';

-- Q9 9 Write a query to sort employees by name in descending order
select * from Employees order by name;

-- Q10 Write a query to find NULL entries in a column.

SELECT * FROM Employees
WHERE Employeeid IS NULL
  or Name is null
  or Department is NULL
  or Salary is NULL
  or City is NULL
  or Email is NULL
  or PhoneNumber is NULL
  or JoiningDate is null;

drop TABLE if exists Employees;