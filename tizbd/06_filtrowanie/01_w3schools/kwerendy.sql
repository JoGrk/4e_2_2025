-- Utwórz formularz z dwoma polami typu numerycznego, minimalna cena i maksymalna cena (placeholder), ustawione wartości domyślne na 0 i 1000 (jeśli potrafisz, wstaw maksymalną cenę dostępną w bazie). Po kliknięciu na przycisk Filtruj poniżej powinny być wyświetlone towary (nazwa towaru, nazwa kategorii i cena) w formie tabeli. Po starcie, jeśli nie została wybrana cena, powinny być wyświetlane wszystkie produkty.

-- wyświetla nazwę towaru, nazwę kategorii 

SELECT ProductName, CategoryName, Price
FROM products
    INNER JOIN categories USING(categoryID);

-- wyświetla nazwę towaru, nazwę kategorii o cenie pomiędzy 10 a 50

SELECT ProductName, CategoryName, Price
FROM products
    INNER JOIN categories USING(categoryID)
WHERE Price BETWEEN 10 AND 50;

-- maksymalna cena

SELECT CEIL(MAX(Price))
FROM Products;

-- Utwórz formularz z listą rozwijąna z nazwami dostawców. Po wybraniu pozycji powinna być wyświetlona lista produktów dostarczanych przez tego dostawcę (lista numerowana z nazwą produktu i ceną

-- id dostawcy i nazwa dostawcy
SELECT SupplierID, SupplierName
FROM suppliers;
-- lista produktów (nazwa i cena) dostarczanych przez dostawcę numer 1
SELECT  ProductName, Price
FROM products
WHERE SupplierID = 1;

-- Utwórz grupę opcji z nazwami firm spedycyjnych (kurierskich). Po kliknięciu wyświetlone są identyfikatory i daty zamówień obsługiwanych przez te firmy

-- shipperID i shipperName z shippers

SELECT shipperID, shipperName
FROM shippers;

-- identyfikatory i daty zamówień obsługiwanych przez shipperID 1 

SELECT orderID, orderDate
FROM orders
WHERE shipperID=1;