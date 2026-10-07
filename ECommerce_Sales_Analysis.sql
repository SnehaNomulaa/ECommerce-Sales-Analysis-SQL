CREATE DATABASE ECommerceSalesAnalysis;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(50),
    State VARCHAR(50),
    SignupDate DATE
);

select * from customers;

INSERT INTO Customers
(CustomerID, CustomerName, Gender, Age, City, State, SignupDate)
VALUES
(1, 'Akshith Kumar Modem', 'Male', 22, 'Hyderabad', 'Telangana', '2024-01-15'),
(2, 'Sneha Nomula', 'Female', 21, 'Hyderabad', 'Telangana', '2024-02-10'),
(3, 'Rahul Verma', 'Male', 29, 'Mumbai', 'Maharashtra', '2024-02-18'),
(4, 'Ananya Reddy', 'Female', 26, 'Bengaluru', 'Karnataka', '2024-03-05'),
(5, 'Arjun Mehta', 'Male', 31, 'Pune', 'Maharashtra', '2024-03-21'),
(6, 'Priya Nair', 'Female', 27, 'Kochi', 'Kerala', '2024-04-02'),
(7, 'Vikram Rao', 'Male', 35, 'Hyderabad', 'Telangana', '2024-04-17'),
(8, 'Ishita Singh', 'Female', 23, 'Jaipur', 'Rajasthan', '2024-05-09'),
(9, 'Karan Patel', 'Male', 28, 'Ahmedabad', 'Gujarat', '2024-05-23'),
(10, 'Meera Iyer', 'Female', 30, 'Chennai', 'Tamil Nadu', '2024-06-11'),
(11, 'Rohan Gupta', 'Male', 25, 'Kolkata', 'West Bengal', '2024-06-28'),
(12, 'Kavya Reddy', 'Female', 21, 'Hyderabad', 'Telangana', '2024-07-04'),
(13, 'Aditya Joshi', 'Male', 33, 'Delhi', 'Delhi', '2024-07-19'),
(14, 'Neha Shah', 'Female', 29, 'Mumbai', 'Maharashtra', '2024-08-03'),
(15, 'Siddharth Rao', 'Male', 27, 'Bengaluru', 'Karnataka', '2024-08-22'),
(16, 'Pooja Menon', 'Female', 32, 'Kochi', 'Kerala', '2024-09-14'),
(17, 'Nikhil Kumar', 'Male', 24, 'Pune', 'Maharashtra', '2024-09-30'),
(18, 'Divya Reddy', 'Female', 26, 'Hyderabad', 'Telangana', '2024-10-12'),
(19, 'Manish Agarwal', 'Male', 38, 'Jaipur', 'Rajasthan', '2024-11-06'),
(20, 'Riya Malhotra', 'Female', 25, 'Delhi', 'Delhi', '2024-12-01');

select * from customers;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT
);

INSERT INTO Products
(ProductID, ProductName, Category, Price, StockQuantity)
VALUES
(1, 'Wireless Headphones', 'Electronics', 2499.00, 45),
(2, 'Smart Watch', 'Electronics', 3999.00, 30),
(3, 'Bluetooth Speaker', 'Electronics', 1799.00, 60),
(4, 'Laptop Backpack', 'Accessories', 1299.00, 80),
(5, 'Running Shoes', 'Footwear', 2999.00, 50),
(6, 'Casual Sneakers', 'Footwear', 2499.00, 65),
(7, 'Cotton T-Shirt', 'Clothing', 799.00, 120),
(8, 'Denim Jeans', 'Clothing', 1899.00, 75),
(9, 'Hoodie', 'Clothing', 1599.00, 55),
(10, 'Water Bottle', 'Home & Kitchen', 599.00, 150),
(11, 'Coffee Maker', 'Home & Kitchen', 3499.00, 35),
(12, 'Table Lamp', 'Home & Kitchen', 1199.00, 70),
(13, 'Face Wash', 'Beauty', 499.00, 100),
(14, 'Moisturizer', 'Beauty', 699.00, 90),
(15, 'Sunscreen SPF 50', 'Beauty', 799.00, 85),
(16, 'Yoga Mat', 'Sports', 999.00, 60),
(17, 'Dumbbell Set', 'Sports', 2499.00, 40),
(18, 'Notebook Set', 'Stationery', 399.00, 200),
(19, 'Backpack', 'Accessories', 1599.00, 70),
(20, 'Travel Mug', 'Home & Kitchen', 899.00, 95);

