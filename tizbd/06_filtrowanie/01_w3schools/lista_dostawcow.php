<?php
    $link = new mysqli('localhost','root','','w3schools');

    $sql = "SELECT SupplierID, SupplierName
            FROM suppliers;";
    $result = $link -> query($sql);
    $suppliers = $result -> fetch_all(1);
    
    $supplierID_f = $_POST['supplier-id']??NULL;
    if($supplierID_f){
        $sql = "SELECT ProductName, Price
                FROM products
                WHERE SupplierID = $supplierID_f;";
        $result = $link -> query($sql);
        $products = $result -> fetch_all(1);
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
    <form action="" method="post">
        <select name="supplier-id" id="supplier-id">
            <?php
            foreach($suppliers as $supplier){
              echo"
              <option value='{$supplier['SupplierID']}'>{$supplier['SupplierName']}</option>
              ";  
            };
            ?>
        </select>
        <button>Wybierz</button>
    </form>


    <table>
        <?php
        if($supplierID_f){
            echo"
             <tr>
                <th>Nazwa produktu</th>
                <th>cena</th>
            </tr>
            ";
       
         foreach($products as $product){
            echo"
            <tr>
                <td>{$product['ProductName']}</td>
                <td>{$product['Price']}</td> 
            </tr>
            ";
        }
        
        }
      ?>
    </table>
    
</body>
</html>


<?php
    $link -> close();
?>