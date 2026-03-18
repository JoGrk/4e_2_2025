-- 1. dodać nowy produkt nazwa, cena 
INSERT INTO products
(productName, price)
VALUES
('Podkładka', 20)


-- 2. zmienić cenę dla produktu o podanym id
UPDATE products 
SET price = 33
WHERE Productid=1;