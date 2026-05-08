-- 1. tabela auta, wyświetl dwa pierwsze znaki numeru rejestracji wielkimi literami

SELECT UPPER(LEFT(TABLICA,2))
FROM Samochody;

-- 2 Z tabeli Handlowcy wyświetl wszystkie identyfikatory mailowe do znaku @ (substring_index)
SELECT SUBSTRING_INDEX(email, '@', 1)
FROM Handlowcy;

-- 3. Z tabeli Handlowcy wyświetl informacje o handlowcach w postaci: imie nazwisko, e-mail (CONCAT)

SELECT CONCAT(imie,' ',nazwisko,' ',email)
FROM Handlowcy;

-- 4. Wypisz inicjały wszystkich handlowców z tabeli Handlowcy z aliasem Inicjaly oraz ich imiona i nazwiska.
SELECT CONCAT(LEFT(imie,1), LEFT(nazwisko,1)) AS Inicjaly, imie, nazwisko
FROM Handlowcy;

-- 5.Z tabeli Producenci wypisz wszystkie nazwy producentów aót, które są długości 5 znaków. 

SELECT nazwa
FROM Producenci
WHERE CHAR_LENGTH(nazwa) = 5;