<!-- -- Utwórz grupę opcji z nazwami firm spedycyjnych (kurierskich). Po kliknięciu wyświetlone są identyfikatory i daty zamówień obsługiwanych przez te firmy -->
<?php
    $link = new mysqli('localhost','root','','w3schools');

    $sql = "SELECT shipperID, shipperName
            FROM shippers;";
    $result = $link -> query($sql);
    $shippers = $result -> fetch_all(1);

    $shipper_id_f = $_POST['shipper-id']??null;
    if($shipper_id_f){
        $sql = "SELECT orderID, orderDate
                FROM orders
                WHERE shipperID=$shipper_id_f;";
        $result = $link -> query($sql);
        $orders = $result -> fetch_all(1);
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
        <!-- <label>
            <input type="radio" name="shipper-id" value="1">
            Speedy Express
        </label><br>
        <label>
            <input type="radio" name="shipper-id" value="2">
            United Package
        </label><br>
        <label>
            <input type="radio" name="shipper-id" value="3">
            Federal Shipping
        </label><br> -->

        <?php
            foreach($shippers as $shipper){
                echo"<label>
                     <input type='radio' name='shipper-id' value='{$shipper['shipperID']}'>
                     {$shipper['shipperName']}
                     </label><br>";
            }
        ?>
        <button>Filtruj</button>
    </form>

        <table>
            <!-- <tr>
                <th>id zamówienia</th>
                <th>data zamówienia</th>
            </tr> -->
            <!-- <tr>
                <td>[orderID]</td>
                <td>[orderDate]</td>
            </tr> -->
       

        <?php
            if($shipper_id_f){
                echo " 
                <tr>
                    <th>id zamówienia</th>
                    <th>data zamówienia</th>
                </tr>";
                foreach($orders as $order){
                    echo " 
                    <tr>
                        <td>{$order['orderID']}</td>
                        <td>{$order['orderDate']}</td>
                    </tr>";
                }
            }
        ?>
         </table>
</body>
</html>

<?php
    $link -> close();
?>