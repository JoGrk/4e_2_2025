<?php
    $link = new mysqli('localhost', 'root', '', 'w3schools');

    $sql = "SELECT customerName, City, Country
            FROM customers
            INNER JOIN orders USING(CustomerID)
            WHERE orderdate like '%-07-%';";

    $result = $link->query($sql);
    $customers = $result->fetch_all(1);
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
<section class='top'>
    <table>
        <tr>
            <th>nazwa klienta</th>
            <th>miasto</th>
            <th>kraj</th>
        </tr>

        <!-- skrypt 1 -->
    </table>
</section>


<section class='bottom'>
    <!-- <section class="customer">
        <h6> [customerName]</h6>
        <ul>
            <li>[City]</li>
            <li>[Country]</li>
        </ul>
    </section> -->
    <!-- skrypt 2 -->
     <?php
     foreach($customers as $customer){
        echo"
    <section class='customer'>
        <h6> {$customer['customerName']}</h6>
        <ul>
            <li>{$customer['City']}</li>
            <li>{$customer['Country']}</li>
        </ul>
    </section>";
     };
     ?>
</section>
</body>
</html>

<?php
$link -> close();
?>