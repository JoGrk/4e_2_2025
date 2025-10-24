
-- A. Wyświetl napoje, których składnikiem głównym jest woda sodowa.
 DESC proste_drinki;
 SELECT skladnik_glowny,nazwa
 FROM proste_drinki
 WHERE skladnik_glowny ='woda sodowa';

-- B. Wyświetl wszystkie napoje, których głównym składnikiem jest dowolny sok.

 SELECT skladnik_glowny,nazwa
 FROM proste_drinki
 WHERE skladnik_glowny like'sok%';
 
-- C. Wyświetl wszystkie napoje, których głównym składnikiem jest dowolny sok lub nektar w ilości co najmniej 60 (ilosc1) ( ilość obowiązuje i przy soku, i przy nektarze)

SELECT skladnik_glowny, nazwa, ilosc1
FROM proste_drinki
WHERE (skladnik_glowny LIKE 'SOK%' or skladnik_glowny LIKE 'nektar%')
    AND ilosc1>=60;
 
-- D. Wyświetl wszystkie napoje, których składnikiem dodatkowym jest dowolny sok w ilości 22 (ilosc2)

SELECT skladnik_glowny, nazwa, ilosc2
FROM proste_drinki
WHERE skladnik_dodatkowy like 'sok%' and ilosc2 = 22;
 
-- E. Wyświetl wszystkie napoje, których nazwa zaczyna się od B i kończy na n

SELECT nazwa
FROM proste_drinki
WHERE nazwa LIKE 'B%n';
 
-- F. Wyświetl wszystkie napoje, w których ilość dodatkowego składnika (ilosc2) jest wartością z zakresu od 30 do 180
 
SELECT nazwa, ilosc2
FROM proste_drinki
WHERE ilosc2 BETWEEN 30 AND 180;

-- G. Wyświetl nazwy napojów, w których składnikiem głównym lub dodatkowym jest herbata.

SELECT nazwa,skladnik_dodatkowy,skladnik_glowny
FROM proste_drinki
WHERE skladnik_dodatkowy LIKE '%herbata' or skladnik_glowny LIKE '%herbata';