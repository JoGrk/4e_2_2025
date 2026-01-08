-- 1. Wyświetl nazwy firm klientów  i daty zamówień
SELECT CustomerName, OrderDate
FROM orders
    INNER JOIN customers ON orders.CustomerID=customers.CustomerID;
 
-- 2, Wyświetl dane spedytora z datą zamówienia
 SELECT OrderDate, ShipperName
 FROM orders
    INNER JOIN shippers ON shippers.ShipperID = orders.ShipperID;
-- 3. Wyświetl nazwiska pracowników i daty zamówień
 SELECT LastName, OrderDate
 FROM employees
    INNER JOIN orders ON employees.employeeID = orders.employeeID;
-- 4. Wyświetl nazwy towarów, nazwy kategorii
SELECT ProductName, CategoryName
FROM products
    INNER JOIN categories ON Products.CategoryID = categories.CategoryID;

-- 5. Wyświetl nazwy towarów, nazwy kategorii i idzamówień
SELECT ProductName, CategoryName,OrderID
FROM products
    INNER JOIN categories ON Products.CategoryID = categories.CategoryID
    INNER JOIN order_details ON products.ProductID = order_details.ProductID;
 
-- 6. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i idklienta
 
SELECT ProductName, CategoryName, OrderDate, CustomerID
FROM products
    INNER JOIN categories ON Products.CategoryID = categories.CategoryID
    INNER JOIN order_details ON products.ProductID = order_details.ProductID
    INNER JOIN Orders ON order_details.OrderID = orders.orderID;


-- 7. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i nazwę firmy klienta
SELECT ProductName, CategoryName, OrderDate, CustomerName
FROM Products
    INNER JOIN categories USING(CategoryID)
    INNER JOIN order_details USING(ProductID)
    INNER JOIN orders USING(OrderID)
    INNER JOIN customers USING(CustomerID);

-- 8. Ile razy był zamawiany dany produkt? (podaj nazwy produktów)

SELECT ProductName, COUNT(*)
FROM products
    INNER JOIN order_details USING(ProductID)
GROUP BY ProductName;

 
-- 9. Wyświetl nazwy firm klientów, daty zamówień i nazwy towarów