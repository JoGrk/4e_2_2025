<?php
    $link = new mysqli('localhost','root','','w3schools');

    $sql = "SELECT SupplierID, SupplierName
            FROM Suppliers;";
    $result = $link -> query($sql);
    $suppliers = $result -> fetch_all(1);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <aside>
    <!-- <a href="suppliers.php?id=1">SupplierName</a><br> -->

    <?php
    
        foreach($suppliers as $supplier){
            echo"<a href='suppliers.php?id={$supplier['SupplierID']}'>{$supplier['SupplierName']}</a><br>";
        }
    
    ?>
    </aside>
    <main>

    </main>
</body>
</html>

<?php
    $link -> close()
?>