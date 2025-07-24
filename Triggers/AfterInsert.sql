use practice;

DELIMITER $$

create Trigger trigger_Ater_insert
After insert on Employees
for each ROW
    begin
        insert into EmployeeLog(message)
        VALUES (CONCAT('Inserted: ', NEW.name));
    END$$

DELIMITER ;
