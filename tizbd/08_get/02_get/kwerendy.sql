SELECT CustomerName, OrderDate
FROM Customers
INNER JOIN orders USING(CustomerID)
WHERE MONTH(OrderDate) = 8;


SELECT SupplierID, SupplierName
FROM Suppliers;