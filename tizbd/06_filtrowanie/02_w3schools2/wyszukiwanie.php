<?php
$link = new mysqli('localhost','root','','w3schools');

$name_f=$_POST['name']??'%';

$sql="SELECT ProductName, FORMAT(Price, 2, 'pl_PL') as Price
    FROM Products
    WHERE ProductName LIKE '$name_f%';";
$result=$link->query($sql);
$num_products=$result->num_rows;
if($num_products>0){
    $products=$result->fetch_all(1);
}


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
        <label for="name">Podaj początek nazwy produktu:</label>
        <input type="text" name="name" id="name">
        <button>Wyślij</button>
    </form>
    <?php
    if($num_products==0){
        echo "<h3>Brak produktów</h3>";
    }else{
        echo"<ol>";
        foreach($products as $product){
            echo"<li>{$product['ProductName']} {$product['Price']} zł</li>";
        }
        echo"</ol>";
    }
    ?>
</body>
</html>
<?php
$link->close();
?>