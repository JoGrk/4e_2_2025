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
 
-- 5. Wyświetl nazwy towarów, nazwy kategorii i idzamówień
 
-- 6. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i idklienta
 
-- 7. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i nazwę firmy klienta
 
-- 8. Ile razy był zamawiany dany produkt? (podaj nazwy produktów)
 
-- 9. Wyświetl nazwy firm klientów, daty zamówień i nazwy towarów