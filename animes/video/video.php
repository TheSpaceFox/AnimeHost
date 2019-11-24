<?php
 $link = mysqli_connect("localhost", "id11043460_root", "qpwoeiruty10", "id11043460_animehost");
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
$resulttt = mysqli_query($link, "SELECT * FROM video WHERE id_video > {$_GET["id"]} AND id_fk = {$video["id_fk"]}");

//Contador de Views
$query =mysqli_query($link, "UPDATE video SET views=views+1 WHERE id_video= {$_GET["id"]}" );  

echo file_get_contents("../../assets/header-video.txt");

    echo "<div class=\"video-holder\">
        <video id=\"video\" class=\"video-js\" controls preload=\"auto\" poster=\"../assets/imagens/animes_thumbs/" . $video["id_fk"] . "/miniaturas" . "/" . $video["numep"] . ".jpg" . "\" data-setup=\"{}\">
            <source src=\" " . $video["src"]." \" type=\"video/mp4\" />
		    <p class=\"vjs-no-js\">
				Para ver esse vídeo ative o suporte ao Javascript, ou instale um navegador que tenha suporte
				<a href=\"https://videojs.com/html5-video-support/\" target=\"_blank\">Suporta vídeo baseado em
                HTML5</a>
			</p>
		</video>
		<script src=\"https://vjs.zencdn.net/7.5.5/video.js\"></script>
		<hgroup>
			<h1> " . $anime["nome"] . " - Episódio " . $video["numep"] . " - " . $video["nomeep"] . " </h1>
			<h3> " . $video["views"] . " views" . " </h3>
            </hgroup>
            <div class=\"actions\">
            <a href=\"video.php?id=" . ($video["id_video"] - 1) . "\"> <i class=\"fas fa-angle-double-left\"></i> </a>
			<a href=\"video.php?id=" . ($video["id_video"] + 1) . "\"> <i class=\"fas fa-angle-double-right\"></i> </a>
			<a> <i class=\"fas fa-heart\"></i> </a>
			<a> <i class=\"fas fa-share-alt\"></i> </a>
			<a class=\"collapsible\" href=\"javascript:desceai()\"> <i class=\"fas fa-caret-down\"></i> </a>
            </div>
            </div>";

    echo "<div id=\"moreinfo\">
            <img src=\"../../assets/imagens/posters/" . $anime["poster"] . "\" alt=\"Poster do Anime\">
            <hgroup>
                <h4> " .  $anime["nome"] ." </h4>
                <h4> <span> " .  $anime["episodios"] ." </span> Vídeo(s) </h4>
                <h4> <span> Estudio </span> " .  $anime["estudio"] ." </h4>
                <p> " .  $anime["sinopse"] ." </p>
            </hgroup>

            <script>
            function desceai() {
                var y = document.getElementById(\"moreinfo\");
                if (y.style.display === \"flex\") {
                    y.style.display = \"none\";
                } else {
                   y.style.display = \"flex\";
                }
            }
            </script>
         </div>";

    echo "<div class=\"playlist-holder\"> 
            <h2> > Outros episódios</h2> ";

    while ($more = mysqli_fetch_assoc($resulttt))
    {
    echo "<div class=\"playlist\">
            <a href=\"video.php?id=" . $more["id_video"] . "\"> 
                <img src=\"../../assets/imagens/animes_thumbs/" . $more["id_fk"] . "/miniaturas" . "/" . $more["numep"] . ".jpg" . "\" alt=\"Thumbnail\" />
                <h3> <span> Episódio " . $more["numep"]. " </span>  " . $more["nomeep"] . " <span> 24min </span> </h3>
            </a>
          </div>";
    }

    echo "</div> </main>";

echo file_get_contents("../../assets/footer-sub.txt");

?>