<?php
$link= new mysqli('localhost','root','','4e_2_hodowla2');

$sql = "SELECT rasa
        FROM rasy;";
$result = $link -> query($sql);
$races = $result -> fetch_all(1);

$sql2 = "SELECT imie, cena, opis 
FROM swinki
WHERE rasy_id = 1";

$result2 = $link ->query($sql2);

$peruvians = $result2 -> fetch_all(1);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h3>Poznaj wszystkie rasy świnek morskich </h3>
    <ol>
        <!-- skrypt 1 -->
        <!-- <li>[rasa]</li> -->
         <?php
            foreach($races as $race){
                echo"
                <li>{$race['rasa']}</li>
                ";
            }
         ?>
    </ol>

    <h1>Świnka morska rasy peruwianka</h1>
    <!-- skrypt 2 -->
     <?php
     <h2>Rasa: foreach($peruvians as $peruvian){
            echo"{$peruvian['rasa']} ";
            }</h2>
     <p>Data urodzenia: ['data-ur']</p>
     <p>Oznaczenie miotu: ['miot']</p>
            
        
    ?>
     <hr>
    
     <h2>Świnki w tym miocie</h2>
     <!-- skrypt 3 -->
      <hr>

      <h2>Świnki urodzone w lipcu</h2>
      <!-- Skrypt 4 -->

</body>
</html>
<?php
$link ->close();
?>