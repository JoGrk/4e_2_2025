<?php
    $link = new mysqli('localhost', 'root', '', 'w3schools');

    $id = $_GET['id']??NULL;

    if($id){
        $sql = "UPDATE orders
                SET CustomerID = NULL
                WHERE CustomerID = $id;";
        $result = $link -> query($sql);
        
        $sql = "DELETE FROM Customers
                WHERE CustomerID = $id;";
        $result = $link -> query($sql);
    }

    $sql = "SELECT CustomerName,CustomerID
            FROM Customers;";
    $result = $link -> query($sql);
    $customers = $result -> fetch_all(1);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table>
        <tr>
            <th>ID</th>
            <th>Nazwa</th>
            <th>Operacja</th>
        </tr>
        <!-- <tr>
            <td>CustomerID</td>
            <td>CustomerName</td>
            <td><a href='customers.php?id=CustomerID'>Usuń</a></td>
        </tr> -->

        <?php
            foreach($customers as $customer){
                    echo"  <tr>
                                <td>{$customer['CustomerID']}</td>
                                <td>{$customer['CustomerName']}</td>
                                <td><a href='customers.php?id={$customer['CustomerID']}'>Usuń</a></td>
                            </tr>
                        ";
            }
        ?>

    </table>
</body>
</html>

<?php
    $link -> close();
?>