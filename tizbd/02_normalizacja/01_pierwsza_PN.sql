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

SELECT DISTINCT miejscowosc
FROM Pracownicy;

-- C. Wypisz imiona i nazwiska pracowników posortowane według nazwisk (ORDER BY)

SELECT DISTINCT imie, nazwisko
FROM Pracownicy
ORDER BY nazwisko;

-- 1. Każda porządna tabela powinna posiadać klucz, dodaj pole jeśli trzeba. 
ALTER TABLE Pracownicy
ADD primary key(id_pracownika,jezyk);


-- 2. Jan Malinowski poznał nowy język (CSS) - dopisz do tabeli.

INSERT INTO Pracownicy
(id_pracownika,jezyk)
VALUES
(3,'CSS');


-- 3. Antoni Malinowski poznał nowy język - JavaScript i zmienił adres na Naklo nad Notecia, Staszica 1 - dopisz nowy wiersz do tabeli

INSERT INTO Pracownicy
VALUES
(2,'Antoni','Malinowski','JavaScript','Naklo Nad Notecia','Staszica', '1');

-- 4. Wyświetl imię i nazwisko pracowników znających język CSS

SELECT imie,nazwisko
FROM Pracownicy
WHERE jezyk='CSS';

-- 5. Gdzie mieszka Antoni Malinowski? Wypisz imię, nazwisko, ulicę, miejscowość
SELECT DISTINCT imie, nazwisko, adres, miejscowosc
FROM Pracownicy
WHERE imie='Antoni' and nazwisko='Malinowski';
-- 6. Usuwamy informację o znajomości PHP (bo tak)

DELETE FROM Pracownicy
WHERE jezyk = 'PHP';

-- 7. Sprawdź adres Jana Kowalskiego
SELECT DISTINCT miejscowosc,adres
FROM Pracownicy
WHERE imie='Jan' AND nazwisko='Kowalski';
-- 8. Zatrudniliśmy nowego pracownika, wpisz jego dane: Aleksander Nowowiejski, mieszka w Nowej Wsi, ulica Pogodna 16
INSERT INTO Pracownicy
VALUES
(5, 'Aleksander', 'Nowowiejski', null, 'Nowa Wies', 'ulica Pogodna', '16');
-- 9. Popraw strukturę tabeli tak, aby nie było tych problemów (redundacja, anomalia wstawiania, aktualizacji, usuwania)

