-- 1. Dodaj nowy towar:   'cukierki' o id 78, dostarczany przez dostawcę o id 1  z kategorii o id 2  (słodycze), cena 15, jednostka (unit) 10

INSERT INTO products
VALUES (78, 'cukierki', 1, 2, 10, 15) 

-- 2. Dodaj nowego kuriera (shippers) - GPL, telefon 22 123 45 67
INSERT INTO shippers
VALUES (null, 'GPL', '22 123 45 67' );
-- 3. dopisz nowy towar: 'karty' o cenie 20. podaj tylko te dwa pola
INSERT INTO products(ProductName, Price)
VALUES ('karty', 20);

-- 4. zmień cenę produktu o nazwie karty na 10

UPDATE products
SET price = 10
WHERE ProductName = 'karty';

-- 5. zmień nazwisko pracownika (employees) o id 3 na 'Fuller' (employeeID, LastName)

UPDATE employees
SET LastName = 'Fuller'
WHERE employeeID = 3;

-- 6. zwiększ cenę wszystkich produktów o 10 (products, price)

UPDATE products
SET Price = Price + 10;

-- 7. Zmniejsz cenę wszystkich produktów o 10%

UPDATE products
SET Price = price * 0.9;

-- 8. zwiększ cenę o 5% wszystkich produktów dostarczanych przez dostawcę o id 4 (supplierID)

UPDATE products
SET Price = price * 1.05
WHERE supplierID =4;

-- 9. zmień dostawcę produktów z kategorii 7 na dostawcę o id 3

UPDATE products
SET supplierID = 3
WHERE categoryID = 7;

-- 10. w zamówieniu 10248 zmień numer pracownika na 3, datę na 5 lipca 1996 i numer dostawcy na 2 
UPDATE orders
SET employeeID = 3, OrderDate = '1996-07-05', shipperID = 2
WHERE OrderID = 10248;
-- 11. Usuń klientów o nazwie na literę M
DELETE FROM Customers
WHERE CustomerName LIKE 'M%';

UPDATE orders
SET CustomerID = null
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Customers
    WHERE CustomerName LIKE 'M%'
);



-- 12. usuń produkty o cenie pomiędzy 10 a 20

DELETE FROM products 
WHERE Price BETWEEN 10 AND 20;

UPDATE order_details
SET ProductID = null
WHERE ProductID IN (
    SELECT ProductID
    FROM products
    WHERE Price BETWEEN 10 AND 20
);