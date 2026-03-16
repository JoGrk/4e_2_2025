<!-- studentdel_f -->
 <?php
    $link = new mysqli('localhost','root','','4e_2_szkola');
    

    $studentdel_f= $_POST['studentdel_f']??null;

    // var_dump($studentdel_f)
    if($studentdel_f){
        $sql = "SELECT * FROM uczen
                WHERE id=$studentdel_f;";
        $result = $link->query($sql);
       
        }

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
    <?php
        if($result){
            echo"<p>Uczeń $studentdel_f został poprawnie usunięty</p>";
        }
        // else{
        //     echo"<p>Błąd przy usuwaniu</p>";
        // }
    ?>
    <a href="uczniowie.php">Powrót do strony głównej</a>
 </body>
 </html>
 <?php
    $link -> close();
 ?>