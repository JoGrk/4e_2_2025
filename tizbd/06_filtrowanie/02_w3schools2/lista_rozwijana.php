<?php
$link = new mysqli('localhost', 'root', '', 'w3schools');

$sql = "SELECT DISTINCT country
        FROM Customers
        ORDER BY Country;";

$result = $link -> query($sql);
$countries = $result -> fetch_all(1);

$country_f=$_POST['country']??null;
if($country_f){
    $sql="SELECT customerName
        FROM Customers
        WHERE Country ='$country_f';
    ";
    $result = $link -> query($sql);
    $customers = $result ->fetch_all(1);

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
    <form action="" method = "post">
        <select name="country" id="country">
            <!-- <option>USA</option> -->
             <?php
             foreach($countries as $country){
             echo "<option>{$country['country']}</option>";
             }
             ?>
        </select>
        <button>kliknij mnie</button>
    </form>
    <ol>
        <!-- <li>customerName</li> -->
         <?php
            if($country_f){
                foreach($customers as $customer){
                echo "<li>{$customer['customerName']}</li>";
            }
         }
         ?>
    </ol>

</body>
</html>

<?php
$link -> close();
?>