select * from Products;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    PaymentMethod VARCHAR(30),
    OrderStatus VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders
(OrderID, CustomerID, OrderDate, PaymentMethod, OrderStatus)
VALUES
(1001, 1, '2024-01-20', 'UPI', 'Delivered'),
(1002, 2, '2024-02-14', 'Credit Card', 'Delivered'),
(1003, 3, '2024-02-25', 'UPI', 'Delivered'),
(1004, 4, '2024-03-10', 'Debit Card', 'Delivered'),
(1005, 5, '2024-03-28', 'Cash on Delivery', 'Delivered'),
(1006, 6, '2024-04-08', 'UPI', 'Delivered'),
(1007, 7, '2024-04-22', 'Credit Card', 'Shipped'),
(1008, 8, '2024-05-15', 'UPI', 'Delivered'),
(1009, 9, '2024-05-29', 'Debit Card', 'Delivered'),
(1010, 10, '2024-06-17', 'Credit Card', 'Delivered'),
(1011, 11, '2024-07-02', 'UPI', 'Cancelled'),
(1012, 12, '2024-07-08', 'UPI', 'Delivered'),
(1013, 13, '2024-07-25', 'Debit Card', 'Delivered'),
(1014, 14, '2024-08-10', 'Credit Card', 'Delivered'),
(1015, 15, '2024-08-28', 'UPI', 'Delivered'),
(1016, 16, '2024-09-20', 'Cash on Delivery', 'Shipped'),
(1017, 17, '2024-10-05', 'UPI', 'Delivered'),
(1018, 18, '2024-10-18', 'Credit Card', 'Delivered'),
(1019, 19, '2024-11-12', 'Debit Card', 'Delivered'),
(1020, 20, '2024-12-05', 'UPI', 'Delivered'),
(1021, 1, '2024-06-25', 'UPI', 'Delivered'),
(1022, 2, '2024-08-15', 'Credit Card', 'Delivered'),
(1023, 3, '2024-09-05', 'UPI', 'Delivered'),
(1024, 5, '2024-10-22', 'Debit Card', 'Delivered'),
(1025, 7, '2024-11-18', 'Credit Card', 'Delivered'),
(1026, 10, '2024-12-12', 'UPI', 'Delivered'),
(1027, 12, '2024-09-28', 'UPI', 'Delivered'),
(1028, 14, '2024-10-30', 'Debit Card', 'Delivered'),
(1029, 16, '2024-11-25', 'Credit Card', 'Cancelled'),
(1030, 18, '2024-12-20', 'UPI', 'Delivered');

select * from Orders;

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails
(OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1001, 1, 1, 2499.00),
(2, 1001, 18, 2, 399.00),
(3, 1002, 2, 1, 3999.00),
(4, 1002, 13, 2, 499.00),
(5, 1003, 5, 1, 2999.00),
(6, 1004, 7, 3, 799.00),
(7, 1005, 11, 1, 3499.00),
(8, 1005, 10, 2, 599.00),
(9, 1006, 16, 1, 999.00),
(10, 1007, 3, 2, 1799.00),
(11, 1008, 8, 1, 1899.00),
(12, 1009, 6, 2, 2499.00),
(13, 1010, 15, 2, 799.00),
(14, 1011, 4, 1, 1299.00),
(15, 1012, 9, 1, 1599.00),
(16, 1013, 17, 1, 2499.00),
(17, 1014, 14, 2, 699.00),
(18, 1015, 20, 2, 899.00),
(19, 1016, 12, 1, 1199.00),
(20, 1017, 1, 2, 2499.00),
(21, 1018, 2, 1, 3999.00),
(22, 1019, 5, 1, 2999.00),
(23, 1020, 7, 2, 799.00),
(24, 1021, 3, 1, 1799.00),
(25, 1022, 6, 1, 2499.00),
(26, 1023, 15, 1, 799.00),
(27, 1024, 8, 2, 1899.00),
(28, 1025, 11, 1, 3499.00),
(29, 1026, 18, 3, 399.00),
(30, 1027, 16, 2, 999.00),
(31, 1028, 13, 1, 499.00),
(32, 1029, 17, 1, 2499.00),
(33, 1030, 19, 1, 1599.00),
(34, 1030, 20, 1, 899.00);

select * from OrderDetails;

