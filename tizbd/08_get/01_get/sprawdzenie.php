<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $login_f=$_GET['login']??NULL;
    $password_f=$_GET['password']??NULL;
    if($login_f && $password_f){
        if($login_f == 'uczen' || $login_f == 'nauczyciel' || $login_f == 'wizytator'){ 
            if($password_f == 'wiosna'){
                echo"<p>Witamy na naszej stronie</p>";
            }else{
                echo"<p style='color: red;'>błedne hasło</p>";
            }
        } 
        else{
            echo "<p style='color: red;'>Błedny login</p>";
        }
    }
    ?>
    
</body>
</html>