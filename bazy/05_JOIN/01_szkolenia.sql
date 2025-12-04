-- − Zapytanie 1: wybierające jedynie kod, nazwę i cenę kursów posortowane rosnąco według ceny

SELECT kod, nazwa, Cena
FROM kursy
ORDER BY cena;

-- − Zapytanie 2: wybierające imiona i nazwiska uczestników z tabeli uczestnicy oraz odpowiadające im daty z tabeli kursy_uczestnicy. Należy posłużyć się relacją.

SELECT imie, nazwisko, data 
FROM kursy_uczestnicy
    INNER JOIN uczestnicy ON kursy_uczestnicy.id_uczestnika = uczestnicy.id_uczestnika;

-- − Zapytanie 3: wybierające jedynie nazwy wszystkich kursów z tabeli kursy oraz odpowiadające im daty z tabeli kursy_uczestnicy.  Uporządkuj rosnąco według nazwy kursu. Należy posłużyć się relacją.

-- − Zapytanie 4: tworzące zestawienie, na którym widoczne są nazwy wszystkich kursów oraz liczby osób zapisanych na te kursy. Nazwa kolumny z liczbą osób (alias): „Zapisanych”

-- − Zapytanie 5 : wybierające imiona i nazwiska uczestników z tabeli uczestnicy, daty z tabeli kursy_uczestnicy oraz nazwy kursów z tabeli kursy. Należy posłużyć się relacją.