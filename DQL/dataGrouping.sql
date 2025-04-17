use ORG;

-- find number of employee working in different department
-- department wise aggregation

-- GROUP BY
SELECT DEPARTMENT, COUNT(DEPARTMENT) FROM Worker GROUP BY DEPARTMENT;


-- find Average salary per department
SELECT DEPARTMENT, AVG(SALARY) FROM Worker GROUP BY DEPARTMENT;

-- Find minimum salary per department
SELECT DEPARTMENT , MIN(SALARY) FROM Worker GROUP BY DEPARTMENT;

-- FIND maximum salry per department
SELECT DEPARTMENT, MAX(SALARY) FROM Worker GROUP BY DEPARTMENT;

-- Find total salary per Department
SELECT DEPARTMENT, SUM(SALARY) FROM Worker GROUP BY DEPARTMENT;