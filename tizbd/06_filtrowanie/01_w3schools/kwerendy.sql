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
