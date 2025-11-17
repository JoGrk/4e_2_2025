<!-- use 4e_1_dania -->
<?php 
  $link = new mysqli('localhost', 'root', '', '4e_1_dania');

  $sql = "SELECT nazwa
          FROM dania";
  $result = $link -> query($sql); 
  $dishes = $result -> fetch_all(1);      
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>pierwszy raport</h1>
    <?php
        // echo "<em> hello world!</em>";
        // echo "<p>$sql";
        // echo '<p>$sql';
    ?>

    <ol>
        <!-- <li> [nazwa] </li> -->
        <?php
            foreach( $dishes as $dish ){
                echo "
                    <li> {$dish['nazwa']} </li>
                ";
            }
        ?>
    </ol>
</body>
</html>

<?php
  $link -> close(); 
?>