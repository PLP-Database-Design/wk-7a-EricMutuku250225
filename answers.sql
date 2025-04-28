Question 1

SELECT 
    OrderID,
    CustomerName,
    LTRIM(RTRIM(value)) AS Product
FROM 
    ProductDetail
CROSS APPLY 
    STRING_SPLIT(Products, ',');


Question 2 part 1

CREATE TABLE Orders AS
SELECT DISTINCT 
    OrderID, 
    CustomerName
FROM 
    OrderDetails;

Question 2 part 2

CREATE TABLE OrderProducts AS
SELECT 
    OrderID, 
    Product, 
    Quantity
FROM 
    OrderDetails;
