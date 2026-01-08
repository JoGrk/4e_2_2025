<?php

$link = new mysqli('localhost','root','','4e_2_kadry');

$sql ="SELECT pensja, count(*) as ilosc 
FROM pracownicy
GROUP BY pensja 
ORDER BY pensja DESC";
$result = $link->query($sql);
$workers = $result->fetch_all(1);




?>






<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="kadry.css">
</head>
<body>
    <h2>Statystyki dotyczące pensji</h2>
    
    <table>
        <tr>
            <th>pensja</th>
            <th>ilość pracowników</th>
        </tr>
        <!-- skrypt 1 -->
         <!-- <tr>
            <td>[pensja]</td>
            <td>[ilosc]</td>
         </tr> -->
         <?php
         foreach($workers as $worker){
            echo"<tr>
            <td>{$worker['pensja']}</td>
            <td>{$worker['ilosc']}</td>
         </tr>
            ";
         }
         ?>
    </table>

    <h1>Pracownicy ze stażem wyższym niż 10 lat</h1>
    <table>
        <tr>
            <th>imię</th>
            <th>nazwisko</th>
            <th>stanowisko</th>
        </tr>
        <!-- skrypt 2 -->
    </table>
<hr>
    <h2>Średnie pensje ze względu na rodzaj stanowiska</h2>
    <!-- skrypt 3 -->
</body>
</html>
<?php


$link -> close();

?>