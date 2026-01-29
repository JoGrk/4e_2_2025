<?php
$link = new mysqli('localhost','root','','4e_2_szkola');

$sql = "
SELECT * FROM uczen
";
$result = $link->query($sql);
$students=$result->fetch_all(1);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="uczniowie.css">
</head>
<body>
    <h1>Uczniowie</h1>
    <table>
        <?php
        foreach($students as $student){
            echo"<tr>";
            foreach($student as $value){
                echo"<td>$value</td>";
            }
            echo"</tr>";
        }
        ?>
    </table>
    <section>
        <h2>Aktualizacja</h2>
        <form action="aktualizacja.php" method="post">
            <input type="text" name="studentid_f" id="student">
            <label for="student">id ucznia</label>
            <button>Wyślij</button>
        </form>
    </section>

    <section>
        <h2>Usuwanie</h2>
        <form action="usuwanie.php" method="post">
            <label for="student_del">Podaj id ucznia </label>
            <input type="text" name="studentdel_f" id="student_del">
            <button>Wyślij</button>
        </form>
    </section>
</body>
</html>

<?php
$link -> close();
?>