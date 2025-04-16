CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker(
    WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME CHAR(25),
    LAST_NAME CHAR(25),
    SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);

INSERT INTO Worker
    (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
    (001, "Monika", "Arora", 1000000, '14-02-20 09.00.00', 'HR'),
    (002, "Niharika", "verma", 100000, '14-06-11 09.00.00', 'Admin');

SELECT * FROM Worker;

CREATE TABLE Bonus(
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus
    (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
    (001, 5000, '16-02-20'),
    (002, 3000, '16-6-11');

SELECT * FROM Bonus;

CREATE TABLE Title(
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    Foreign Key (WORKER_REF_ID) REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);

INSERT INTO Title
    (WORKER_RED_ID, WORKER_TITLE,AFFECTED_FROM) VALUES
    (001, "Manager", '2016-02-20 00:00:00'),
    (002, "Executive", '2016-06-11 00:00:00');
