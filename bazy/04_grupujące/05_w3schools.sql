-- 1. Tabela Order_Details. Wyświetl sumę wszystkich sprzedanych ilości (Quantity)
SELECT SUM(Quantity)
FROM Order_Details;

-- 2. Products. 

-- A.Wyświetl najpierw 23% podatek z ceny (price) oraz nazwę produktu (productname). 
SELECT price*0.23, productname
FROM Products;
-- B.Następnie wyświetl średni 23% podatek z cen wszystkich produktów
SELECT ROUND(AVG(price*0.23),2)
FROM Products;

-- 3 Products. Zlicz ilość produktów.
SELECT COUNT(*)
FROM Products
-- 4. Product. Pogrupuj produkty według CategoryID i oblicz dla każdej kategorii najwyższą i najniższą cenę. Dane posortuj rosnąco według najwyższej ceny

SELECT CategoryID,MIN(price),MAX(price)
FROM Products
GROUP BY CategoryID
ORDER BY MAX(price);


-- 5. Products

-- A. Wyświetl wszystkie towary sprzedawane w butelkach ( unit zawiera tekst  "bottle")
-- B. Pogrupuj według kategorii (CategoryID)  i policz ilość produktów w każdej kategorii. Do zapytania wybierz tylko produkty sprzedawane w butelkach.

SELECT productname, unit
FROM Products 
WHERE unit like '%bottle%';

SELECT CategoryID, COUNT(*)
FROM Products 
WHERE unit like '%bottle%'
GROUP BY CategoryID;

-- 6. Customers

-- A. Policz, ilu jest klientów w poszczególnych krajach. Dane posortuj malejąco według ilości klientów

SELECT country, COUNT(*)
FROM Customers
GROUP BY country
ORDER BY COUNT(*);

-- B.  Policz, ilu jest klientów w poszczególnych krajach. Dane posortuj malejąco według ilości klientów, wyświetl tylko te kraje, w których jest co najmniej 10 klientów

SELECT country, COUNT(*)
FROM Customers
GROUP BY country
HAVING COUNT(*)>=10
ORDER BY COUNT(*);

-- 7. Products

-- A. Dla poszczególnych dostawców (SupplierID) oblicz maksymalną cenę.
SELECT SupplierID, MAX(price)
FROM Products
GROUP BY SupplierID;
-- B. Wyświetl supplierID, cenę oraz unit produktów sprzedawanych w paczkach (pole unit zawiera tekst 'pkg')
SELECT SupplierID, Price, unit
FROM Products
WHERE unit LIKE '%pkg%';

-- C. Dla poszczególnych dostawców (SupplierID) oblicz maksymalną cenę, do zapytania wybierz tylko produkty sprzedawane w paczkach
SELECT SupplierID, MAX(Price)
FROM Products
WHERE unit LIKE '%pkg%'
GROUP BY SupplierID;

-- D. Dla poszczególnych dostawców (SupplierID) oblicz maksymalną cenę, do zapytania wybierz tylko produkty sprzedawane w paczkach, ale wyświetl tylko te wiersze, w których maksymalna cena jest większa od 50
SELECT SupplierID, MAX(Price)
FROM Products
WHERE unit LIKE '%pkg%'
GROUP BY SupplierID
HAVING MAX(Price)>50;

-- 8. OrderDetails

-- A. Dla poszczególnych produktów (productID) podaj średnią, minimalną oraz maksymalną ilość sprzedawaną w ramach zamówienia (quantity)

SELECT productID, ROUND(AVG(quantity)), MIN(quantity), MAX(quantity)
from Order_Details
GROUP BY productID;

-- B. z powyższego zestawienia wybierz tylko te wiersze, w których ta średnia ilość jest mniejsza od 20
SELECT productID, ROUND(AVG(quantity)), MIN(quantity), MAX(quantity)
from Order_Details
GROUP BY productID
HAVING ROUND(AVG(quantity)) <20;

-- 9.  Customers. Z jakiego kraju jest najwięcej klientów? (jest tylko jeden taki kraj)
SELECT COUNT(CustomerID), country
FROM Customers
GROUP BY country
ORDER BY COUNT(CustomerID) DESC
LIMIT 1;

-- 10. Products. Wymień trzy id kategorii z najdroższymi produktami (o największej średniej)
SELECT CategoryID, ROUND(AVG(Price),2) as Srednia
FROM Products
GROUP BY CategoryID 
ORDER BY Srednia DESC
LIMIT 3;
