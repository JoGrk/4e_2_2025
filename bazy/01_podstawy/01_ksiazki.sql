mysql -u root
create database biblioteka;
use biblioteka;
show databases;
create table ksiazka(
    tytul varchar(255),
    autor varchar(255),
    cena int
);
show tables;
desc ksiazka;
insert into ksiazka
values
('gra o tron','mucha',99);

select * from ksiazka;

insert into ksiazka
values('lalka','Boleslaw Prus',50);

select*from ksiazka;

delete from ksiazka
where autor='mucha';