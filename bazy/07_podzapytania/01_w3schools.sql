-- select
-- 1.  Wypisać nazwę wszystkich towarów, cenę i pole ze średnią cenę wszystkich towarów
SELECT ROUND(AVG(Price),2)
FROM products;

SELECT ProductName, Price,(SELECT ROUND(AVG(Price),2)
FROM products) as srednia_cena
FROM products;

-- 2 . Wypisać nazwę towaru, cenę i różnicę między jego ceną a średnią ceną wszystkich towarów
SELECT
    ProductName,
    Price,
    ROUND(Price - (SELECT AVG(Price) FROM products),2)  as roznica
FROM products;

-- 3. wypisze nazwę towaru, cenę oraz ile razy jego cena jest większa od najmniejszej ceny wszystkich towarów (stosunek ceny do ceny minimalnej)
    SELECT
        ProductName,
        Price,
        ROUND(Price / (SELECT MIN(Price)FROM products)) as iloraz_ceny
    FROM products;
    
-- where
-- 4.  wybieramy te zamówienia, w których łączna ilość zamówionych produktów jest mniejsza od średniej ilości zamawianych produktów
SELECT AVG(Quantity)
FROM Order_details

SELECT 
    OrderID,
    SUM(Quantity)
FROM Order_details
GROUP BY OrderID  
HAVING SUM(Quantity) < (SELECT AVG(Quantity)
                        FROM Order_details)




-- 5. zapytanie zwracające nazwę najtańszego towaru
SELECT ProductName
FROM products
WHERE Price IN (
    SELECT MIN(Price)
    FROM products
);

-- 6. zapytanie zwracające nazwy i ceny wszystkich produktów z kategorii Seafood o cenach niższych niż średnia cena produktów

SELECT ProductName, price
FROM products
    INNER JOIN categories USING(categoryID)
WHERE categoryName = 'Seafood'
    AND price < (SELECT AVG(price)
                    FROM products
                );

-- 7. wyświetl nazwę i cenę towarów, które zostały zamówione (kiedykolwiek) w ilości co najmniej 15 sztuk (Quantity )

SELECT ProductName,Price
FROM products
WHERE ProductID IN(
    SELECT ProductID
    FROM Order_details
    WHERE Quantity <= 15
);

-- 8. wyświetl nazwę i cenę towarów, które zawsze są zamawiane w ilości co najmniej 15 sztuk (Quantity ) (i były co najmniej raz zamówione)

-- 9. Wyświetl nazwiska i imiona klientów (Customer Name), którzy nie korzystali z firmy  Speedy Express

-- 10. Wszystkie informacje o klientach, mających tę samą wartość w polu CustomerName (może wpisanych przez pomyłkę?)

-- update

-- 11 Podnieś o 10% ceny produktów z kategorii  "Confections"

-- 12  Dla zamówień klientów z UK zmień spedytora na "United Package"

-- 13. Dodaj nowy produkt z kategorii Confections dostarczony przez Exotic Liquid 

