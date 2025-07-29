create database store;
use store;

CREATE TABLE Item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);


-- Create Customer table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    item_id INT,
    quantity INT NOT NULL,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (item_id) REFERENCES Item(item_id)
);

-- Insert items
INSERT INTO Item (item_name, price, stock) VALUES
('Pen', 10.00, 100),
('Notebook', 40.00, 200),
('Eraser', 5.00, 300),
('Bag', 300.00, 50);

-- Insert customers
INSERT INTO Customer (name) VALUES
('John'),
('Emma'),
('Liam');

-- Insert orders
INSERT INTO Orders (customer_id, item_id, quantity) VALUES
(1, 1, 3), -- John buys 3 pens
(2, 2, 2), -- Emma buys 2 notebooks
(3, 4, 1); -- Liam buys 1 bag

select O.order_id, C.name, I.item_name, O.quantity, I.price from Orders as O join Item as I on O.item_id = I.item_id
join Customer as C on O.customer_id = C.customer_id;

select I.Item_name, O.quantity as sell_Quantity, I.stock-O.quantity as Remaining_Quantity from Orders as O join Item as I on O.item_id = I.item_id;