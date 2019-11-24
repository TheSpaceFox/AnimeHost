<?php
$servername = "localhost";
$username = "root";
$password = null;
$database = "animehost";
$link = mysqli_connect($servername, $username, $password, $database);
mysqli_set_charset($link, 'utf8');
$result = mysqli_query($link, "SELECT * FROM paginas " . "WHERE id = " . $_GET["id"]);
$resultvideo = mysqli_query($link, "SELECT * FROM video " . "WHERE id_fk = " . $_GET["id"]);
$row = mysqli_fetch_assoc($result);
echo file_get_contents("../assets/header-anime.txt");

echo "<div class=\"main\">
        <div class=\"main-holder\">
        <div class=\"anime-holder\">
            <picture>
                <source class=\"fundo\" media=\"(min-width: 600px)\"
                        srcset=\"../assets/imagens/animes_thumbs/" . $row["id"] . "/"  . $row["image-large"] . "\" />
                <source class=\"fundo\" srcset=\"../assets/imagens/animes_thumbs/" . $row["id"] . "/"  . $row["image-small"] . "\" />
                <img class=\"fundo\" src=\"/assets/imagens/animes_thumbs/"  . $row["id"] . "/"  . $row["image-large"]  . "\" alt=\" ". $row["nome"] ." \" />
            </picture>                        
            <h1>" . $row["nome"] . "</h1>
            <img class=\"myanimelist\" src=\"../assets/imagens/myanimelist.png\" alt=\"My Anime List Logo\" />
        </div>
        <div class=\"info-holder\">
            <h3> Estúdio <span> " . $row["estudio"] . " </span></h3>
            <h3> Episódios <span> " . $row["episodios"] . " </span></h3>
            <h3> Gêneros <span class=\"genero\">" . $row["genero"] . "</span></h3>
            <h2> Sinopse </h2>
            <p>" . $row["sinopse"] . "</p>
        </div>
        </div>";

    echo " <h2> > Vídeos</h2> 
           <div class=\"playlist-holder\"> ";

    while ($video = mysqli_fetch_assoc($resultvideo))
    {
        echo "<div class=\"playlist\">
                <a href=\"video/video.php?id=" . $video["id_video"] . "\"> 
                <img src=\"../assets/imagens/animes_thumbs/" . $row["id"] . "/miniaturas" . "/" . $video["numep"] . ".jpg" . "\" alt=\"Thumbnail\" />
                <h3> <span> Episódio " . $video["numep"]. " </span>  " . $video["nomeep"] . " <span> 24min </span> </h3>
                </a>
            </div>";
    }

    echo "</div>";

echo file_get_contents("../assets/footer-index.txt");
?>