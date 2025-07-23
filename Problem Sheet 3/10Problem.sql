
use practice;

-- Q1  Explain the difference between INNER JOIN and LEFT JOIN

-- Q2 Write a query to get employee names with their department names using JOIN
select e.emp_name, d.dept_name from Employee as e left join department as d on e.dept_id = d.dept_id;

-- Q3 Write a query to find employees not assigned to any department.
select e.emp_name from Employee as e left join department as d on e.dept_id = d.dept_id where d.dept_id is null;

    -- Q4 4. Get all departments, even if no employee is assigned (RIGHT JOIN)
    
SELECT d.dept_name, e.emp_name FROM department AS d LEFT JOIN employee AS e ON d.dept_id = e.dept_id;
