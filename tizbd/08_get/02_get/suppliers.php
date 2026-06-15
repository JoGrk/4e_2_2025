<?php
    $link = new mysqli('localhost','root','','w3schools');

    $sql = "SELECT SupplierID, SupplierName
            FROM Suppliers;";
    $result = $link -> query($sql);
    $suppliers = $result -> fetch_all(1);
    
    $supplierID = $_GET['id']??NULL;
    if($supplierID){
        $sql="SELECT SupplierName, Address, City, Country
        FROM Suppliers
        WHERE SupplierID = $supplierID;";
        $result=$link -> query($sql);
        $supplier_f = $result -> fetch_assoc();

        $sql="SELECT ProductName,Price
                FROM products
                WHERE SupplierID = $supplierID;";
        $result=$link->query($sql);
        $products=$result->fetch_all(1);

    }
    


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
        <!-- <h2>SupplierName</h2>
        <h3>Address, City, Country</h3>
        <table>
            <tr>
                <th>nazwa produktu</th>
                <th>cena</th>
            </tr>
            <tr>
                <td>ProductName</td>
                <td>Price</td>
            </tr>
        </table> -->
        <?php
            if($supplierID){
                echo"<h2>{$supplier_f['SupplierName']}</h2>
                     <h3>{$supplier_f['Address']}, {$supplier_f['City']}, {$supplier_f['Country']}</h3>";

                echo"<table>
                        <tr>
                            <th>nazwa produktu</th>
                            <th>cena</th>
                        </tr>";
                
                foreach($products as $product){
                    echo"<tr>
                            <td>{$product['ProductName']}</td>
                            <td>{$product['Price']}</td>
                         </tr>";
                }
                echo"</table>";
            }
        ?>
    </main>
</body>
</html>

<?php
    $link -> close()
?>