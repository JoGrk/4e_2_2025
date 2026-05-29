-- 1. Wyświetl aktualną datę w formacie miesiąc dzień, rok
-- przykładowa data: 2021-05-26
-- wynik: May 26, 2021 rok
SELECT DATE_FORMAT(CURDATE(),'%M %d, %Y rok');

-- 2. wyświetl aktualną datę w formacie dzień miesiac rok

-- przykładowa data: 2021-05-26
-- wynik: Wednesday May 2021r.
SELECT DATE_FORMAT(CURDATE(), '%W %M %Yr.','pl_PL');
-- 3. Wyświetl imiona i nazwiska pracowników zatrudnionych w czerwcu i sierpniu, wraz z miesiącem i rokiem zatrudnienia
SELECT imie,nazwisko,MONTHNAME(data_zatrudnienia),YEAR(data_zatrudnienia)
FROM pracownicy
WHERE MONTH(data_zatrudnienia) IN (6,8);
-- 4. Wyświetl imion, nazwiska i daty zatrudnienia pracowników w formacie amerykańskim (miesiąc/dzień/rok, np. 05/26/2021)

SELECT imie, nazwisko, DATE_FORMAT(data_zatrudnienia, '%m/%d/%Y')
FROM pracownicy;

-- 5. Zaktualizuj bazę danych - zwiększ wszystkie daty o 20 lat
UPDATE pracownicy
SET data_zatrudnienia = DATE_ADD(data_zatrudnienia,INTERVAL 20 YEAR);


-- 6. Zaimportuj dane pracowników filii. Dodaj dane z tej tabeli do tabeli pracownicy.  (STR_TO_DATE)

INSERT INTO pracownicy
SELECT 
    pracownik_ID, imie, nazwisko, EMAIL, telefon,
    STR_TO_DATE(data_zatrudnienia, '%d/%m/%Y'),
    stanowisko_ID, zarobki, prowizja, szef_ID, dzial_ID
FROM pracownicy_filia;


-- 7. Jak wstawić dane, jeśli mamy datę podaną w formacie brytyjskim? dodaj nowego pracownika, data zatrudnienia to 06/05/2021


insert into pracownicy
(pracownik_ID, imie, nazwisko, data_zatrudnienia, EMAIL)
values
(390, 'Stanisław', 'Wyspiański', STR_TO_DATE('29.05.2026', '%d.%m.%Y'), 'abccccc');