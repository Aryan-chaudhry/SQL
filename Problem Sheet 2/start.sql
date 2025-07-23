use  Practice;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    City VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    JoiningDate DATE
);

INSERT INTO Employees (Name, Department, Salary, City, Email, PhoneNumber, JoiningDate) VALUES
('Aryan Chaudhary', 'Engineering', 75000, 'Delhi', 'aryan@example.com', '9876543210', '2022-01-15'),
('Aman Verma', 'Marketing', 52000, 'Mumbai', 'aman@example.com', '9812345678', '2021-05-10'),
('Neha Sharma', 'HR', 48000, 'Bangalore', 'neha@example.com', '9123456789', '2020-07-25'),
('Rohan Singh', 'Engineering', 86000, 'Hyderabad', 'rohan@example.com', '9988776655', '2023-03-30'),
('Anjali Jain', 'Finance', 60000, 'Pune', 'anjali@example.com', '9898989898', '2019-11-20'),
('Karan Mehta', 'Engineering', 72000, 'Delhi', NULL, '9000000000', '2022-08-08'),
('Zoya Khan', 'HR', 45000, 'Kolkata', 'zoya@example.com', NULL, '2020-12-18'),
('Ayaan Khan', 'Marketing', 53000, 'Mumbai', 'ayaan@example.com', '8888888888', '2023-01-01'),
('Bhavya N', 'Engineering', 91000, 'Chennai', 'bhavya@example.com', '9111222333', '2024-04-12'),
('Arman Khan', 'Finance', 39000, 'Bangalore', 'arman@example.com', '9333444555', '2021-06-05');

