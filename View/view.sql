show DATABASES

use info;


create table Account(
    id int primary key AUTO_INCREMENT,
    name varchar(55) not null,
    email_id varchar(25) not null,
    password varchar(25) not null
);

insert into Account
    (name, email_id, password) VALUES
    ("Amit", "Amit.yt@gmail.com", "Amit@4321"),
    ("Rahul", "Rahul_45@gmail.com", "Rahul@6728"),
    ("Kunal", "kunal_shah_01@gmail.com", "Hero@123"),
    ("Sunil", "deshpandey_32@gmail.com", "Sunil_deshpandey@123");


    select * from Account;

    -- lets create view
    create view Privacy as
        select name, email_id from Account;

    select * from Privacy;