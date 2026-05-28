<?php
    $link = new mysqli('localhost','root','','w3schools');

    $monthNum_f = $_GET['monthNum'] ?? NULL;
    if($monthNum_f){
        $sql = "SELECT CustomerName, OrderDate
                FROM Customers
                INNER JOIN orders USING(CustomerID)
                WHERE MONTH(OrderDate) = $monthNum_f;";
        $result = $link -> query($sql);
        $customers = $result -> fetch_all(1);
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
       <a href="months.php?monthNum=6">Czerwiec</a>
       <br>
       <a href="months.php?monthNum=7">Lipiec</a>
       <br>
       <a href="months.php?monthNum=8">Sierpień</a>
       <br>
       <a href="months.php?monthNum=9">Wrzesień</a>
    </aside>
    <main>
        <ol>
            <?php
                if($monthNum_f){
                    foreach($customers as $customer){
                        echo"<li>{$customer['CustomerName']}</li>";
                    }
                }
            ?>
            
        </ol>
    </main>
</body>
</html>

<?php
    $link -> close()
?>