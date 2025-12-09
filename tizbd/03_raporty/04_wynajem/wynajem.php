<?php 
$link = new mysqli('localhost','root','','4e_2_wynajem2');
$sql="
     SELECT *
     FROM pokoje;";
$result=$link->query($sql);
$rooms=$result->fetch_all(1);

$sql ="
    SELECT id_pok, sezon, nazwa
        FROM pokoje
        INNER JOIN rezerwacje ON pokoje.id=rezerwacje.id_pok
    WHERE liczba_dn > 7;";
$result=$link->query($sql);
$reservations=$result->fetch_all(1);

$sql="SELECT SUM(liczba_dn) as razem_rezerwacji, sezon
FROM rezerwacje 
GROUP BY sezon;";
$result=$link->query($sql);
$seasons=$result->fetch_all(1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table>
        <tr>
            <th>id</th>
            <th>nazwa</th>
            <th>cena</th>
        </tr>
        <!-- <tr>
            <td>[id]</td>
            <td>[nazwa]</td>
            <td>[cena]</td>
        </tr> -->
        <?php
            foreach($rooms as $room){
                echo"
                <tr>
                    <td>{$room['id']}</td>
                    <td>{$room['nazwa']}</td>
                    <td>{$room['cena']}</td>
                </tr>
                ";
            }
            
        ?>

    </table>

    <ul>
    <!-- <li>
        {['id_pok']}
        <<strong>{['nazwa']}</strong>
        <em>{['sezon']}</em>
    </li> -->

    <?php
        foreach($reservations as $reservation){
            echo"
    <li>
        {$reservation['id_pok']}
        <strong>{$reservation['nazwa']}</strong>
        <em>{$reservation['sezon']}</em>
    </li>
    ";}
    ?>
    </ul>

    <?php
        foreach($seasons as $season){
            echo "
            <h4>{$season['sezon']}</h4>
            <p>suma dni rezerwacji dla sezonu {$season['sezon']} wynosi {$season['razem_rezerwacji']}</p>
            ";
        }
    ?>

    <!-- <h4> [sezon] </h4>
    <p>suma dni rezerwacji dla sezonu [sezon] wynosi ['razem_rezerwacji']</p>
     -->
</body>
</html>

<?php
$link -> close();
?>