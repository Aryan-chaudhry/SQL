
USE practice;


CREATE TABLE Location (
    id INT PRIMARY KEY AUTO_INCREMENT,
    longitude DOUBLE,
    latitude DOUBLE,
    name VARCHAR(100),
    room_no VARCHAR(10),
    dept_id INT,
    location_count INT
);

CREATE TABLE Department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50),
    working_hour INT,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES Location(id)
);

CREATE TABLE Incentive (
    id INT PRIMARY KEY AUTO_INCREMENT,
    incentive_amount BIGINT,
    incentive_name VARCHAR(100)
);


CREATE TABLE Vehicle (
    id INT PRIMARY KEY AUTO_INCREMENT,
    parking_id VARCHAR(50),
    location_id INT,
    vehicle_type VARCHAR(50),
    FOREIGN KEY (location_id) REFERENCES Location(id)
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department_id INT,
    salary BIGINT,
    insentive_id INT,
    joining_date DATE,
    DOB DATE,
    vehicle_id VARCHAR(25),
    FOREIGN KEY (department_id) REFERENCES Department(department_id),
    FOREIGN KEY (insentive_id) REFERENCES Incentive(id)
);

INSERT INTO Location (longitude, latitude, name, room_no, dept_id, location_count) VALUES
(76.123, 28.456, 'Block A', 'A101', 1, 5),
(77.321, 29.456, 'Block B', 'B202', 2, 3),
(75.987, 27.789, 'Block C', 'C303', 3, 2),
(78.100, 28.100, 'Block D', 'D404', 4, 6),
(76.555, 29.111, 'Block E', 'E505', 5, 4),
(75.111, 28.999, 'Block F', 'F606', 6, 1),
(77.999, 28.777, 'Block G', 'G707', 7, 2);

update location set dept_id = null where dept_id = 6;

select * from location;


INSERT INTO Department (department_name, working_hour, location_id) VALUES
('CSE', 6, 1),
('HR', 5, 2),
('DCPD', 8, 3),
('Marketing', 4, 4),
('Emergency', 24, 5),
('BA', 6, 6),
('Admin', 9, 7);

INSERT INTO Incentive (incentive_amount, incentive_name) VALUES
(5000, 'Bonus A'),
(3000, 'Bonus B'),
(1500, 'Bonus C'),
(7000, 'Bonus D'),
(2000, 'Bonus E'),
(4000, 'Bonus F'),
(1000, 'Bonus G'),
(5500, 'Bonus H');


INSERT INTO Vehicle (parking_id, location_id, vehicle_type) VALUES
('HR26-AS-1342', 1, 'Car'),
('HP07-AF-1352', 2, 'Bike'),
('HR05-AS-1442', 3, 'Car'),
('RJ65-PS-0001', 4, 'SUV'),
('RJ65-BS-1342', 5, 'Car'),
('HR04-AK-1148', 6, 'Scooter'),
('PB65-KF-4586', 7, 'Car'),
('HR26-AS-1302', 1, 'Bike');

INSERT INTO Employee (name, department_id, salary, insentive_id, joining_date, DOB, vehicle_id) VALUES
('Rajat', 1, 150000, 1, '2012-02-02', '1987-08-19', 'HR26-AS-1342'),
('Salesh', 2, 14000, 2, '2000-02-02', '1971-08-29', 'HP07-AF-1352'),
('Monika', 2, 10000, 3, '2019-08-09', '1995-05-19', 'HR05-AS-1442'),
('Malhan', 3, 152000, 4, '2022-12-20', '1986-08-09', 'RJ65-PS-0001'),
('Gorav', 3, 10000, 5, '2005-09-21', '1997-11-19', 'RJ65-BS-1342'),
('Pintu', 3, 12500, 6, '2017-05-21', '1987-08-19', 'HR04-AK-1148'),
('Bismillah Mohmaad Akdas', 7, 150000, 1, '2011-01-17', '2000-08-19', 'PB65-KF-4586'),
('Shekhar', 4, 150000, 8, '2012-02-02', '2005-08-19', 'HR26-AS-1302');

-- fetch employee department
select e.name, d.department_name from Employee as e left join department as d on e.department_id = d.department_id 

-- fetch building that is not allocated to any department
select name as building, dept_id as department from location where dept_id is null;

-- count no of employee from each department
select department_name, count(employee_id) as Employees from Employee inner join  department on employee.department_id = department.department_id group by department_name;