use practice;

create table EmployeeLog(
    log_id int AUTO_INCREMENT primary key,
    message varchar(225),
    log_time DATETIME DEFAULT NOW()
);

select * from EmployeeLog;