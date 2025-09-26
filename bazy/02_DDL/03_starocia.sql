USE 4e_2_projekty;
-- 1. zmień nazwę tabeli starocie  na samochody

ALTER TABLE starocie
RENAME TO samochody;
 
-- 2. dodaj kolumnę id_samochodu : całkowity, nie pusty, autoinkrementacja, na początku tabeli, klucz podstawowy

ALTER TABLE samochody
ADD id_samochodu int primary key auto_increment FIRST;
 
-- 3. Jako drugą dodaj kolumnę numer - tekst do 16 znaków
 ALTER TABLE samochody
 ADD
    numer varchar(16) AFTER id_samochodu;
-- 4. zmień nazwę pola mo na model (typ bez zmian)
ALTER TABLE samochody
CHANGE COLUMN
    mo model varchar(20);
 
-- 5. Zmodyfikuj (modify) tabelę tak, aby kolumna kolor znalazła się za kolumną model, a kolumna rok miała typ daty i znalazła się na pierwszym miejscu w tabeli (modify też może wymagać podania typu modyfikowanego pola)

ALTER TABLE samochody
MODIFY
    kolor varchar(20) AFTER model,
MODIFY
    rok date FIRST;
 
-- 6. Zmień nazwę kolumny koszt na cena, precyzja 7 znaków, dwa miejsca po przecinku
ALTER TABLE samochody
    CHANGE koszt cena decimal(7,2);

 
-- 7. Ustaw wartość domyślną dla pola rok na 2025

ALTER TABLE samochody
ALTER rok SET default '2025-09-26';
 
-- 8. Ustaw wartość domyślną dla pola kolor na 'czarny'

ALTER TABLE samochody
ALTER kolor SET default 'czarny';
 
-- 9. usuń kolumnę rok
 
 ALTER TABLE samochody
 DROP COLUMN rok;
-- 10. usuń wartość domyślną dla pola kolor

ALTER TABLE samochody
ALTER kolor DROP default;