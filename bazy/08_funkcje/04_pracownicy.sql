-- 1. Wyświetl aktualną datę. 

SELECT CURDATE();

-- 2. wyświetl bieżący czas 
SELECT CURTIME();

-- 3, Ilu pracowników zatrudniono w poszczególnych miesiącach. MONTH(data)  (MONTHNAME)

SELECT MONTH(data_zatrudnienia), COUNT(*)
FROM pracownicy
GROUP BY MONTH(data_zatrudnienia);


-- 4. Ile dni pracownicy byli zatrudnieni na poszczególnych stanowiskach (DATEDIFF(data1, data2) );  (historia_pracy)
SELECT DATEDIFF(koniec,poczatek),nazwa_stanowiska
FROM historia_pracy
    INNER JOIN stanowiska USING(stanowisko_ID);


-- 5. Wyświetl datę zatrudnienia w formacie dzień-miesiąc-rok (DATE_FORMAT(data, format)

SELECT DATE_FORMAT(data_zatrudnienia, '%d-%m-%Y')
FROM pracownicy;

-- 6. Pracownik o id 102 będzie pracował na stanowisku FI_MGR w dziale 20 od dzisiaj przez  miesiąc (DATE_ADD(data, interwał)
INSERT INTO historia_pracy
(pracownik_ID, stanowisko_ID, dzial_ID, poczatek, koniec)
VALUES
(102, 'FI_MGR', 20, CURRENT_DATE, DATE_ADD(CURRENT_DATE, INTERVAL 1 MONTH));

-- 7. Dodaj nowego pracownika, zatrudnionego dzisiaj (CURDATE())

INSERT INTO pracownicy
(pracownik_ID, imie, nazwisko, data_zatrudnienia)
VALUES
(900, 'Jakub', 'Szela', CURDATE());