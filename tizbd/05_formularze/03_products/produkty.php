<?php
$link= new mysqli('localhost','root','','w3schools');

$productname_f=$_POST['productname_f']??null;
$productprice_f=$_POST['productprice_f']??null;

if($productname_f && $productprice_f){
    $sql = "INSERT INTO products
            (productName, price)
            VALUES
            ('$productname_f', $productprice_f)";
    $result = $link ->query($sql);

            
}

$productid_f=$_POST['productid_f']??null;
$newprice_f=$_POST['newprice_f']??null;

if($productid_f && $newprice_f){
    $sql = "UPDATE products 
            SET price = $newprice_f
            WHERE Productid=$productid_f;";
    $result = $link ->query($sql);
}



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Dodaj nowy produkt</h1>
    <form action="" method="post">
        <label for="productname">Nazwa produktu</label>
        <input type="text" name="productname_f" id="productname"><br>
        <label for="productprice">Cena produktu</label>
        <input type="number" name="productprice_f" id="productprice"><br>
        <button>wyślij</button>
    </form>    


    <h2>Cena produktu</h2>
    <form action="" method="post">
        <label for="productid">Podaj id produktu</label>
        <input type="number" name="productid_f" id="productid"><br>
        <label for="newprice">Nowa cena</label>
        <input type="number" name="newprice_f" id="newprice">
        <button>Wyślij</button>

    </form>
</body>
</html>
<?php
$link->close();
?>