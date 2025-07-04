use Info;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
SELECT FIRST_NAME  AS WORKER_NAME 
FROM WORKER;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
SELECT UPPER(FIRST_NAME)
FROM WORKER;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT DISTINCT DEPARTMENT
FROM Worker;

-- or
SELECT DEPARTMENT FROM WORKER
GROUP BY DEPARTMENT;

-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
SELECT SUBSTRING(first_name, 1, 3)
FROM WORKER;

-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.
select INSTR(first_name, 'b') FROM Worker
WHERE first_name = 'Amitabh';

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
SELECT RTRIM(first_name) FROM Worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
SELECT LTRIM(Department) FROM Worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
SELECT DISTINCT(department), LENGTH(department) FROM Worker;

-- Q-9.Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
SELECT REPLACE(first_name, 'a','A') FROM Worker;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
SELECT CONCAT(first_name, ' ', last_name) AS COMPLETE_NAME FROM Worker;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT * FROM WORKER
ORDER BY first_name ASC;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * FROM WORKER
ORDER BY First_name ASC, department DESC;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
SELECT * FROM WORKER
WHERE first_name IN ('Vipul', 'Satish');    

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
SELECT * FROM Worker
WHERE first_name NOT IN('Vipul', 'Satish');

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
SELECT * FROM Worker
WHERE Department like 'ADMIN%';

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
SELECT * FROM Worker
WHERE First_name LIKE '%a%';

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT * from Worker
WHERE First_name LIKE '%a';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT * from Worker
WHERE first_name LIKE '%h' AND LENGTH(first_name) = 6

--OR

SELECT * from Worker
WHERE first_name LIKE '_____h';

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
SELECT * FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
SELECT * FROM Worker
WHERE YEAR(joining_date) = 2014 AND MONTH(joining_date) = 02;

-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
SELECT DEPARTMENT, COUNT(*) FROM Worker
WHERE DEPARTMENT = 'Admin';

-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
SELECT CONCAT(first_name, ' ', last_name), salary FROM Worker
WHERE Salary >= 50000 AND Salary <= 100000;

--OR

SELECT CONCAT(first_name, ' ', last_name), salary FROM Worker
WHERE Salary BETWEEN 50000 AND 100000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT Department, COUNT(worker_id) FROM Worker
GROUP BY department ORDER BY department DESC;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.

select * from worker as w inner join title as t ON
w.worker_id = t.worker_ref_id where t.worker_title = 'Manager';

-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.
select worker_title, count(worker_ref_id) as count FROM title GROUP BY worker_title having count > 1;

-- Q26. Write an SQL query to show only odd rows from a table
select * from Worker where worker_id%2 <> 0;

-- 27. Write an sql query to show only even rows from table
select * from Worker Where mod(worker_id,2) = 0;

--28. Write an SQL query to clone a new table from another table
create table worker_clone like worker;
insert into worker_clone select * from worker;
select * from worker_clone;

--29. write an sql query to fetch intersection records of two table
select worker.* from worker inner join worker_clone using(worker_id);

-- 30. write an sql query to show records from one table that another does not have
select * from worker left join worker_clone using(worker_id) where worker_clone.worker_id is NULL;

-- 31 Write an sql query to show the current date and time
select curdate();
select now();

-- 32 write an sql query to show the top n(say 5) records of a table order by descending salary
select * from worker order by salary desc limit 5;

-- 33 write an sql query to determine the nth (say n =5) heightest salary from table
select * from worker order by salary desc limit 4,1;
-- 4 chorh kar 1st height salary 

-- 34 write an sql query to determine 5th heighest salary without using limit keyword
select salary from worker w1
where 4 = (
    select count(distinct(w2.salary))
    from worker w2
    where w2.salary >= w1.salary
); 

-- 35. write an sql query to fetch the list of employee with same salary.
select * from worker w1, worker w2 where w1.salary = w2.salary and w1.worker_id != w2.worker_id;

-- 36. write an sql command to fetch the 2nd heighest salary from table
select * from worker order by salary desc limit 1,1;
--OR
select max(salary) from worker
    where salary not in (select max (salary) from worker);

-- 37 write an sql query to show one row twice in result from a table
select * from worker
UNION ALL
select * from worker order by worker_id;

-- 38 write an sql query to list worker_id who does not have any bonus
select worker_id from worker where worker_id not in (select worker_ref_id from bonus);

-- 39 write an sql query to fetch first 50% record of the table
select * from worker where worker_id <= (select count(worker_id)/2 from worker);

-- 40 write an sql query to fetch the department have less than 4 people in it
select department, count(department) as deptCount from worker group by department having deptcount < 4;

-- 41 write an sql query to show all department along with the number of people in there
select department, count(department) as deptCount from worker group by department;

-- 42 write an sql query to show the last record of the table
select * from worker where worker_id = (select max(worker_id) from worker);

-- 43 write an sql query to show the first record of the table
select * from worker where worker_id = (select min(worker_id) from worker);

-- 44 write an sql query to fetch the last five record from the table
(select * from worker order by worker_id desc limit 5) order by worker_id

-- 45 write an sql query to print the name of employee having the heighest salary in each department.
select w.department, w.first_name, w.salary FROM 
(select max(salary) as maxsal, department from worker group by department) temp
inner join worker w on temp.department = w.department and temp.maxsal = w.salary;

-- 46 write an sql query to fetch three max salary from table using co-related subquery
select DISTINCT salary from worker w1
where 3 >= (select count(distinct salary) from worker w2 where w1.salary <= w2.salary) order by w1.salary desc;

-- 47 write an sql query to fetch three min salaries from table using co-related subquery
select DISTINCT salary from worker w1
where 3 >= (select count(distinct salary) from worker w2 where w1.salary >= w2.salary) order by w1.salary desc;

-- 48 write an sql query to find the nth maximum salary from the table
select DISTINCT salary from worker w1
where n >= (select count(distinct salary) from worker w2 where w1.salary <= w2.salary) order by w1.salary desc;

-- 49 write an sql query to fetch department along with the total samalries paid for each of them
select department, sum(salary) as deptSal from worker group by department order by deptsal desc;;

-- 50 write an sql query to fetch the name of worker who earn the heighest salary
select first_name, salary from  worker where salary = (select max(salary) from worker);