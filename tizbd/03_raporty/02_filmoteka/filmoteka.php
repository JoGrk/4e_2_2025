<?php
$link= new mysqli('localhost', 'root','','4e_2_filmoteka');
$sql ="SELECT tytul
    FROM filmy
    WHERE gatunek = 'SF';";
$result=$link->query($sql);
$titles = $result-> fetch_all(1);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Tytuly filmów:</h2>
    <ol>
        <!-- <li> [tytul] </li> -->
        <?php
            foreach($titles as $title){
                echo"<li> {$title['tytul']} </li>";
            }
        ?>
    </ol>
</body>
</html>

<?php
$link -> close();
?>