-- Do tabeli książka z poprzedniego zadania dodaj pole id z autoinkrementacją

ALTER TABLE ksiazka
ADD id int primary key auto_increment;

-- Usuń jedną z lektur
delete from ksiazka 
where id=1;
select * from ksiazka;

-- Utwórz tabelę Gatunki  z polami:
-- id liczba, klucz, autoinkrementacja
-- nazwa tekst
create table Gatunki(
    id int primary key auto_increment,
    nazwa varchar(255)
);
-- Dodaj do tabeli ksiazka pole gatunek 
ALTER TABLE ksiazka
ADD gatunek int;

-- Wpisz dowolne dwa gatunki książek
insert into Gatunki
values
(1,'Dramat'),
(2,'Ballada');

-- Wpisz dowolną książkę z dowolnego gatunku. Jaki sens ma korzystanie z tabeli Gatunek zamiast bezpośredniego wpisywania?
INSERT INTO ksiazka
(tytul, autor, gatunek)
VALUES 
('potop', 'Henryk Sienkiewicz', 1);