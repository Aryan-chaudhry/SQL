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

    CREATE TABLE Order_Detail(
        ORDER_ID INTEGER PRIMARY KEY,
        PRODUCT_NAME VARCHAR(225),
        DELIVERY_DATE DATE,
        CUSTOMER_ID INT,
        Foreign Key (CUSTOMER_ID) REFERENCES Customer(id) ON DELETE SET NULL,
        PRICE INTEGER
    );

    INSERT INTO Order_Detail
        (order_id, product_name, delivery_date, customer_id, price) VALUES
        (121, "Headphone", '22-04-25', 1, 1500),
        (123, "Bhagwat Geeta Book", '18-04-25', 3, 2400),
        (124, "SSC PYQ BOOK", '21-04-25', 2, 350),
        (127, "C type Charger", "21-04-25", 5, 1200);


SELECT * FROM Order_detail;

-- intigrity constratin
DELETE FROM Customer WHERE id = 5;

DROP TABLE Order_detail;
-- Give the Person detail whose order id is 121 
 
-- update table data

UPDATE Customer SET ADDRESS = "Danialpur, Karnal, Haryana" WHERE id = 2