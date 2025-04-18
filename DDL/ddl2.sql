use ORG;

SHOW TABLES;

CREATE TABLE Account(
    Account_no int UNIQUE,
    Name VARCHAR(225), 
    Balance DECIMAL(10,2),
    CONSTRAINT Account_Balanace_chk CHECK(Balance > 1000)
);

INSERT INTO Account
    (Account_no, Name, Balance) VALUES
    (124578963, "Balvinder Singh", 2500000),
    (123456784, "Mamta Rani", 140000),
    (123852753, "Ravi Kumar", 1400);

SELECT * FROM Account;

-- Give balance of Balvinder singh
SELECT BALANCE FROM Account WHERE name = "Balvinder Singh";

-- give person detail who have maximum money in his account
SELECT * FROM Account WHERE BALANCE = (SELECT MAX(BALANCE) FROM ACCOUNT);
 -- OR
 SELECT * FROM Account ORDER BY BALANCE DESC LIMIT 1;

-- Give a person detail who have minimum balance in his account
SELECT * FROM Account WHERE BALANCE = (SELECT MIN(BALANCE) FROM ACCOUNT);
-- OR
SELECT * FROM Account ORDER BY BALANCE LIMIT 1;

-- FIND the Average balance of all account
SELECT AVG(Balance) FROM Account;

-- FIND sum of balance of all Account
SELECT SUM(Balance) FROM Account;

CREATE TABLE Profile(
    Profile_name VARCHAR(225),
    follower int DEFAULT 0,
    following int DEFAULT 0
);

INSERT INTO Profile
    (Profile_name) VALUES
    ("Deadly_surviver"),
    ("Rahul" );

INSERT INTO Profile
    (Profile_name, follower, following) VALUES
    ("Khan Sahab", 1400000, 15);

SELECT * FROM Profile;