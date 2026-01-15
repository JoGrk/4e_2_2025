SELECT customerName, City, Country
FROM customers
INNER JOIN orders USING(CustomerID)
WHERE orderdate like '%-07-%';