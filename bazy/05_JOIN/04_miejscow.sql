USE 4e_2_miejscow_2
-- 1. Wyświetl nazwisko i imię oraz adres osób które:
-- A. płacą mniej niż 50;
SELECT imie, nazwisko, adres
FROM osoba
    INNER JOIN dom USING(Nrtel)
WHERE oplaty<50;



-- B. mieszkają w miejscowości o numerze 1, 2, 3;
SELECT imie, nazwisko, adres
FROM osoba
    INNER JOIN dom USING(Nrtel)
WHERE nrmiejscow IN (1,2,3);
-- C. są głównymi abonentami;
SELECT imie, nazwisko, adres
FROM osoba
    INNER JOIN dom USING(Nrtel)
WHERE czy_glowny = 'prawda';

-- 2. Wyświetl nazwisko, imię i zawód osób, które:
-- A. płacą za telefon między 40 a 80;
SELECT imie, nazwisko, zawod
FROM osoba
    INNER JOIN Praca USING(Symbzatr)
    INNER JOIN Dom USING(Nrtel)
WHERE Oplaty between 40 and 80;
-- B. mieszkają w miejscowości, której nazwa zaczyna się na ' P' lub na 'K';
SELECT imie, nazwisko, zawod
FROM osoba
    INNER JOIN Praca USING(Symbzatr)
    INNER JOIN Dom USING(Nrtel)
    INNER JOIN Miejscow USING(Nrmiejscow)
WHERE nazwa LIKE 'P%' OR nazwa LIKE 'K%';
-- C. w numerze telefonu występuje cyfra 3 na trzecim miejscu;
SELECT imie, nazwisko, zawod
FROM osoba
    
    INNER JOIN Praca USING(Symbzatr)
WHERE Nrtel LIKE '__3%';

-- 3. Wyświetl nr telefonu, nazwisko, miejscowość adres i zawód osoby, która:
-- A. pracują w miejscu, gdzie w polu NAZWA znajduje się litera 'u';
SELECT Nrtel, nazwisko, nazwa, zawod
FROM osoba
    INNER JOIN Praca USING(Symbzatr)
    INNER JOIN Dom USING(Nrtel)
    INNER JOIN Miejscow USING(Nrmiejscow)
WHERE nazwa LIKe '%u%';
-- B. mieszka w miejscowości, w której serwis prowadzi firma, której nazwa kończy się na 'A' (lub 'a') i w polu ADRES ma literę 'o';
SELECT nazwisko, nazwa, zawod, Nrtel
FROM dom
    INNER JOIN Miejscow USING(Nrmiejscow)
    INNER JOIN Osoba USING(Nrtel)
    INNER JOIN Praca USING(Symbzatr)
WHERE serwis LIKE '%A' AND adres LIKE '%o%';


-- C. pole SYMBZATR kończy się dużą lub małą literą 'm' lub 'k' ;
SELECT nazwisko, nazwa, zawod, Nrtel
FROM dom
    INNER JOIN Miejscow USING(Nrmiejscow)
    INNER JOIN Osoba USING(Nrtel)
WHERE Symbzatr LIKE '%k' OR Symbzatr LIKE '%m'