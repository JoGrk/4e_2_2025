-- 1. Lista rozwijana z nazwami krajów z których pochodzą klienci (tylko tych krajów) - wyświetla nazwy klientów z tego kraju

-- nazwy krajów klientów, uporządkowane, bez powtórzeń
SELECT DISTINCT country
FROM Customers
ORDER BY Country;

-- wyświelta nazwy klientów z USA
SELECT CustomerName
FROM Customers
WHERE Country ='USA';