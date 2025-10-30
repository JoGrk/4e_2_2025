-- 1. Towary, których WAGA >150 kg;
SELECT *
FROM towar
WHERE waga > 150;

-- 2. całkowita wartość pola CENA jest trzycyfrowa;
SELECT *
FROM towar
WHERE CENA >= 100 AND CENA <1000;
-- 3. 23% podatek od jednej sztuki wynosi więcej niż 750 zł;
SELECT*
FROM towar 
WHERE 0.23*cena > 750;
-- 4. ILOSC < 5 i dodatkowo  CENA < 10 zł lub CENA >10000 zł;

SELECT * 
FROM towar
WHERE ilosc <5 and (cena <10 or cena >10000);

-- 5. cena 1 kg (CENA / WAGA) jest mniejsza od 10 zł i równocześnie większa od 5 zł;

SELECT *
FROM towar
WHERE cena/waga <10 AND cena/waga >5;

-- 6. całkowita masa (ILOSC * WAGA) jest większa od ceny, a mniejsza od potrójnej ceny;

SELECT *
FROM towar 
WHERE ilosc * waga > cena AND ilosc * waga < cena * 3;

-- 7. tylko ZAMÓWIONE towary, których waga =1;
SELECT*
FROM towar
WHERE zamow = 'PRAWDA' AND WAGA =1;
-- 8. nazwy towarów, których RODZAJ = NA i GD (również małymi literami);

SELECT*
FROM towar
WHERE rodzaj='NA' or  rodzaj='GD';

-- 9. wyświetl nazwy towarów, które nie zawierają litery a w NAZWIE;

SELECT Nazwa
FROM towar
WHERE Nazwa NOT LIKE '%a%';

-- 10 Wyprodukowane w 1997 roku;
SELECT *
FROM towar
WHERE data_prod LIKE'1997%';

-- 11 (DATA_PROD - od początku 1995 roku do końca 1998,) CENA jest dwucyfrowa, WAGA < 0.5;
SELECT *
FROM towar
WHERE data_prod BETWEEN '1995-01-01' AND '1998-12-31'
    AND CENA >=10 AND CENA <100
    AND WAGA <0.5;

-- 12 jw. wyświetl tylko NAZWĘ, RODZAJ I CENĘ;
SELECT Nazwa, Rodzaj, Cena
FROM towar
WHERE data_prod BETWEEN '1995-01-01' AND '1998-12-31'
    AND CENA >=10 AND CENA <100
    AND WAGA <0.5;

-- 13 rekordy w których CENA jest pomiędzy 12,50 a 35 i WAGA jest pomiędzy 0,5 a 2,5;

SELECT * 
FROM towar
WHERE cena BETWEEN 12.50 AND 35
    AND waga BETWEEN 0.5 AND 2.5;

-- 14 jak wyżej + wyświetl tylko NAZWĘ, RODZAJ i wartość (ILOSC * CENA) ;
SELECT NAZWA, RODZAJ, ilosc*cena
FROM towar
WHERE cena BETWEEN 12.50 AND 35
    AND waga BETWEEN 0.5 AND 2.5;

-- 15. jak wyżej + posortowane malejąco wg NAZWY ; 
SELECT NAZWA, RODZAJ, ilosc*cena
FROM towar
WHERE cena BETWEEN 12.50 AND 35
    AND waga BETWEEN 0.5 AND 2.5
ORDER BY NAZWA DESC    ;
-- 16. różne RODZAJE towarów (bez powtórek) ; (wskazówka: SELECT DISTINCT...)
SELECT DISTINCT rodzaj
FROM towar;
