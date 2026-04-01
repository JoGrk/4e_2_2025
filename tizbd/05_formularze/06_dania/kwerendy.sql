-- Dodaje nowe danie do tabeli dania (id typu, nazwa, cena) (4, 'Herbata', 3)

INSERT INTO dania (typ,nazwa,cena)
VALUES
(4,'Herbata',3);

-- Wyświetla dostępne dania (wybierz wersję): 
-- nazwy typów dań i nazwy dań wraz z ceną (tabela dania i typy_dan)

SELECT dania.nazwa AS nazwa_dania , typy_dan.nazwa AS typ,cena
FROM dania
    INNER JOIN typy_dan ON dania.typ = typy_dan.id;

-- lub niżej punktowane zapytanie wyświetlajace tylko id typu, nazwę i cenę z tabeli dania 

-- Wyświetla id i nazwę z tabeli typy_dan
SELECT id, nazwa
FROM typy_dan;