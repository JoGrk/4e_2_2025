-- use 4e_2_sprzezenia1_2;

-- 3. Które osoby figurujące w bazie jako czytelnicy, nie wypożyczyły ani razu choćby jednej książki? (tabele: Czytelnik, Wypożyczenia, pola w kwerendzie: Czytelnik_Imie, Czytelnik_Nazwisko, Data_wypozyczenia)

 SELECT Czytelnik_Imie, Czytelnik_Nazwisko, Data_wypozyczenia
 FROM Czytelnik LEFT JOIN wypozyczenia ON wypozyczenia.Czytelnik_ID = Czytelnik.ID
WHERE Data_wypozyczenia IS NULL;


-- 4. Kto nie ma kota? (Tabele: Ludzie, Koty, pola w kwerendzie: Imie, Nazwisko, Imie_kota, Rasa)

SELECT Imie, Nazwisko, Imie_kota, Rasa
FROM Ludzie
    LEFT JOIN Koty ON Koty.ID_wlasciciela=Ludzie.ID
WHERE Imie_kota IS NULL;

-- 5.Jak ma na imię kot bez właściciela?   (Tabele: Ludzie, Koty, pola w kwerendzie: Imie_kota oraz nie wyświetlane pole Nazwisko - tylko dla kryterium) 

SELECT Imie, Nazwisko, Imie_kota, Rasa
FROM Ludzie
    RIGHT JOIN Koty ON Koty.ID_wlasciciela=Ludzie.ID
WHERE Ludzie.ID IS NULL;
 

-- 6. Wyświetl informacje o uczniach, którzy nie mają ocen  (tabele: Uczniowie, Oceny, pola w kwerendzie: imie, nazwisko, ocena, data)

SELECT imie, nazwisko, ocena, data
FROM uczniowie
    LEFT JOIN oceny ON uczniowie.IDucznia=oceny.IDucznia
WHERE ocena IS NULL

-- 7. Wyświetl informacje o przedmiotach, z których nie wystawiono żadnych ocen (tabele: Oceny, Przedmioty, pola w kwerendzie: Nazwa_przedmiotu, Nazwisko_nauczyciela, Data)

SELECT Nazwaprzedmiotu, Nazwisko_naucz, Data
FROM Oceny RIGHT JOIN Przedmioty USING(IDprzedmiotu)
WHERE ocena IS NULL;

--------------------------------------------------------------------
USE 4e_2_sprzezenia2_2

-- 8. Właściciel wypożyczalni filmów (online) potrzebuje raportu o ich popularności (ile razy dany film został wypożyczony). Niestety przygotowane zestawienie nie uwzględniało filmów nigdy nie wypożyczonych. Napraw to. Przygotuj kwerendę wyświetlającą tytuły filmów nigdy nie wypożyczonych (tabele: Filmy, Wypożyczenia; pola w kwerendzie: Tytul, Gatunek, Data_wyp)\

SELECT Tytul, Gatunek, Data_wyp
FROM Filmy 
    LEFT JOIN Wypozyczenia USING(ID_filmu)
WHERE Data_wyp IS NULL;

 

-- 9. Poprawiasz bazę danych pewnej przychodni. Twoim zadaniem jest wymusić więzy integralności między tabelami Pacjenci i Wizyty.

 ALTER TABLE Pacjenci
 ADD primary key(ID_pacjenta);

 ALTER TABLE Wizyty
 ADD FOREIGN KEY(ID_pacjenta) references Pacjenci(ID_pacjenta);

-- A. Odszukaj wiersze, które naruszają więzy integralności (tzn.w tabeli Wizyty występuje ID_pacjenta, którego nie ma w tabeli Pacjenci)

SELECT
-- B. Być może w bazie brakuje pacjenta pacjenta Antoniego Mizerskiego (ubezpieczony), którego ktoś omyłkowo usunął z tabeli Pacjenci. Niestety nikt nie pamięta jaki miał identyfikator. Jeśli go odszukasz (przygotuj kwerendę), to dopisz Antoniego do tabeli Pacjenci.