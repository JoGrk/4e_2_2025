<?php
    $link = new mysqli('localhost', 'root', '', '4e_2_biblioteka');
    $id_reader_f = $_POST['id-reader']??null;
    $id_book_f = $_POST['id-book']??null;

    if($id_reader_f && $id_book_f){
        $sql = "INSERT INTO wypozyczenia
                (id_czytelnik,id_ksiazka,data_wypozyczenia)
                VALUES
                ($id_reader_f,$id_book_f,CURRENT_DATE);";
        $link -> query($sql);
    }

    $sql = "SELECT id, imie , nazwisko
            FROM czytelnicy;";
    $result = $link -> query($sql);
    $readers = $result -> fetch_all(1);

    $sql1 = "SELECT ksiazki.id,tytul,imie,nazwisko
            FROM ksiazki
            INNER JOIN autorzy ON ksiazki.id_autor = autorzy.id;";
    $result1 = $link -> query($sql1);
    $books = $result1 -> fetch_all(1);



?>

<DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <label for="id-reader">Id czytelnika</label>
        <select name="id-reader" id="id-reader">
            <!-- skrypt 1 <option value=></option> -->
            <!-- <option value='[id]'>[imie] [nazwisko]</option> -->
            <?php
            
            foreach($readers as $reader){
                echo "<option value='{$reader['id']}'>{$reader['imie']} {$reader['nazwisko']}</option>";
            }
            
            ?>

        </select>
        <label for="id-book">Id ksiazki</label>
        <select name="id-book" id="id-book">
            <!-- <option value='[id]'>[tytul] [imie] [nazwisko]</option> -->
             <?php
             foreach($books as $book){
                echo"
                  <option value='{$book['id']}'>{$book['tytul']} {$book['imie']} {$book['nazwisko']}</option>
                ";
             }
             ?>
        </select>
        <button>Dodaj</button>
    </form>
</body>
</html>

<?php
    $link -> close();
?>