-- 1. Lista rozwijana z nazwami krajów z których pochodzą klienci (tylko tych krajów) - wyświetla nazwy klientów z tego kraju

-- nazwy krajów klientów, uporządkowane, bez powtórzeń
SELECT DISTINCT country
FROM Customers
ORDER BY Country;

-- wyświelta nazwy klientów z USA
SELECT CustomerName
FROM Customers
WHERE Country ='USA';

-- 2. pole tekstowe, gdzie podajemy początek nazwy produkty i są wyświetlone produkty razem z ceną. Uwaga, ceny podajemy w zł, z dokładnością do dwóch miejsc po przecinku. Jeśli nic nie będzie wpisane do pola, powinny być wyświetlone wszystkie produkty. Jeśli brak produktów pasujących do wzorca, powinien być wyświetlony odpowiedni komunikat. 
SELECT ProductName, FORMAT(Price, 2, 'pl_PL')
FROM Products
WHERE ProductName LIKE 'Ch%';

-- wyswietl produkty rozpoczynjące się od Ch 

-- Dwie grupy opcji: od i do. W pierwszej opcje cena minimalna i średnia (obliczone na podstawie danych z bazy), w drugiej opcje cena średnia i maksymalna. Następnie powinny być wyświetlone produkty o cenie mieszczącej się w wybranym zakresie cenowym.

-- wyswietl produkty o cenie pomiędzy 10 a 50

SELECT ProductName, FORMAT(Price, 2, 'pl_PL') AS Price
FROM Products
WHERE Price BETWEEN 10 AND 50;


-- wyświetlające miniamlną, średnią i maksymalną cenę. Dwa miejsca po przecinku, format polski

SELECT 
FORMAT(MIN(Price), 2, 'pl_PL') AS min_price,
FORMAT(AVG(Price), 2, 'pl_PL') AS avg_price,
FORMAT(MAX(Price), 2, 'pl_PL') AS max_price
FROM Products;
