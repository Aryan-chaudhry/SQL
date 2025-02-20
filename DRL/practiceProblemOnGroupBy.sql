USE Student;

Create Table Payment(
    Customer_id INT PRIMARY KEY NOT NULL,
    Customer VARCHAR(30) NOT NULL,
    Payment_Mode VARCHAR(30) NOT NULL,
    City VARCHAR(30) NOT NULL
);

INSERT INTO Payment
    (Customer_id, Customer, Payment_Mode, City) VALUES
    (101, "Olivia Barrett", "Netbanking", "Portland"),
    (102, "Ethan Sinclair", "Credit Card", "Miami"),
    (103, "Maya Hernandez", "Credit Card", "Seattle"),
    (104, "Liam Donovan", "Netbanking", "Denver"),
    (105, "Sophia Nguyen", "Credit Card", "New Orleans"),
    (106, "Caleb Foster", "Debit Card", "Minneapolis"),
    (107, "Ava Patel", "Debit Card", "Phoenix"),
    (108, "Lucas Carter", "Netbanking", "Boston"),
    (109, "Isabella Martinez", "Netbanking", "Nashville"),
    (110, "Jackson Brooks", "Credit Card", "Boston");

SELECT * FROM Payment;

-- group by

SELECT Payment_Mode, COUNT(Customer) FROM Payment
GROUP BY Payment_Mode;