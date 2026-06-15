SELECT CustomerName, OrderDate
FROM Customers
INNER JOIN orders USING(CustomerID)
WHERE MONTH(OrderDate) = 8;


SELECT SupplierID, SupplierName
FROM Suppliers;


SELECT SupplierName, Address, City, Country
FROM Suppliers
WHERE SupplierID = 1;

SELECT ProductName,Price 
FROM products
WHERE SupplierID = 1;

SELECT CustomerName,CustomerID
FROM Customers;

DELETE FROM Customers
WHERE CustomerID = 1;

UPDATE orders
SET CustomerID = NULL
WHERE CustomerID = 1;