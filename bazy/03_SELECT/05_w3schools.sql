-- 1. Wyświetl nazwy firm klientów z Niemiec. (nazwa,kraj, miasto)

SELECT CustomerName, Country, City
FROM customers
WHERE Country = 'Germany';

-- 2. Ogranicz do tych z Berlina.
SELECT CustomerName, Country, City
FROM customers
WHERE Country = 'Germany' AND City = 'Berlin';
-- 3. Wyświetlamy nazwy firm (kraj, miasto) klientów z Niemiec, ale nie z Berlina.
SELECT CustomerName, Country, City
FROM customers
WHERE Country = 'Germany' AND City != 'Berlin';
-- 4. Nazwy firm (kraj, miasto) z miasta na literę A.
SELECT CustomerName, Country, City
FROM customers
WHERE City LIKE 'A%';

-- 5. Nazwy firm (kraj, miasto) z miasta, które na drugim miejscu ma literę a.

SELECT CustomerName, Country, City
FROM customers
WHERE City LIKE '_a%';

-- 6. Nazwy firm (kraj, miasto) z USA, Niemiec, Kanady i Francji.
SELECT CustomerName, Country, City
FROM customers
WHERE Country IN ('USA', 'Germany', 'Canada', 'France');

-- 7. Z kraju o nazwie co najmniej czteroliterowej

SELECT CustomerName, Country, City
FROM customers
WHERE Country LIKE '____%';

-- 8. Wyświetl dane o zamówieniach z lipca dowolnego roku. 
SELECT*
FROM orders
WHERE OrderDate LIKE '%-07-%';
-- 9. wyświetl dane o zamówieniach dokonanych w pierwszych 10 dniach lipca 1996
SELECT*
FROM orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-10';

-- 10 Wyświetl produkty uporządkowane według ceny rosnąco (najpierw najtańsze). 

SELECT ProductName, Price
FROM products
ORDER BY price;

-- 11. Wyświetl pięć najdroższych produktów
SELECT ProductName, Price
FROM products
ORDER BY price desc
LIMIT 5;
-- 12. Wyświetl towary (nazwy i ceny) o cenach pomiędzy 10 a 100
SELECT ProductName, Price
FROM products
WHERE price BETWEEN 10 AND 100;
-- 13. Jak wyżej, ale tylko towary dostawców o kodzie 2.
SELECT ProductName, Price
FROM products
WHERE SupplierID=2 
    AND price BETWEEN 10 AND 100;

-- 14. Jak wyżej, ale obok dostawców o kodzie 2  wybierz także 8, 7,4 i 3

SELECT ProductName, Price
FROM products
WHERE SupplierID IN (8, 7, 4, 3)
    AND price BETWEEN 10 AND 100;

-- 15. Wyświetl 10 najtańszych produktów posortowanych według nazwy
SELECT ProductName, Price
FROM products
ORDER BY Price, ProductName 
LIMIT 10;

-- 16. Wyświetl produkty z kategorii 1,3,5,7, których cena jest mniejsza niż 10 lub większa od 50

SELECT ProductName, Price, CategoryID
FROM products
WHERE CategoryID IN (1, 3, 5, 7)
    AND (Price<10 OR Price>50);

-- 17. Wyświetl nazwę produktu oraz cenę netto dla produktów z kategorii 5 lub 7
SELECT ProductName, Price*0.77, CategoryID
FROM products
WHERE CategoryID IN (5,7);
-- 18. Wyświetl id klienta, numer zamówienia oraz miesiąc zamówienia dla zamówień z ostatniego kwartału. W zestawieniu powinny pojawić się dane z dowolnego roku.
SELECT CustomerID, OrderID, Month(OrderDate)
FROM orders

