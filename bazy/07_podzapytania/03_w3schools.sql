-- 1. Wyświetl pracowników zarabiających więcej niż średnia
SELECT name,salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);



-- 2. Wyświetl nazwy wraz z ceną najdroższych produktów

SELECT  product_name, price
FROM Products
WHERE price = (
    SELECT MAX(price)
    FROM Products
);

-- 3. Wyświetl dane klientów, którzy nie złożyli żadnego zamówienia
SELECT id, name
FROM customers
WHERE id NOT IN(
    SELECT customer_id
    FROM Orders
);

-- 4. Wyświetl dane osób pracujących w tym samym dziale co Bob

SELECT id, name
FROM Employees
WHERE department_id = (
    select department_id
    from Employees
    where name='bob'
);

-- 5. Wyświetl dane pracowników,  którzy nie obsłużyli żadnego zamówienia

SELECT id, name
FROM Employees
WHERE ID NOT IN (
    SELECT employee_ID
    FROM orders
);
 

-- 6. Wyświetl nazwy działów,  które nie mają żadnego pracownika

SELECT department_name
FROM departments
WHERE id NOT IN(
    SELECT department_id
    FROM Employees
);

-- 7. Wyświetl dane pracowników zarabiających więcej niż wynosi średnia zarobków w ich dziale

SELECT id, name
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees e
    WHERE e.department_id = Employees.department_id
);

-- 8. Wyświetl dane pracowników,  których pensje sa najwyższe w ich dziale

SELECT *
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees e
    WHERE e.department_id = Employees.department_id
);