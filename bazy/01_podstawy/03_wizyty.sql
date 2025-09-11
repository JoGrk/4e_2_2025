-- Utwórz bazę wizyty i uzyj jej

mysql -u root
create database 4e_2_wizyty;
use  4e_2_wizyty;


-- Dodaj do bazy tabelę (tabele), w których będziesz zapisywać informacje o wizytach: kto (imię i nazwisko, telefon), kiedy wizyta, czego dotyczy (leczenie, profilaktyka, kontrola)

create table wizyty(
    imie varchar(255),
    nazwisko varchar(255),
    telefon varchar(255),
    data_wizyty date,
    rodzaj varchar(255)
);

-- Wpisz dane do tabel. Jeden klient był dwa razy (leczenie, profilaktyka), drugi raz (kontrola) 

insert into wizyty
values
('Jan','Kowalski','354654457','2025-12-24','profilaktyka');

insert into wizyty
values
('Jan','Kowalski','354654457','2025-12-30','leczenie');

insert into wizyty
values
('Sebastian','Badura','354654457','2025-12-31','kontrola');

-- Usuń wizytę drugiego klienta (dane klienta powinny pozostać w bazie)

delete from wizyty 
where imie='Sebastian';

-- Dodaj wizytę pierwszego klienta, jeszcze raz profilaktyka - ale to trudne słowo i zrób w nim literówkę

insert into wizyty
values
('Jan','Kowalski','354654457','2025-12-24','profilatyka');

-- Wyświetl wszystkie wizyty profilaktyczne
SELECT * 
FROM wizyty
WHERE rodzaj='profilaktyka';


-- Popraw strukturę tabel bazy wizyty