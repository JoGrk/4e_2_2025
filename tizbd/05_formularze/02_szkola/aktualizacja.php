<?php
$link = new mysqli('localhost','root','','4e_2_szkola');

if(isset($_POST['studentid_f'])){
    $studentid_f=$_POST['studentid_f'];
$sql ="UPDATE uczen
SET miejsce_urodzenia = 'Bydgoszcz'
WHERE id=$studentid_f;";
$result = $link -> query($sql);
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
    
</body>
</html>