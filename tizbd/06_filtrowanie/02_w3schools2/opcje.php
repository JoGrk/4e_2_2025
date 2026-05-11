<?php
$link = new mysqli('localhost','root','','w3schools');

$sql="SELECT 
        ROUND(MIN(Price), 2) AS min_price,
        ROUND(AVG(Price), 2) AS avg_price,
        ROUND(MAX(Price),2) AS max_price
        FROM Products;";
        
$result= $link ->query($sql);
$price = $result -> fetch_assoc();

$min_price = $price['min_price'];
$avg_price = $price['avg_price'];
$max_price = $price['max_price'];


$price_from = $_POST['price_from']??$min_price;
$price_to = $_POST['price_to']??$max_price;

$sql="SELECT ProductName, FORMAT(Price, 2, 'pl_PL') AS Price
FROM Products
WHERE Price BETWEEN $price_from AND $price_to;";

$result=$link->query($sql);
$products=$result->fetch_all(1);

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <p>Cena od</p>
        <label for="from_min">najniższa cena</label>
        <input type="radio" name="price_from" id="from_min" value="<?=$min_price?>"> 
        <br>
        <label for="from_avg">średnia cena</label>
        <input type="radio" name="price_from" id="from_avg" value="<?=$avg_price?>">
        <br>

        <p>Cena do</p>

        <label for="to_avg">Srednia cena</label>
        <input type="radio" name="price_to" id="to_avg" value="<?=$avg_price?>">
        <br>
        <label for="to_max">Maksymalna cena</label>
        <input type="radio" name="price_to" id="to_max" value="<?=$max_price?>">
        <br>
        <button>Wyślij</button>

    </form>
    <ol>
        <!-- <li>ProductName Price zł</li> -->
         <?php
         foreach($products as $product){
            echo"<li>{$product['ProductName']} {$product['Price']} zł</li>";
         }
         ?>

    </ol>
    
</body>
</html>
<?php
$link -> close();
?>