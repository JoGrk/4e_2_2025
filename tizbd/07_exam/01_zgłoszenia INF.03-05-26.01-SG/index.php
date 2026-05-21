<?php
$link = new mysqli('localhost','root','','4e_2_zgloszenia');
$profession_f=$_POST['profession']?? 'policjant';
$personel_id_f=$_POST['personel-id']??NULL;

if($personel_id_f){
    $sql="INSERT INTO rejestr
        (id_personel, id_pojazd, data)
        VALUES ($personel_id_f, 14, CURRENT_DATE);";
    $result = $link->query($sql);
}


$sql="SELECT id,imie,nazwisko
        FROM personel
        WHERE status = '$profession_f';";
$result = $link->query($sql);
$personnel = $result ->fetch_all(1);

$sql = "SELECT id, nazwisko
        FROM personel
        WHERE id NOT IN(
            SELECT id_personel
            FROM rejestr
        );";
$result = $link -> query($sql);
$personel2 = $result -> fetch_all(1);

?>


<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZGŁOSZENIA</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Zgłoszenia wydarzeń</h1>
    </header>

    <main>
        <section class="left">
            <h2>Personel</h2>
            <form action="" method="post">
                <input type="radio" name="profession" id="policeman" checked value="policjant">
                <label for="policeman">Policjant</label>

                <input type="radio" name="profession" id="paramedic" value="ratownik">
                <label for="paramedic">Ratownik</label>

                <button>Pokaz</button>
            </form>
        <h3>Wybrano opcję:<?=$profession_f?></h3>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Imię</th>
                    <th>Nazwisko</th> 
                </tr>
                <!-- skrypt 1 -->
                 <!-- <tr>
                    <td>id</td>
                    <td>imie</td>
                    <td>nazwisko</td>
                 </tr> -->
                 <?php
                 foreach ($personnel as $person){
                    echo"
                        <tr>
                            <td>{$person['id']}</td>
                            <td>{$person['imie']}</td>
                            <td>{$person['nazwisko']}</td>
                        </tr>
                    ";
                 }
                 ?>
            </table>

        </section>

        <section class="right">
            <h2>Nowe zgłoszenie</h2>
            <ol>
                <!-- Skrypt 2 -->
                 <!-- <li>id nazwisko</li> -->
                <?php
                foreach($personel2 as $person){
                    echo"<li>{$person['id']} {$person['nazwisko']}</li>";
                }
                ?>
            </ol>
            <form action="" method="post">
                <label for="personel-id">Wybierz id osoby z listy:</label>
                <input type="number" name="personel-id" id="personel-id">

                <button>Dodaj zgłoszenie</button>
            </form>
        </section>
    </main>

    <footer>
        <p>Strone wykonał: 000000000000</p>
    </footer>
</body>
</html>
<?php
$link ->close();
?>