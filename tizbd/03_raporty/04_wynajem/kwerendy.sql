-- Zapytanie 1: wybierające wszystkie wiersze z tabeli pokoje
SELECT *
FROM pokoje;
-- Zapytanie 2: wybierające z tabeli rezerwacje i pokoje jedynie id pokoju, nazwa oraz sezon dla rezerwacji o liczbie dni przekraczającej tydzień. Zastosuj relację.
SELECT id_pok, sezon, nazwa
FROM pokoje
    INNER JOIN rezerwacje ON pokoje.id=rezerwacje.id_pok
WHERE liczba_dn > 7;

-- Zapytanie 3: liczące sumę dni rezerwacji dla różnych sezonów. Alias dla pola z sumą dnia to razem_rezerwacji
SELECT SUM(liczba_dn) as razem_rezerwacji, sezon
FROM rezerwacje 
GROUP BY sezon;
