<?php
    $link = new mysqli('localhost', 'root', '', '4e_2_terminarz');
    $sql = "
    SELECT DISTINCT wpis
    FROM zadania 
    WHERE 
        dataZadania BETWEEN '2020-07-01' AND '2020-07-07'   
        AND wpis != ''";
    $result = $link -> query($sql);
    $tasks = $result -> fetch_all(1);

    $sql = "
    SELECT dataZadania,wpis
    FROM zadania
    WHERE miesiac = 'lipiec';";

    $result = $link -> query($sql);
    $tasks2 = $result -> fetch_all(1);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadania na lipiec</title>
    <link rel="stylesheet" href="./style.css"></link>
</head>
<body>
    <header>
        <div class="img">
           <img src="./logo1.png" alt="lipiec"> 
        </div>
        
        <div class="title">
            <h1>Terminarz</h1>
            <p>
                <!-- najbliższe zadania: -->
                 <?php
                    foreach($tasks as $task){
                        echo"{$task['wpis']}; ";
                    }
                        
                 ?>
            </p>

        </div>
    </header>

    <main>
    <!-- <section class='.callendar'>
         <h6>[dataZadania]</h6>
        <p>[wpis]</p>
    </section> --> 
    <?php
        foreach($tasks2 as $task){
            echo"
                 <section class='callendar'>
                    <h6> {$task['dataZadania']}</h6>
                    <p>{$task['wpis']}</p>
                </section>
            ";
        }
    ?>
    </main>
    

    <footer>
        <a href="./sierpien.html">Terminarz na sierpień</a>
        <p>Stronę wykonał:</p>
    </footer>

</body>
</html>

<?php
    $link -> close();
?>