-- Generate a random number. This function returns a random floating-point value between 0 and 1. 

-- RAND(), RAND(N)

-- SELECT * FROM my_table ORDER BY RAND() LIMIT 10;

-- Losuje jednego ucznia

SELECT *
FROM uczniowie
ORDER BY RAND()
LIMIT 1;

-- Oblicza średni rok urodzenia, z dokładnością do jednego miejsca po przecinku
SELECT ROUND(AVG(YEAR(data_ur)),1)
FROM uczniowie;

-- Wyświetla najmłodszych rocznikowo uczniów (największy rok urodzenia)
SELECT MAX(YEAR(data_ur))
FROM uczniowie

SELECT *
FROM uczniowie
WHERE YEAR(data_ur) = (
    SELECT MAX(YEAR(data_ur))
    FROM uczniowie
);
-- ile ocen zdobyli uczniowie w poszczególnych miesiącach? Obok wyświetl średnią ocen z dokładnością do dwóch miejsc po przecinku.  wyświetl nazwę miesiąca słownie

SELECT MONTHNAME(data), COUNT(*), ROUND(AVG(ocena),2)
FROM oceny
GROUP BY MONTHNAME(data);



-- Wylosuj  trzy przedmioty, wyświetl id przedmiotu  i nazwę
SELECT *
FROM przedmioty
ORDER BY RAND()
LIMIT 3;

-- wyświetl losową liczbę, mniejsza od 100. 

SELECT RAND()*100;

-- Wyświetl losową liczbę całkowitą, mniejszą od 100 (zaokrąglenie w dół)

SELECT FLOOR(RAND()*100);

-- wyświetl losową liczbę z zakresu od 1 do 5
SELECT FLOOR(RAND()*5)+1;

-- wyświetl losowego ucznia, podaj imię, nazwisko, klasę i nazwisko wychowawcy:
SELECT uczniowie.imie, uczniowie.nazwisko, uczniowie.klasa, nauczyciele.nazwisko
FROM uczniowie
    INNER JOIN klasy ON klasy.nazwa = uczniowie.klasa
    INNER JOIN nauczyciele ON nauczyciele.id = klasy.wychowawca
ORDER BY RAND()
LIMIT 1;

-- Nauczyciel Jan Nowak wystawił z informatyki dla Danieli Mroczka losową ocenę z odpowiedzi
INSERT INTO oceny
VALUES 
    (
       21,
       FLOOR(RAND()*(6-1)+1),
       (
        SELECT id
        FROM uczniowie
        WHERE imie = 'Daniela' AND nazwisko = 'Mroczek'
       ),
       (
        SELECT id 
        FROM przedmioty
        WHERE nazwa = 'informatyka'
       ),
       (
        SELECT id
        FROM nauczyciele
        WHERE imie = 'Jan' AND nazwisko = 'Nowak'
       ),
       CURRENT_DATE,
       'sprawdzian',
       null
    );