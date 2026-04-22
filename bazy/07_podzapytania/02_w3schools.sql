-- Podzapytanie wybierające wiele wartości
-- 1. Wybierz dane klientów klientów, którzy nie kupili żadnego produktu z kategorii Confections
SELECT*
FROM Customers
WHERE CustomerID NOT IN(
    SELECT DISTINCT CustomerID
    FROM Orders
        INNER JOIN Order_details USING(OrderID)
        INNER JOIN products USING(ProductID)
        INNER JOIN Categories USING(CategoryID)
    WHERE CategoryName = 'Confections'
);

-- 2. Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to pokaż ich dane adresowe.
SELECT*
FROM Customers
WHERE CustomerID NOT IN(
    SELECT CustomerID
    FROM Orders
    WHERE OrderDate LIKE '1997%'
);
 
-- 3. Wyświetl nazwiska i imiona pracowników, którzy nie sprzedali niczego do Argentyny.

SELECT FirstName, LastName
FROM Employees
WHERE employeeID NOT IN(
    SELECT employeeID
    FROM Orders
        INNER JOIN customers USING(CustomerID)
    WHERE country = 'Argentina'
);

-- 4. Wypisz nazwy i kraje klientów, którzy zawsze zamawiali tylko jeden produkt.

 SELECT CustomerName,country
 FROM customers
 WHERE CustomerID NOT IN (
        SELECT CustomerID
        FROM Orders
            INNER JOIN Order_details USING(OrderID)
        GROUP BY CustomerID,OrderID
        HAVING COUNT(*)>1
 );

 SELECT CustomerID
 FROM Orders
    INNER JOIN Order_details USING(OrderID)
GROUP BY CustomerID,OrderID
HAVING COUNT(*)>1;


 
 
 
-- Podzapytania i zapytania DML
-- 1. Usuń wszystkich szczegóły zamówień (wiersze z OrderDetails) dotyczące produktu o nazwie "Chang"

DELETE  
FROM Order_details
WHERE ProductID IN(
    SELECT ProductID
    FROM products
    WHERE ProductName='CHANG'
);

-- 2. Zwiększ o 10% ceny wszystkich produktów z kategorii "Confections"
UPDATE products
SET price = price*1.1
WHERE ProductID IN(
    SELECT ProductID
    FROM Categories
    WHERE CategoryName ="Confections"
);

-- 3. Zmniejsz o 5% ceny wszystkich produktów dostarczanych przez dostawców z  Tokyo  (city)

UPDATE Products
SET Price = Price*0.95
WHERE SupplierID IN(
    SELECT SupplierID
    FROM Suppliers
    WHERE City ='Tokyo'
);

-- 4. Usuń wszystkie produkty z kategorii  o opisie "Cheeses" (Description)  o cenie większej od 50

DELETE 
FROM products
WHERE CategoryID IN(
    SELECT CategoryID
    FROM Categories
    WHERE Description='Cheeses' 
)
AND price>50;

UPDATE Order_details
SET ProductID = null
WHERE ProductID IN(
    SELECT ProductID
    FROM products
        INNER JOIN Categories USING(CategoryID)
    WHERE Description='Cheeses' AND price>50
);


-- 5. Zwiększ o 10% cenę wszystkich produktów z kategorii o nazwie zaczynającej się na literę C 

UPDATE Products
SET Price = price*1.1
WHERE CategoryID IN(
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName LIKE 'C%'
);

-- 6. Usuwamy wszystkie produkty dostarczane przez dostawców z USA

DELETE 
FROM products
WHERE SupplierID IN(
    SELECT SupplierID
    FROM Suppliers 
    WHERE Country = 'USA'
);

UPDATE Order_details
SET ProductID = null 
WHERE ProductID IN(
    SELECT ProductID
    FROM Products 
        INNER JOIN Suppliers USING(SupplierID)
    WHERE Country = 'USA'
);

-- 7. Usuń wszystkie zamówienia z Orders złożone przez klientów z Londynu ('London').
DELETE FROM 
ORDERS 
WHERE CustomerID IN(
    SELECT CustomerID
    FROM customers
    WHERE city ='london'
);

UPDATE Order_details
SET OrderID = null
WHERE OrderID IN(
    SELECT OrderID
    FROM Orders 
    INNER JOIN customers USING(CustomerID)
    WHERE city ='london'
)
 

-- 8. Podaj wszystkie produkty których cena jest mniejsza niż średnia cena produktu danej kategorii 
SELECT ProductName, Price
FROM products p
WHERE Price<(
    SELECT ROUND(AVG(price))
    FROM products 
    WHERE CategoryID = p.CategoryID
    
);
 
-- 9. Dla każdego produktu podaj jego nazwę, cenę, średnią cenę wszystkich produktów oraz różnicę między ceną produktu a średnią ceną wszystkich produktów
 
 
SELECT ProductName, price, (SELECT AVG(price) FROM products) AS AVG, price-(SELECT AVG(price) FROM products)
FROM products
GROUP BY ProductID;

 
 
 
-- ------------------ NIETYPOWE ----------------------------------------------------------------------------
-- 1. Podaj produkty kupowane przez więcej niż 10 klientów (lub 10 różnych klientów - wsk. utwórz zapytanie wybierające różne wiersze CustomerID, ProductID z tabel Orders i OrdersDetalis i użyj jako podzapytanie w części FROM)
 
-- 2. Wybierz nazwy i numery telefonów klientów, którzy kupili więcej niż 3 różne produkty z kategorii .Confections.
 
-- 3. Dla każdego produktu podaj maksymalną liczbę zamówionych jednostek
 
-- 4. Dla każdego produktu podaj jego nazwę kategorii, nazwę produktu, cenę, średnią cenę wszystkich produktów danej kategorii oraz różnicę między ceną produktu a średnią ceną wszystkich produktów danej kategorii.
 
-- 5. Podaj łączną wartość zamówienia o numerze 1025 (uwzględnij cenę za przesyłkę). 
 
-- 6. Podaj łączną wartość zamówień każdego zamówienia (uwzględnij cenę za przesyłkę).
 
-- 7. Podaj produkty kupowane przez więcej niż jednego klienta
 
-- 8. Podaj produkty kupowane przez więcej niż 20 klientów