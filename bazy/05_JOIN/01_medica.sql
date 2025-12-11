-- Utwórz bazę danych o nazwie medica, z zestawem polskich znaków (np. utf8_unicode_ci).  Do bazy zaimportuj tabele z pliku baza.sql z rozpakowanego archiwum

-- ‒ Zapytanie 1: wybierające jedynie nazwę, cenę i opis wszystkich abonamentów

SELECT nazwa, cena
FROM abonamenty;


-- ‒ Zapytanie 2: liczące średnią cenę abonamentów. Cena jest zaokrąglona do dwóch miejsc po przecinku oraz nadano nazwę kolumny (alias) na „Srednio_abonament”

SELECT ROUND(AVG(cena),2) as Srednio_abonament
FROM abonamenty;

-- ‒ Zapytanie 3: wyświetlające cechę oraz id abonamentów w których występuje. Dane uporządkuj według pola cecha.
SELECT cecha,abonamenty_id
FROM cechy
    INNER JOIN szczegolyabonamentu ON cechy.id=szczegolyabonamentu.cechy_id
ORDER BY cecha;

-- ‒ Zapytanie 4: wyświetlające cechę wraz z liczbą abonamentów, w których występuje. Dane pogrupuj według pola cecha. Należy zastosować relację.
SELECT cecha,COUNT(abonamenty_id)
FROM cechy
    INNER JOIN szczegolyabonamentu ON cechy.id=szczegolyabonamentu.cechy_id
GROUP BY cecha;

-- ‒ Zapytanie 5: wybierające jedynie nazwę abonamentu i odpowiadającą mu cechę dla abonamentu o id równym 1. Należy zastosować pełną relację n:m

SELECT nazwa, cecha
FROM abonamenty
    inner join szczegolyabonamentu on abonamenty.id=szczegolyabonamentu.abonamenty_id
    inner join cechy on szczegolyabonamentu.cechy_id=cechy.id
where abonamenty_id=1;