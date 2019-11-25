<?php
$servername = "localhost";
$username = "root";
$password = null;
$database = "animehost";
$link = mysqli_connect($servername, $username, $password, $database);
mysqli_set_charset($link, 'utf8');
$resultvideo = mysqli_query($link, "SELECT * FROM video ORDER BY views DESC LIMIT 15");
$aux = mysqli_fetch_assoc($resultvideo);
$result = mysqli_query($link, "SELECT * FROM paginas WHERE id LIKE {$aux["id_fk"]}");
$i = 1;

echo file_get_contents("../assets/header-hot.txt");

echo "<h1> > Vídeos mais acessados </h1>
      <div class=\"hot\">";


    while ($video = mysqli_fetch_assoc($resultvideo))
    {
    echo "<div class=\"video\">
                <a href=\"../animes/video/video.php?id=" . $video["id_video"] . "\">
                <img src=\"../assets/imagens/animes_thumbs/" . $nomeanime["id"] . "/miniaturas" . "/" . $video["numep"] . ".jpg" . "\" alt=\"Thumbnail\" />
                    <h2> <span> ".  "#" . $i . "</span>  " . $nomeanime["nome"] . " - " . "Episódio " . $video["numep"] . " - " . $video["nomeep"] . " </h2>
                    <h3> " . $video["views"] . " views" . "</h3>
                    <h3> " . "Estúdio " . $nomeanime["estudio"] . "</h3>
                    <h3> " . "Gêneros " . $nomeanime["genero"] . "</h3>
                </a>
          </div>";
    $i = $i + 1;
    }

    echo "</div>";
echo file_get_contents("../assets/footer-index.txt");
?>