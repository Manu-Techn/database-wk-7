-- Q1. Achieving 1NF
-- Create a new table in 1NF
CREATE TABLE ProductDetail_1NF (
OrderId INT,
CustomerName VARCHAR(100),
Product VARCHAR(50)
);

-- Insert the normalized data
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith',  'Keyboard'),
(102, 'Jane Smith',  'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Q2. Acheiving 2NF
-- Create the orders table
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(100)
);

-- Insert data into orders table
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102,  'Jane Smith'),
(103, 'Emily Clark');

-- Create order products table
CREATE TABLE OrderProducts (
OrderID INT,
Product VARCHAR(50),
Quantity INT,
PRIMARY KEY (OrderID, Product),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert dat into order products table
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES
(101, 'laptop', 2),
(101, 'Mouse', 1),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

