-- 1. Utwórz bazę firma
CREATE DATABASE 4e_2_firma;
USE 4e_2_firma;
-- 2. Utwórz tabelę Pracownicy

-- imię nazwisko
-- język
-- adres

CREATE TABLE Pracownicy (
    imie_nazwisko varchar(255),
    jezyk varchar(255),
    adres varchar(255)
)

-- 3. wpisz dane:

INSERT INTO Pracownicy
    VALUES

('Jan Kowalski', 'PHP', 'os. Wł. Łokietka 3/4 Naklo nad Notecia'),
('Antoni Malinowski', 'HTML CSS PHP' , 'Chrzastowo 1'),
('Jan Malinowski',' Java  HTML',' ul. Ogrodowa 2, Nowa Wies Wielka'),
('Andrzej Ziemianski', 'JavaScript CSS HTML','ul. Sowia 5, Nowa Wies');
-- 4. Wykonaj zapytania

-- A. Wypisz pracowników, którzy znają język PHP
SELECT*
FROM Pracownicy
WHERE jezyk LIKE '%PHP%';
-- B. Wypisz pracowników, którzy znają język Java
SELECT*
FROM Pracownicy
WHERE jezyk LIKE '%Java%';
-- C. Wypisz pracowników mieszkających w Nakle nad Notecią
SELECT*
FROM Pracownicy
WHERE adres LIKE '%Naklo nad Notecia%';
-- D. Wypisz pracowników mieszkających w Nowej Wsi
SELECT *
FROM Pracownicy
WHERE adres LIKE '%Nowa Wies';
-- E. Wypisz wszystkie nazwy miejscowości pracowników
SELECT adres
FROM Pracownicy;

-- C. Wypisz imiona i nazwiska pracowników posortowane według nazwisk (ORDER BY)
SELECT *
FROM Pracownicy
ORDER BY imie_nazwisko;
-- 5. Jeśli masz problemy z wykonaniem zapytań, popraw strukturę tabeli i wpisz na nowo dane - tak, aby tych problemów już nie mieć

DROP TABLE Pracownicy;

CREATE TABLE Pracownicy(
    id_pracownika int,
    imie varchar(255),
    nazwisko varchar(255),
    jezyk varchar(255),
    miejscowosc varchar(255),
    adres varchar(255),
    numer_domu varchar(255)
);

INSERT INTO Pracownicy
(id_pracownika, imie,nazwisko,jezyk,adres,numer_domu,miejscowosc)
    VALUES

(1,'Jan', 'Kowalski', 'PHP', 'os. Wł. Łokietka', '3/4', 'Naklo nad Notecia'),
(2, 'Antoni', 'Malinowski', 'HTML' , '','1', 'Chrzastowo'),
(2, 'Antoni', 'Malinowski', 'CSS' , '','1', 'Chrzastowo'),
(2, 'Antoni', 'Malinowski', 'PHP' , '','1', 'Chrzastowo'),
(3, 'Jan', 'Malinowski','HTML','ul. Ogrodowa', '2', 'Nowa Wies Wielka'),
(3, 'Jan', 'Malinowski','Java','ul. Ogrodowa', '2', 'Nowa Wies Wielka'),
(4, 'Andrzej', 'Ziemianski', 'HTML','ul. Sowia', '5', 'Nowa Wies'),
(4,'Andrzej', 'Ziemianski', 'CSS','ul. Sowia', '5', 'Nowa Wies'),
(4, 'Andrzej', 'Ziemianski', 'JavaScript','ul. Sowia', '5', 'Nowa Wies');

SELECT*
FROM Pracownicy
WHERE jezyk ='Java';

SELECT*
FROM Pracownicy
WHERE miejscowosc='Nowa Wies';

SELECT distinct miejscowosc
FROM Pracownicy;