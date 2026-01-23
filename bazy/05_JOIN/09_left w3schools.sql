-- . Klienci, którzy niczego nie zamówili
SELECT CustomerName
FROM customers
    LEFT JOIN orders USING(CustomerID) 
WHERE OrderID IS NULL;


-- 2. Towary, które nie zostały kupione

SELECT ProductName
From Products
    LEFT JOIN Order_Details USING(ProductID)
WHERE OrderID IS NULL;



-- 3. czy są dostawcy, którzy nic nie dostarczyli?

SELECT SupplierName
FROM Suppliers
    LEFT JOIN products USING(SupplierID)
    WHERE productID IS NULL;

-- 4. Ile zamówień obsłużyli poszczególni pracownicy? Wyświetl dane malejąco według ilości zamówień. Czy są pracownicy, którzy nic nie obsłużyli?

SELECT COUNT(OrderID), LastName
FROM orders RIGHT JOIN em 
    

-- 5. wszystkich pracowników,  daty zamówień, wszystkich klientów

-- 6. interesują nas zamówienia klientów z Francji, Niemiec, Włoch. Wyświetl nazwę klienta, ilość zamówień. Uwzględnij także klientów, którzy nic nie zamawiali.

-- 7. Oblicz ile sztuk poszczególnych towarów zostało zamówione (zsumuj pole Quantity z  tabeli OrderDetails. Podaj nazwę towaru, cenę, łączną zamówioną ilość. Zestawienie posortuj według zamówionych ilości, uwzględnij tylko ilości mniejsze od 10. Uwzględnij tylko zamówione towary

-- 8. Oblicz łączną wartość zamówionych towarów (wykorzystaj pole cena i quantity). Wyświetl nazwę towaru, zamówioną wartość, dane posortuj malejąco według wartości towarów, wyświetl tylko pierwsze 10 wierszy. Uwzględnij wszystkie towary.

-- 9. Ile razy były zamawiane poszczególne towary? Wyświetl nazwę kategorii, nazwę towaru, policz ilość zamówień. Uwzględnij tylko zamówienia z 1997 roku. Wyświetl tylko te towary, które były zamawiane rzadziej niż 5 razy, w tym te, które nie zostały zamówione ani razu. Dane posortuj według nazwy kategorii, a następnie nazwy towaru