<?php 
    $link=new mysqli('localhost', 'root', '', '4e_2_baza');

    $sql = "SELECT imie, nazwisko
            FROM pracownicy;";
    $result = $link -> query($sql);

    $workers = $result -> fetch_all(1);
    
    $sql = "SELECT marka, model, kolor, stan
            FROM samochody;";
    
    $result = $link -> query($sql);
    $cars = $result -> fetch_all(1);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Pracownicy</h2>
    <ul>
        <!-- <li>[imie] [nazwisko]</li> -->
        <?php
        foreach($workers as $worker){
            // echo "<li>{$worker['imie']} {$worker['nazwisko']}</li>";
            echo "
                <li>{$worker['imie']} {$worker['nazwisko']}</li>
            ";
        }
        ?>
    </ul>

    <h2>Samochody</h2>
    <ul>
        <!-- <li>[kolor] [marka] [model], stan [stan]</li> -->
        <?php
        foreach ($cars as $car) {
            echo "
            <li>{$car['kolor']} {$car['marka']} {$car['model']}, stan {$car['stan']}</li>
            ";
        }
        ?>
    </ul>

</body>
</html>

<?php
$link->close();
?>