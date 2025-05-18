CREATE DATABASE retail;
USE retail;

CREATE TABLE customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(200),
    Phone VARCHAR(200),
    Address TEXT
);

CREATE TABLE employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(200),
    Role VARCHAR(50)
);

CREATE TABLE categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100),
    Description TEXT
);

CREATE TABLE products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    Description TEXT,
    Price DECIMAL(8,2),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES categories(CategoryID)
);

CREATE TABLE orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2),
    OrderStatus ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled'),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);

CREATE TABLE orderitems (
    OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);

CREATE TABLE payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATETIME,
    PaymentAmount DECIMAL(10,2),
    PaymentMethod ENUM('Credit Card', 'Cash', 'PayPal'),
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID)
);

CREATE TABLE reviews (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Rating INT,
    Comment TEXT,
    ReviewDate DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);