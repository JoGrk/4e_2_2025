<?php
$link = new mysqli ('localhost', 'root','','4e_2_baza');

$dish_name_f=$_POST['dish-name']??NULL;
$price_f=$_POST['price']??NULL;
$dish_type_f=$_POST['dish-type']??NULL;

if($dish_name_f && $price_f && $dish_type_f){
    $sql="INSERT INTO dania (typ,nazwa,cena)
    VALUES
    ($dish_type_f,'$dish_name_f',$price_f);
    ";
    $result = $link->query($sql);
};
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        if($dish_name_f && $price_f && $dish_type_f){
            if($result){
                echo"<p>Danie $dish_name_f o cenie $price_f zostało dodane do bazy</p>";
            }
        }
        else{
            echo"<p>Do formularza nie wpisano danych</p>";
        }
    ?>
    <a href="index.php">powrót na strone główna</a>
</body>
</html>

<?php
$link -> close();
?>