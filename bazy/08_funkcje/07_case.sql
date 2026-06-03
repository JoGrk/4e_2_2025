-- 1. wyświetl character, superhero_alias, platform. Dodaj populity_category: "popular", jeśli ma followersów więcej niż 500000 oraz 'less popular' w przeciwnym wypadku. Użyj IF.

SELECT
    `character`, superhero_alias, platform,
    IF(followers>=500000,'popular','less popular') as popularity_category
    FROM marvel_avengers;

-- 2. Zmodyfikuj poprzednie zapytanie zastępując IF instrukcją CASE

SELECT
    `character`, superhero_alias, platform,
    CASE 
        WHEN followers >= 500000 THEN 'popular'
        ELSE 'less popular'
    END AS popularity_category
    FROM marvel_avengers;

-- 3. Zmodyfikuj poprzednie zapytanie tak, aby dla wartości większej równej 700000 była wyświetlana wartość 'highly popular', dla wartości pomiędzy 300000 oraz 699999 było to Moderately Popular oraz 'Less Popular' w przeciwnym wypadku

SELECT
    `character`, superhero_alias, platform,
    CASE 
        WHEN followers >= 700000 THEN 'highly popular'
        when followers between 300000 and 699999 then 'Moderately Popular'
        ELSE 'less popular'
    END AS popularity_category
    FROM marvel_avengers;

-- 4. wyświelt aktora, graną postać oraz kategorię zaangażowania (engagement_category). Kategorię obliczamy: jeśli wskaźnik zaangażowania jest większy równy 8.0 będzie to 'High Engagement', dla wartości pomiędzy 6.0 a 7.9 będzie to 'Moderate Engagement', dla wartości mniejszych od 6.0 'Low Engagement'. Ogranicz platformy do TikToka i Instragrama

SELECT
    `character`, actor,
    CASE
        WHEN engagement_rate >= 8.0 THEN 'High Engagement'
        WHEN engagement_rate BETWEEN 6.0 AND 7.9 THEN 'Moderate Engagement'
        ELSE 'Low Engagement'
    END AS engagement_rate
    FROM marvel_avengers
WHERE platform = 'TikTok' OR platform = 'Instagram';

-- 5.  Przeanalizuj dane i skategoryzuj je  na podstawie średniej ilości polubień (avg_like):

-- "Super Likes" dla postaci o średniej co najmniej 15,000 
-- "Good Likes" dla postaci o średniej ilości polubień pomiędzy 5,000 and 14,999.
-- "Low Likes" dla postaci o mniejszej niż 5,000 polubień.

SELECT
    `character`,
    CASE
        WHEN avg_likes >= 15000 THEN 'Super Likes'
        WHEN avg_likes BETWEEN 5000 AND 14999 THEN 'Good Likes'
        ELSE 'Low likes'
     END AS likes
 FROM marvel_avengers;



-- WHERE



-- 6. Wyświetl aktora, postać i platformę. Dane ogranicz tylko do popularnych postaci:

-- na Instagramie co nmniej 500000 followersów,
-- na Twitterze co najmniej 200000
-- oraz powyżej 100000 dla pozostałych platform
SELECT `character`, actor, platform
FROM marvel_avengers
WHERE
    CASE
        WHEN platform = 'Instagram' THEN followers>=500000
        WHEN platform = 'Twitter' THEN followers>=200000
        ELSE followers >= 100000 
    END;
-- Grupujące

-- 7. Dla poszczególnych policz: 

-- ilość popularnych postaci (followers co najmniej 500000) popular_actor_count 
-- ilość mniej popularnych postaci (mniej niż 500000 followersów)
-- dane pogrupuj według platformy
-- Użyj CASE, kórego wartością będzie 1 jeśli wartość pola spełnia kryteria do liczenia

SELECT platform,
    COUNT(CASE
        WHEN followers >= 500000 THEN 1
        ELSE null
    END
    ) AS popular_actor_count
FROM marvel_avengers
GROUP BY platform;

-- 8 
-- Wyświetl:
-- platformę
-- łączną sumę zaangażowanych followersów (wskaźnik engagement_rate co najmniej 8.0) 
-- (high_engagement_followers_sum)
--  i mniej zaangażowanych (low_engagement_followers_sum)
-- dane pogrupuj według platformy

SELECT platform,
    SUM(
        CASE
            WHEN engagement_rate >= 8.0 THEN followers
            ELSE NULL 
        END 
    )AS high_engagement_followers_sum,
    SUM(
        CASE
            WHEN engagement_rate<8.0 THEN followers
            ELSE NULL
        END
    ) AS low_engagement_followers_sum
FROM marvel_avengers
GROUP BY platform;

-- 9. Wyświetl łączną liczbę zamówień z podziałem na zamówienia dokonane z laptopa oraz z urządzeń mobilnych (łącznie z tabletu i telefonu (laptop_order, mobile_orders)

SELECT
    COUNT(CASE
            WHEN product_type = 'laptop' THEN 1 
            ELSE NULL
        END)AS laptop_order,
    COUNT(
        CASE
            WHEN product_type IN('phone', 'tablet') THEN 1
            ELSE NULL
        END
    )AS mobile_orders
FROM product_orders;


-- 10. Oblicza średnią liczbę followersów bazują na wskaźniku zaangażowania . Jeśli wskaźnik wynosi co najmniej 8.0, przypisz followersa do high_engagement_followers, w przeciwnym wypadku do low_engagement_followers. Dane pogrupuj według platformy.  Wsk. jeśli jest wartość nie spełnia warunku, zwróć null - ta wartość nie jest uwzględniana w obliczenia.

SELECT platform,
    ROUND(AVG(
        CASE
            WHEN engagement_rate >= 8.0 THEN followers
            ELSE NULL
        END 
    ),1) AS avg_high,
    ROUND(AVG(
        CASE
            WHEN engagement_rate < 8.0 THEN followers
            ELSE NULL
        END
    ),1)AS avg_low
FROM marvel_avengers
GROUP BY platform;