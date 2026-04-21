<!-- Utwórz formularz z dwoma polami typu numerycznego, minimalna cena i maksymalna cena (placeholder), ustawione wartości domyślne na 0 i 1000 (jeśli potrafisz, wstaw maksymalną cenę dostępną w bazie). Po kliknięciu na przycisk Filtruj poniżej powinny być wyświetlone towary (nazwa towaru, nazwa kategorii i cena) w formie tabeli. Po starcie, jeśli nie została wybrana cena, powinny być wyświetlane wszystkie produkty. -->
 <?php
    $link = new mysqli('localhost', 'root', '', 'w3schools');

    $sql = "SELECT CEIL(MAX(Price)) AS maxprice
            FROM Products;";
    $result = $link -> query($sql);
    $max_price = $result -> fetch_assoc();
    $max_price = $max_price['maxprice'];
    // var_dump($max_price);

    $max_price_f = $_POST['max-price']??$max_price;
    $min_price_f = $_POST['min-price']??0;

    $sql = "SELECT ProductName, CategoryName, Price
            FROM products
            INNER JOIN categories USING(categoryID)
            WHERE Price BETWEEN $min_price_f AND $max_price_f";
    $result = $link -> query($sql);
    $products = $result -> fetch_all(1);

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
        <input type="number" name="min-price" id="min-price"
        min="0" max="<?php echo $max_price?>">
        <label for="min-price">Minimalna cena</label> <br>
        <input type="number" name="max-price" id="max-price"
         min="0" max="<?= $max_price?>">
        <label for="max-price">Maksymalna cena</label> <br>
        <button>Filtruj</button>
    </form>
</body>
</html>

<?php
    $link -> close()
?>