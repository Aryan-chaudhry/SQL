use ORG;

-- find number of employee working in different department
-- department wise aggregation

-- GROUP BY
SELECT DEPARTMENT, COUNT(DEPARTMENT) FROM Worker GROUP BY DEPARTMENT;