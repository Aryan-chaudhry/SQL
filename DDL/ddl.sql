use ORG;

SHOW TABLES;

CREATE TABLE Customer(
    id INTEGER PRIMARY KEY,
    NAME VARCHAR(100),
    ADDRESS VARCHAR(225),
    GENDER CHAR(2),
    CITY VARCHAR(225),
    PINCODE INTEGER
);

INSERT INTO Customer
    (ID, NAME, ADDRESS, GENDER, CITY, PINCODE) VALUES
    (1, "Aryan", "DanialPur, Karnal, Haryana", 'M', 'Karnal', 132001),
    (2, "Ayush", "DanialPir, Karnal, Haryana", 'M', 'Karnal', 132001),
    (3, "Muskan", "DanialPur, Karnal, Haryana", 'F', 'Karnal', 132001),
    (4, "Ravi", "Delhi NCR", 'M', 'Delhi', 14250),
    (5, "Shiv Pratab", 'Juhu Mumbai', 'M', 'Dehri', 12321);

    SELECT * FROM Customer;

    -- Give a person DETAIL whose live in Karnal
    SELECT * FROM Customer WHERE CITY = 'KARNAL';