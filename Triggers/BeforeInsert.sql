use practice;
DELIMITER $$ --> CHANGING ; TO $$ SO THAT SQL ENGINE DONT STEP AFTER SEE ;

create Trigger  trigger_insert
before insert on employees
for each ROW
begin
     IF NEW.salary < 20000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary must be at least 20000';
    END IF;
end $$

DELIMITER ;


