-- ODDZIALY
-- NrRozlicz (klucz)
-- Miejscowosc
-- Nr
-- Region

-- PRACOWNICY
-- Nr (klucz)
-- Nazwisko
-- Imie
-- NrRozliczOddz

-- PRODUKTY
-- Nazwa (klucz)
-- Punktacja

-- SPRZEDAZ
-- NrPracownika
-- NazwaProduktu
-- Ilosc

 

-- WYROZNIENI
-- NrPracownika (klucz)

-- Złączenia
-- 1.Imię i nazwisko pracownika oraz region, w którym pracuje. Dane wybierz z tabel: Pracownicy oraz Oddziałl
SELECT imie, nazwisko, region
FROM pracownicy
    INNER JOIN oddzialy ON oddzialy.NrRozlicz = pracownicy.NrRozliczOddz;

--  2.Imię i nazwisko pracownika, nazwa i ilość sprzedanych produktów. Dane wybierz z tabel  Pracownicy i Sprzedaż. 
SELECT imie, nazwisko, NazwaProduktu, Ilosc
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.NR = sprzedaz.NrPracownika;


--  3.Imię i nazwisko pracownika, nazwa i punktacja produktu oraz ilość sprzedanych produktów. Pracownicy, Sprzedaz i Produkty

SELECT imie, nazwisko, Nazwa, Punktacja
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.nr = sprzedaz.NrPracownika
    INNER JOIN produkty ON produkty.nazwa = sprzedaz.NazwaProduktu;

-- 4.Imię i nazwisko pracownika, nazwa i wartość punktów ze sprzedaży produktu. Wartość obliczysz mnożąc Ilosc i Punktacje.  Potrzebne tabele to Pracownicy,  Sprzedaż i Produkty. 
SELECT imie,nazwisko,nazwa,(ilosc*punktacja) as wartosc
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.nr = sprzedaz.NrPracownika
    INNER JOIN produkty ON produkty.nazwa = sprzedaz.NazwaProduktu;

-- 5.Imię i nazwisko pracownika, nazwa i wartość punktów ze sprzedaży produktu – tylko dla pracowników z oddziału w Warszawie. Potrzebne tabele to Pracownicy,  Sprzedaż, Produkty, Oddzialy
SELECT imie, nazwisko, nazwa, (ilosc*punktacja) AS wartosc
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.nr = sprzedaz.NrPracownika
    INNER JOIN produkty ON produkty.nazwa = sprzedaz.NazwaProduktu
    INNER JOIN oddzialy ON pracownicy.NrRozliczOddz= oddzialy.NrRozlicz
WHERE Miejscowosc ='Warszawa';

-- 6.Imiona, nazwiska i numery pracowników wyróżnionych w zeszłym okresie.

SELECT imie, nazwisko, Nr
FROM pracownicy
    INNER JOIN wyroznieni ON pracownicy.Nr = wyroznieni.NrPracownika;