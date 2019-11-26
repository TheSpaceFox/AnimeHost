<?php
	$servername = "localhost";
	$username = "root";
	$password = null;
	$database = "animehost";
    $link = mysqli_connect($servername, $username, $password, $database);
    mysqli_set_charset($link, 'utf8');
    $resultvideo = mysqli_query($link, "SELECT * FROM video ORDER BY id_video DESC LIMIT 6 ");
	$result = mysqli_query($link, "SELECT poster FROM paginas LIMIT 6");
	$generos = array ("Ação","Comédia","Escolar","Ecchi", "Esportes", "Fantasia", "Harém", "Isekai", "Mistério", "Slice of Life");
	shuffle($generos);
	$typeone = mysqli_query($link, "SELECT * FROM paginas WHERE genero LIKE '%{$generos[1]}%' LIMIT 12");
	$typetwo = mysqli_query($link, "SELECT * FROM paginas WHERE genero LIKE '%{$generos[2]}%' LIMIT 12");

	echo file_get_contents("assets/header-o.txt");
?>

	<div id="bgmain">
		<div class="boasvindas">
			<div class="modalheader">
					<a href="javascript:modal()" id="close"> X </a>
				<h1> Seja bem vindo ao AnimeHost! </h1> 
			</div>
			<div class="modalmain">
				<div class="image-delimiter">
				</div>
					<div class="text">
					<p>
					O AnimeHost é um site de Streaming de animes desenvolvido por mim, Felipe Ribeiro. Atualmente o site se 
					encontra na versão de testes, logo tanto por esse motivo quando ao fato de eu não querer ser processado 
					pelo Crunchyroll os vídeos se encontram indisponiveis :( .
					O site é basicamente dividido entre o Home, Animes, Animes em Alta e Calendário, é possível pesquisar um
					anime independente da página que você se encontra. Sinta-se livre para explorar o site!
					</p>
					<a href="about/index.html"> Clique aqui para acessar a página "sobre o site" </a>
				</div>
			</div>
		</div>
	</div>
	<div class="main">

		<div class="slide-container">
			<span id="slider-image-01"></span>
			<span id="slider-image-02"></span>
			<span id="slider-image-03"></span>
			<span id="slider-image-04"></span>

			<div class="image-container" id="carrosel">
				<a href="#">
					<div class="slider-image">
						<span class="info">
							<h1> Boku no Hero 4 - EP 1 </h1>
							<h3> Já dísponivel </h3>
						</span>
					</div>
				</a>

				<a href="#">
					<div class="slider-image">
						<span class="info">
							<h1> SAO Alicization: War of Underworld - EP 1 </h1>
								<h3> Já dísponivel </h3>
						</span>
					</div>
				</a>

				<a href="#">
					<div class="slider-image">
						<span class="info">
							<h1> Nanatsu no Taizai 3 - EP 1 </h1>
							<h3> Já dísponivel </h3>
						</span>
					</div>
				</a>

				<a href="#">
					<div class="slider-image">
						<span class="info">
							<h1> Shokugeki no Soma 3 - EP 1 </h1>
							<h3> Já dísponivel </h3>
						</span>
					</div>
				</a>
			</div>

			<div class="button-container">
				<a href="#slider-image-01" class="slider-button"></a>
				<a href="#slider-image-02" class="slider-button"></a>
				<a href="#slider-image-03" class="slider-button"></a>
				<a href="#slider-image-04" class="slider-button"></a>
			</div>
    	</div>
        
<?php

	// 	Vídeos adicionados recentemente
    echo "<h2> &#9654; Adicionados Recentemente </h2>
		  <div class=\"playlist-container\">";

	while ($video = mysqli_fetch_assoc($resultvideo)){
    echo "<div class=\"playlist\">
            <a href=\"animes/video/video.php?id=" . $video["id_video"] . " \">
            <img src=\"assets/imagens/animes_thumbs/" . $video["id_fk"] . "/miniaturas" . "/" . $video["numep"] . ".jpg" . "\" alt=\"Thumbnail\" />
                <h3> " . $video["nomeep"] . " - " . "Episódio " . $video["numep"] . " </h3>
            </a>  
        </div>";
	}
	echo "</div>";

	// Anime de tal gênero

	echo "<h2> &#9654; Animes do gênero " . $generos[1]. "</h2>
	<div id=\"recommended-container\">";

	while ($random = mysqli_fetch_assoc($typeone)){
		echo "<div class=\"recommended\">
			<a href=\"#\">
				<img src=\"assets/imagens/posters/" . $random["poster"] . "\" alt=\"Poster do Anime\" />
			</a>
		   </div>";
	}
	echo "</div>";

	// Anime de tal gênero VOL 2
	$typetwo = mysqli_query($link, "SELECT * FROM paginas WHERE genero LIKE '%{$generos[2]}%' LIMIT 12");
	echo "<h2> &#9654; Animes do gênero " . $generos[2]. "</h2>
	<div id=\"recommended-container\">";

	while ($random = mysqli_fetch_assoc($typetwo)){
		echo "<div class=\"recommended\">
			<a href=\"#\">
				<img src=\"assets/imagens/posters/" . $random["poster"] . "\" alt=\"Poster do Anime\" />
			</a>
		   </div>";
	}
	echo "</div>";

	// Animes Recomendados, sem personalização ainda
	echo "<h2> &#9654; Animes Recomendados</h2>
	<div id=\"recommended-container\">";
	while ($recommend = mysqli_fetch_assoc($result)) {
	echo "<div class=\"recommended\">
			<a href=\"#\">
				<img src=\"assets/imagens/posters/" . $recommend["poster"] . "\" alt=\"Poster do Anime\" />
			</a>
		   </div>";
	}
	echo "</div>
	</div>";

	echo file_get_contents("assets/footer.txt");
?>