SELECT 'Customers' AS TableName, COUNT(*) AS RecordCount
FROM Customers

UNION ALL

SELECT 'Products', COUNT(*)
FROM Products

UNION ALL

SELECT 'Orders', COUNT(*)
FROM Orders

UNION ALL

SELECT 'OrderDetails', COUNT(*)
FROM OrderDetails;

SELECT 
    SUM(Quantity * UnitPrice) AS TotalRevenue
FROM OrderDetails;

SELECT
    p.ProductName,
    p.Category,
    SUM(od.Quantity * od.UnitPrice) AS Revenue
FROM OrderDetails od
JOIN Products p
    ON od.ProductID = p.ProductID
GROUP BY
    p.ProductName,
    p.Category
ORDER BY Revenue DESC;

SELECT
    p.Category,
    SUM(od.Quantity * od.UnitPrice) AS TotalRevenue
FROM OrderDetails od
JOIN Products p
    ON od.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalRevenue DESC;

SELECT
    YEAR(o.OrderDate) AS OrderYear,
    MONTH(o.OrderDate) AS OrderMonth,
    SUM(od.Quantity * od.UnitPrice) AS MonthlyRevenue
FROM Orders o
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
WHERE o.OrderStatus <> 'Cancelled'
GROUP BY
    YEAR(o.OrderDate),
    MONTH(o.OrderDate)
ORDER BY
    OrderYear,
    OrderMonth;

SELECT
    c.CustomerID,
    c.CustomerName,
    c.City,
    SUM(od.Quantity * od.UnitPrice) AS TotalSpent
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
WHERE o.OrderStatus <> 'Cancelled'
GROUP BY
    c.CustomerID,
    c.CustomerName,
    c.City
ORDER BY TotalSpent DESC;

SELECT
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    SUM(od.Quantity * od.UnitPrice) AS TotalRevenue,
    CAST(
        SUM(od.Quantity * od.UnitPrice) * 1.0
        / COUNT(DISTINCT o.OrderID)
        AS DECIMAL(10,2)
    ) AS AverageOrderValue
FROM Orders o
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
WHERE o.OrderStatus <> 'Cancelled';

SELECT
    o.PaymentMethod,
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    SUM(od.Quantity * od.UnitPrice) AS Revenue
FROM Orders o
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
WHERE o.OrderStatus <> 'Cancelled'
GROUP BY o.PaymentMethod
ORDER BY Revenue DESC;

SELECT
    OrderStatus,
    COUNT(*) AS TotalOrders,
    CAST(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Orders)
        AS DECIMAL(5,2)
    ) AS Percentage
FROM Orders
GROUP BY OrderStatus
ORDER BY TotalOrders DESC;

SELECT
    p.ProductName,
    p.Category,
    SUM(od.Quantity) AS UnitsSold
FROM OrderDetails od
JOIN Products p
    ON od.ProductID = p.ProductID
GROUP BY
    p.ProductName,
    p.Category
ORDER BY UnitsSold DESC;

SELECT
    c.CustomerID,
    c.CustomerName,
    COUNT(o.OrderID) AS OrderCount,
    SUM(
        CASE
            WHEN o.OrderStatus <> 'Cancelled'
            THEN 1
            ELSE 0
        END
    ) AS CompletedOrders
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.CustomerName
HAVING COUNT(o.OrderID) > 1
ORDER BY OrderCount DESC;

SELECT
    c.CustomerName,
    SUM(od.Quantity * od.UnitPrice) AS TotalSpent,
    RANK() OVER (
        ORDER BY SUM(od.Quantity * od.UnitPrice) DESC
    ) AS CustomerRank
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
WHERE o.OrderStatus <> 'Cancelled'
GROUP BY
    c.CustomerName;

WITH CustomerSpending AS (
    SELECT
        c.CustomerID,
        c.CustomerName,
        SUM(od.Quantity * od.UnitPrice) AS TotalSpent
    FROM Customers c
    JOIN Orders o
        ON c.CustomerID = o.CustomerID
    JOIN OrderDetails od
        ON o.OrderID = od.OrderID
    WHERE o.OrderStatus <> 'Cancelled'
    GROUP BY
        c.CustomerID,
        c.CustomerName
)
SELECT
    CustomerID,
    CustomerName,
    TotalSpent
FROM CustomerSpending
WHERE TotalSpent > 5000
ORDER BY TotalSpent DESC;