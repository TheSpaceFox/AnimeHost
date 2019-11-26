<?php
$servername = "localhost";
$username = "root";
$password = null;
$database = "animehost";
$link = mysqli_connect($servername, $username, $password, $database);
mysqli_set_charset($link, 'utf8');

// Conexão com banco de dados para pegar as infos do Vídeo
$result = mysqli_query($link, "SELECT * FROM video " .
"WHERE id_video = " . $_GET["id"]);
$video = mysqli_fetch_assoc($result);

// Conexão para pegar as infos do anime
$resultt = mysqli_query($link, "SELECT nome, poster, estudio, episodios, sinopse FROM paginas " .
"WHERE id = " . $video["id_fk"]);
$anime = mysqli_fetch_assoc($resultt);

// Conexão que será usada adiante, serve para pegar os próximos episódios
$resulttt = mysqli_query($link, "SELECT * FROM video WHERE id_video > {$_GET["id"]} AND id_fk = {$video["id_fk"]} LIMIT 6");

$num = mysqli_num_rows($resultt); 

/*
if($total === 0)
{
    $resulttt = mysqli_query($link, "SELECT * FROM video WHERE id_video > {$_GET["id"]} AND id_fk = {($video["id_fk"] + 1)} LIMIT 6");
    exit();
}
*/

//Contador de Views
$query = mysqli_query($link, "UPDATE video SET views=views+1 WHERE id_video= {$_GET["id"]}");  

echo file_get_contents("../../assets/header-video.txt");

    echo"<div class=\"video-holder\">
            <div class=\"video-container\">
                <video poster=\"../../assets/imagens/animes_thumbs/" . $video["id_fk"] . "/miniaturas" . "/" . $video["numep"] . ".jpg" . "\" class=\"js-player\">
                    <source src=\" " . $video["src"]." \" />
                </video>
            </div>
            <hgroup>
                <h1> " . $anime["nome"] . " - Episódio " . $video["numep"] . " - " . $video["nomeep"] . " </h1>
            </hgroup>
            <div class=\"actions\">
                <a href=\"../detalhe.php?id=" . $video["id_fk"] . "\"> <i class=\"fas fa-bars\"></i> </a>
                <a href=\"video.php?id=" . ($video["id_video"] - 1) . "\"> <i class=\"fas fa-angle-double-left\"></i> </a>
                <a href=\"video.php?id=" . ($video["id_video"] + 1) . "\"> <i class=\"fas fa-angle-double-right\"></i> </a>
                <a> <i class=\"fas fa-heart\"></i> </a>
                <a> <i class=\"fas fa-share-alt\"></i> </a>
                <a class=\"collapsible\" href=\"javascript:desceai()\"> <i class=\"fas fa-caret-down\"></i> </a>
                <h3>  " . $video["views"] . " visualizações" . " </h3>
            </div>
            <div id=\"moreinfo\">
                <img src=\"../../assets/imagens/posters/" . $anime["poster"] . "\" alt=\"Poster do Anime\">
                <hgroup>
                    <h4> " .  $anime["nome"] ." </h4>
                    <h4> <span> " .  $anime["episodios"] ." </span> Vídeo(s) </h4>
                    <h4> <span> Estudio </span> " .  $anime["estudio"] ." </h4>
                    <p> " .  $anime["sinopse"] ." </p>
                </hgroup>
                <div class=\"semelhante\">
                <h4> Animes do mesmo gênero </h4>
                    <img src=\"../assets/imagens/posters/5toubunnohanayomeposter.jpg\" alt=\"Poster do Anime\">
                    <img src=\"../assets/imagens/posters/5toubunnohanayomeposter.jpg\" alt=\"Poster do Anime\">
                </div>
            </div>
        
        <script>
        function desceai() {
            var y = document.getElementById(\"moreinfo\");
            if (y.style.display === \"flex\") {
                y.style.display = \"none\";
            } else {
               y.style.display = \"flex\";
            }
        }
        </script>";
        
    echo"<div id=\"disqus_thread\"></div>
            <script>
    			(function() { // DON'T EDIT BELOW THIS LINE
                    var d = document, s = d.createElement('script');
                    s.src = 'https://animehost.disqus.com/embed.js';
                    s.setAttribute('data-timestamp', +new Date());
                    (d.head || d.body).appendChild(s);
                    })();
            </script>
        <noscript>Ative o Javascript para ver <a href=\"https://disqus.com/?ref_noscript\"> os comentários feitos com o Disqus.</a></noscript>
    </div>
    </div>";


    echo "<div class=\"sidebar\">
            <div class=\"ad\"> AD </div>
            <div class=\"playlist-holder\">
            <h2> > Outros episódios</h2>";

    while ($more = mysqli_fetch_assoc($resulttt))
    {
    echo "<div class=\"playlist\">
            <a href=\"video.php?id=" . $more["id_video"] . "\"> 
                <img src=\"../../assets/imagens/animes_thumbs/" . $more["id_fk"] . "/miniaturas" . "/" . $more["numep"] . ".jpg" . "\" alt=\"Thumbnail\" />
                <h3> <span> Episódio " . $more["numep"]. " </span>  " . $more["nomeep"] . " <span> 24min </span> </h3>
            </a>
          </div>";
    }

    echo "</div></div>";

echo file_get_contents("../../assets/footer-sub.txt");

?>