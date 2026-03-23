<?php

$link = new mysqli('localhost','root','','4e_2_biblioteka');

$firstname_f = $_POST['firstname_f']??null;
$lastname_f = $_POST['lastname_f']??null;
if($firstname_f && $lastname_f){
    $sql="INSERT INTO czytelnicy
        (imie,nazwisko,kod)
        VALUES
        ('$firstname_f','$lastname_f','');";
    $result=$link->query($sql);

}
$remove_f=$_POST['remove_f']??null;
if($remove_f){
    $sql = "DELETE FROM ksiazki
            WHERE id = $remove_f;";
    $result = $link -> query($sql);
}


$sql = "SELECT ksiazki.id,tytul,imie,nazwisko
        FROM ksiazki
        INNER JOIN autorzy ON ksiazki.id_autor = autorzy.id;";
$result = $link -> query($sql);
$books =$result -> fetch_all(1);

$return_id_f = $_POST['return_id_f']??NULL;
if($return_id_f){
    $sql = "UPDATE wypozyczenia
            SET data_oddania = CURRENT_DATE
            WHERE id = $return_id_f;";
    $result = $link ->query($sql);
}

$sql = "SELECT wypozyczenia.id,tytul,nazwisko, data_oddania
        FROM wypozyczenia
            INNER JOIN ksiazki ON wypozyczenia.id_ksiazka = ksiazki.id
            INNER JOIN czytelnicy ON wypozyczenia.id_czytelnik = czytelnicy.id;";
$result = $link -> query($sql);
$borrows = $result -> fetch_all(1); 


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Dodaj nowego czytelnika</h2>
    <form action="" method="post">
        <label for="firstname">Podaj imie</label>
        <input type="text" name="firstname_f" id="firstname"> <br>
        <label for="lastname">Podaj nazwisko</label>
        <input type="text" name="lastname_f" id="lastname"> <br>
        <button>Dodaj</button>
    </form>

    <h2>Książki</h2>
    <ul>
        <!-- skrypt b -->
      <!-- <li>
        <strong>[id]</strong>
        [tytul]
        [imie]
        [nazwisko]
    </li> -->
         <?php
            foreach($books as $book){
                echo"  <li>
        <strong>{$book['id']}</strong>
        {$book['tytul']}
        {$book['imie']}
        {$book['nazwisko']}
    </li>";
            }
         ?>
    </ul>
    <form action="" method="post">
        <label for="remove">Podaj id książki do usunięcia</label>
        <input type="number" name="remove_f" id="remove">

        <button>Usuń</button>
    </form>

    <h2>Wypożyczenia</h2>
    <table>
        <tr>
            <th>ID wypożyczenia</th>
            <th>Tytuł</th>
            <th>Nazwisko</th>
            <th>Data oddania</th>
        </tr>
        <!-- skrypt d -->
        <!-- <tr>
            <td>[id]</td>
            <td>[tytul]</td>
            <td>[nazwisko]</td>
            <td>[data_oddania]</td>
        </tr> -->
        <?php
            foreach($borrows as $borrow){
                echo"<tr>
                        <td>{$borrow['id']}</td>
                        <td>{$borrow['tytul']}</td>
                        <td>{$borrow['nazwisko']}</td>
                        <td>{$borrow['data_oddania']}</td>
                    </tr>";
            }
        ?>
    </table>

    <form action="" method="post">
        <label for="return_id">id wypożyczenia</label>
        <input type="text" name="return_id_f" id="return_id">
        <button>zmień</button>
    </form>

</body>
</html>

<?php

$link -> close();

?>