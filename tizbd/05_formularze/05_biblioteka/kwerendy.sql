-- A. dodające nowego czytelnika Zuzannę Kowalską, kod pusty ( '' )

INSERT INTO czytelnicy
(imie,nazwisko,kod)
VALUES
('Zuzanna','Kowalska','');

-- B. wyświetlające id książki, tytuł, imię i nazwisko autora

SELECT ksiazki.id,tytul,imie,nazwisko
FROM ksiazki
    INNER JOIN autorzy ON ksiazki.id_autor = autorzy.id;

-- C. usuwające książkę o id równym 37

DELETE FROM ksiazki
WHERE id = 37;

-- D. wyświetlającą wypożyczenia

SELECT wypozyczenia.id,tytul,nazwisko, data_oddania
FROM wypozyczenia
    INNER JOIN ksiazki ON wypozyczenia.id_ksiazka = ksiazki.id
    INNER JOIN czytelnicy ON wypozyczenia.id_czytelnik = czytelnicy.id;

-- E. zmieniającą datę oddania wypożyczenia o id równym 2 na dzisiejszą  (CURRENT_DATE)

UPDATE wypozyczenia
SET data_oddania = CURRENT_DATE
WHERE id = 2;


-- F. id, imię, nazwisko czytelnika 
SELECT id, imie , nazwisko
FROM czytelnicy;

-- G. dodające nowe wypożyczenie, data wypożyczenia bieżąca
INSERT INTO wypozyczenia
(id_czytelnik,id_ksiazka,data_wypozyczenia)
VALUES
(1,1,CURRENT_DATE);