


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
                <input type="radio" name="profession" id="policeman" checked>
                <label for="policeman">Policjant</label>

                <input type="radio" name="profession" id="paramedic">
                <label for="paramedic">Ratownik</label>

                <button>Pokaz</button>
            </form>

            <table>
                <tr>
                    <th>ID</th>
                    <th>Imię</th>
                    <th>Nazwisko</th> 
                </tr>
                <!-- skrypt 1 -->
            </table>

        </section>

        <section class="right">
            <h2>Nowe zgłoszenie</h2>
            <ol>
                <!-- Skrypt 2 -->
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