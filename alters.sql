ALTER TABLE products
ADD CONSTRAINT chk_price_positive CHECK (Price > 0);

ALTER TABLE orderitems
ADD CONSTRAINT chk_quantity_positive CHECK (Quantity >= 1);

ALTER TABLE reviews
ADD CONSTRAINT chk_rating_range CHECK (Rating BETWEEN 1 AND 5);

ALTER TABLE payments
ADD CONSTRAINT chk_payment_positive CHECK (PaymentAmount > 0);


INSERT INTO orders (OrderID, CustomerID, TotalAmount, OrderDate)
VALUES
(1010, 3, 2000, '2024-05-01'),
(1011, 3, 1500, '2024-05-02'),
(1012, 5, 3000, '2024-05-03'),
(1013, 5, 2500, '2024-05-04');

-- Customers
INSERT INTO customers (CustomerID, FirstName, LastName) VALUES
(1, 'John', 'Smith'),
(2, 'Emily', 'Johnson'),
(3, 'David', 'Brown'),
(4, 'Sarah', 'Davis'),
(5, 'Michael', 'Wilson');

-- Orders
INSERT INTO orders (OrderID, CustomerID, TotalAmount, OrderDate) VALUES
(101, 1, 1500, '2023-01-10'),
(102, 1, 2000, '2023-02-15'),
(103, 2, 800,  '2023-03-01'),
(104, 2, 1200, '2023-04-20'),
(105, 3, 1100, '2023-05-05'),
(106, 4, 900,  '2023-06-10'),
(107, 5, 1300, '2023-07-12'),
(108, 5, 1700, '2023-08-01');

-- Payments
INSERT INTO payments (PaymentID, OrderID, PaymentAmount) VALUES
(201, 101, 1500),
(202, 102, 2000),
(203, 103, 800),
(204, 104, 1200),
(205, 105, 1100),
(206, 107, 1300),
(207, 108, 1700);


INSERT INTO categories (CategoryName, Description) VALUES
('Electronics', 'Electronic devices and gadgets'),
('Clothing', 'Apparel and fashion items'),
('Home & Kitchen', 'Home appliances and kitchenware'),
('Books', 'Fiction and non-fiction books'),
('Sports', 'Sports equipment and gear');

-- Insert sample data into products
INSERT INTO products (ProductName, Description, Price, CategoryID) VALUES
('Smartphone X', 'Latest smartphone with advanced features', 799.99, 1),
('Wireless Earbuds', 'Noise-cancelling wireless earbuds', 149.99, 1),
('Men\'s T-Shirt', 'Cotton crew-neck t-shirt', 24.99, 2),
('Coffee Maker', '12-cup programmable coffee maker', 59.99, 3),
('Cookbook', 'Best-selling recipe collection', 19.99, 4),
('Yoga Mat', 'Non-slip premium yoga mat', 29.99, 5),
('Laptop Pro', 'High-performance business laptop', 1299.99, 1),
('Running Shoes', 'Lightweight running shoes', 89.99, 2),
('Blender', 'High-speed kitchen blender', 79.99, 3),
('Fantasy Novel', 'Bestselling fantasy book', 14.99, 4);

-- Insert sample data into customers
INSERT INTO customers (FirstName, LastName, Email, Phone, Address) VALUES
('John', 'Smith', 'john.smith@email.com', '555-1234', '123 Main St, Anytown'),
('Sarah', 'Johnson', 'sarah.j@email.com', '555-5678', '456 Oak Ave, Somewhere'),
('Michael', 'Brown', 'michael.b@email.com', '555-9012', '789 Pine Rd, Nowhere'),
('Emily', 'Davis', 'emily.d@email.com', '555-3456', '321 Elm St, Anywhere'),
('David', 'Wilson', 'david.w@email.com', '555-7890', '654 Maple Dr, Everywhere');

-- Insert sample data into employees
INSERT INTO employees (FirstName, LastName, Email, Phone, Role) VALUES
('Robert', 'Taylor', 'robert.t@retail.com', '555-1111', 'Manager'),
('Jennifer', 'Lee', 'jennifer.l@retail.com', '555-2222', 'Sales Associate'),
('Thomas', 'Clark', 'thomas.c@retail.com', '555-3333', 'Customer Service'),
('Lisa', 'White', 'lisa.w@retail.com', '555-4444', 'Inventory Specialist'),
('James', 'Anderson', 'james.a@retail.com', '555-5555', 'Cashier');

-- Insert sample orders (spread across multiple dates)
INSERT INTO orders (CustomerID, OrderDate, TotalAmount, OrderStatus) VALUES
(1, '2023-01-15 10:30:00', 799.99, 'Delivered'),
(2, '2023-01-16 11:45:00', 174.98, 'Delivered'),
(3, '2023-01-17 14:20:00', 104.97, 'Shipped'),
(1, '2023-01-18 09:15:00', 149.99, 'Delivered'),
(4, '2023-01-19 16:30:00', 89.99, 'Pending'),
(5, '2023-01-20 13:10:00', 59.99, 'Delivered'),
(2, '2023-01-21 10:45:00', 29.99, 'Shipped'),
(3, '2023-01-22 15:20:00', 19.99, 'Delivered'),
(1, '2023-01-23 11:30:00', 1299.99, 'Pending'),
(4, '2023-01-24 14:15:00', 79.99, 'Shipped');

-- Insert sample order items
INSERT INTO orderitems (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 1, 799.99),
(2, 2, 1, 149.99),
(2, 3, 1, 24.99),
(3, 4, 1, 59.99),
(3, 5, 1, 19.99),
(3, 6, 1, 29.99),
(4, 2, 1, 149.99),
(5, 8, 1, 89.99),
(6, 4, 1, 59.99),
(7, 6, 1, 29.99),
(8, 5, 1, 19.99),
(9, 7, 1, 1299.99),
(10, 9, 1, 79.99);

-- Insert sample payments
INSERT INTO payments (OrderID, PaymentDate, PaymentAmount, PaymentMethod) VALUES
(1, '2023-01-15 10:35:00', 799.99, 'Credit Card'),
(2, '2023-01-16 11:50:00', 174.98, 'PayPal'),
(3, '2023-01-17 14:25:00', 104.97, 'Credit Card'),
(4, '2023-01-18 09:20:00', 149.99, 'Credit Card'),
(6, '2023-01-20 13:15:00', 59.99, 'Cash'),
(8, '2023-01-22 15:25:00', 19.99, 'PayPal');

-- Insert sample reviews (with ratings 1-5)
INSERT INTO reviews (CustomerID, ProductID, Rating, Comment, ReviewDate) VALUES
(1, 1, 5, 'Excellent phone!', '2023-01-17 08:30:00'),
(2, 2, 4, 'Good sound quality', '2023-01-18 12:45:00'),
(2, 3, 3, 'Average quality shirt', '2023-01-19 09:15:00'),
(3, 4, 5, 'Makes great coffee', '2023-01-20 14:20:00'),
(1, 2, 5, 'Love these earbuds!', '2023-01-21 10:10:00'),
(4, 8, 4, 'Comfortable shoes', '2023-01-22 16:30:00'),
(5, 4, 5, 'Best coffee maker ever', '2023-01-23 11:45:00'),
(2, 6, 5, 'Great yoga mat', '2023-01-24 13:20:00'),
(3, 5, 4, 'Interesting recipes', '2023-01-25 15:10:00'),
(1, 7, 5, 'Powerful laptop', '2023-01-26 09:30:00');