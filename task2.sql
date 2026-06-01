USE EcommerceDB;

-- Insert Customers
INSERT INTO Customers (customer_name, email, phone)
VALUES
('Sakshi Patil', 'sakshi@gmail.com', '9876543210'),
('Rohan Sharma', 'rohan@gmail.com', '8765432109'),
('Priya Singh', NULL, '7654321098');

-- Insert Products
INSERT INTO Products (product_name, price, stock)
VALUES
('Laptop', 55000.00, 10),
('Mouse', 500.00, 50),
('Keyboard', 1200.00, 25);

-- Insert Orders
INSERT INTO Orders (customer_id, order_date)
VALUES
(1, '2026-06-01'),
(2, '2026-06-02');

-- Insert Order Items
INSERT INTO Order_Items (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1);


SELECT *
FROM Customers
WHERE email IS NULL;

UPDATE Customers
SET email = 'priya@gmail.com'
WHERE customer_id = 3;

UPDATE Products
SET stock = 40
WHERE product_id = 2;

DELETE FROM Order_Items
WHERE product_id = 3;

DELETE FROM Products
WHERE product_id = 3;



SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Order_Items;