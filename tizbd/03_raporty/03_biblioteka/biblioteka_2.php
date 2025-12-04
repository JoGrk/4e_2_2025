<?php
    $link = new mysqli('localhost','root','','4e_2_biblioteka3');
    $sql = "SELECT tytul, data_wypozyczenia
            FROM ksiazki
                INNER JOIN wypozyczenia ON ksiazki.id=wypozyczenia.id_ksiazka
            WHERE id_czytelnik = 2;";
    $result = $link->query($sql);
    $books = $result->fetch_all(1);

    $sql = "SELECT imie, nazwisko, count(*) as ile_tytulow
    FROM autorzy
     INNER JOIN ksiazki ON autorzy.id=ksiazki.id_autor
    GROUP BY id_autor;";
    $result = $link->query($sql);
    $authors = $result->fetch_all(1);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
     <!-- 7. na podstawie zapytania 3 - wyświetlające tytuły utworów wraz z datą wypożyczenia w postaci listy numerowanej. Datę wyróżnij znacznikiem semantycznym, który daje efekt pochylenia czcionki. -->
     <ol>
        <!-- <li>[tytul] <em> [data_wypozyczenia] </em> </li> -->
         <?php 
         foreach($books as $book){
            echo"
            <li>{$book['tytul']} <em> {$book['data_wypozyczenia']} </em> </li>
            ";
         }
         
         ?>
     </ol>

    <!-- 8.8. Na podstawie zapytania 4 - wyświetlające dane w postaci tabeli, wraz z wierszem nagłówkowym -->
     <table>
        <tr>
            <th>Imię</th>
            <th>Nazwisko</th>
            <th>Ile tytułów</th>
        </tr>
        <!-- <tr>
            <td> [imie] </td>
            <td> [nazwisko] </td>
            <td> [ile_tytulow] </td>
        </tr> -->
        <?php
        foreach($authors as $author){
            echo"
            <tr>
                <td> {$author['imie']} </td>
                <td> {$author['nazwisko']} </td>
                <td> {$author['ile_tytulow']} </td>
            </tr> 
            ";
        }
        ?>
     </table>

    

</body>
</html>

<?php
    $link -> close();
?>
