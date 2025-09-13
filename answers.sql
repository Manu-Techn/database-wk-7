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

-- Q2. 
