-- 1. Tworzysz bazę danych osób, które chcą nawiązać ze sobą kontakt. Dane: imię, nazwisko, zainteresowania. Utwórz bazę i tabele.

mysql -u root
create database 4e_2_Kontakty;
show databases;
use 4e_2_Kontakty;

CREATE TABLE kontakty(
    id int primary key auto_increment,
    imie varchar(255),
    nazwisko varchar(255),
    zainteresowania varchar(255)
);

desc kontakty


-- 2. Dodaj dane trzech osób: pierwsza ma dwa zainteresowania (bieganie, granie), druga jedno (serfowanie), trzecia cztery (granie, zwiedzanie, bieganie, łowienie ryb)

insert into kontakty
(imie, nazwisko,zainteresowania)
values
('Jan','Kowalski','bieganie, granie'),
('Maciej','Malinowski','OTOMOTO'),
('Filip','Beger','granie, zwiedzanie, bieganie, łowienie ryb');






-- 3. Wyświetl wszystkie osoby które interesują się serfowaniem

SELECT * 
FROM kontakty 
WHERE zainteresowania='OTOMOTO'; 
-- 4. Wyświetl wszystkie osoby, które interesują się graniem
SELECT *
FROM kontakty
WHERE zainteresowania='granie';

-- 5. Jeśli trzeba - popraw strukturę tabel w bazie tak, aby powyższe zapytania były łatwe do napisania

DROP TABLE kontakty;

CREATE TABLE kontakty(
    idkontaktu int primary key auto_increment,
    imie varchar(255),
    nazwisko varchar(255)
);

CREATE TABLE zainteresowania(
    idZainteresowania int primary key auto_increment,
    nazwa varchar(255)
);

CREATE TABLE Kontakty_zainteresowania(
    idZainteresowania int,
    idkontaktu int,
    primary key (idZainteresowania,idkontaktu),
    foreign key (idZainteresowania) references zainteresowania (idZainteresowania),
    foreign key (idkontaktu) references Kontakty (idkontaktu)
);

insert into kontakty
(imie, nazwisko)
values
('Jan','Kowalski'),
('Maciej','Malinowski'),
('Filip','Beger');

insert into zainteresowania
(nazwa)
values
('bieganie'),
('OTOMOTO'),
('granie'),
('zwiedzanie'),
('łowienie ryb');

insert into Kontakty_zainteresowania
(idkontaktu, idZainteresowania)
values
(1,1),
(1,3),
(2,2),
(3,3),
(3,4),
(3,1),
(3,5);


('Jan','Kowalski','bieganie, granie'),
('Maciej','Malinowski','OTOMOTO'),
('Filip','Beger','granie, zwiedzanie, bieganie, łowienie ryb');

SELECT imie, nazwisko, nazwa
FROM kontakty 
        JOIN Kontakty_zainteresowania ON kontakty.idkontaktu=Kontakty_zainteresowania.idkontaktu
        JOIN zainteresowania ON zainteresowania.idZainteresowania=Kontakty_zainteresowania.idZainteresowania
WHERE nazwa = 'bieganie';        

