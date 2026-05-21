<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="get">
        <label for="name">Wprowadz imie</label>
        <input type="text" name="name" id="name"> <br>
        <label for="age">Wprowadz wiek</label>
        <input type="number" name="age" id="age"> <br>
        <input type="checkbox" name="terms" id="terms">
        <label for="terms">Czy akecptujesz regulamin?</label> <br>
        <input type="radio" name="status" id="student" checked value="uczen">
        <label for="student">Uczeń</label><br>
        <input type="radio" name="status" id="teacher" value="nauczyciel">
        <label for="teacher">Nauczyciel</label><br>
        <button>Wyślij</button>
    </form>

    <?php
        $name_f = $_GET['name']??null;
        $age_f = $_GET['age']??null;
        $terms_f = $_GET['terms']??null;
        $status_f = $_GET['status']??'uczen';

        if($name_f && $age_f ){
           echo"<p>Dziękujemy za przesłanie danych. Podsumowanie: imię $name_f, wiek $age_f, status $status_f</p>"; 
            
           if($terms_f ){
            echo"Zaakceptowałeś regulamin";
           }
           else{
            echo"<style>Proszę zaakceptować regulamin";
           }
        }
        
    ?>
    
</body>
</html>