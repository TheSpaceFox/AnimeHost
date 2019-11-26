<?php
$servername = "localhost";
$username = "root";
$password = null;
$database = "animehost";
$link = mysqli_connect($servername, $username, $password, $database);
$sql = "SELECT id, poster, nome, episodios FROM paginas ";

IF (isset($_GET["s"])){
    $keyword = $_GET["s"];
    IF ($keyword != null)
    {
        $sql = $sql . "WHERE nome LIKE '%" . $_GET["s"] . "%' " . 
            "OR tags LIKE '%" . $_GET["s"] . "%' " .
            "OR genero LIKE '%" . $_GET["s"] . "%' ";
    }
}

$result = mysqli_query($link, $sql);

echo file_get_contents("../assets/header.txt");
?>

<h1> Pesquise em nossa biblioteca o seu anime favorito! </h1>
<div class="search">
    <input type="text" id="searchbig" placeholder="  Buscar Animes" />
    <button class="search-button-invisible" id="enterinvisible" onclick="searchbig()"></button>
</div>

<script>
var input = document.getElementById("searchbig");
	input.addEventListener("keyup", function(event) {
    	if (event.keyCode === 13) {
       		event.preventDefault();
     		document.getElementById("enterinvisible").click();
    	}
});
function searchbig(){
  window.location.href = "http://theanimehost.000webhostapp.com/animes/index.php?s="
  + document.getElementById('searchbig').value;
}
</script>

<div class="option-container">
            <select id="genero">
                <option value="1" label=" Gênero"> Todos </option>
                <option value="2" onclick="filterSelection('marciax')"> Artes Marciais </option>
                <option value="3"> Ação </option>
                <option value="4"> Aventura </option>
                <option value="5"> Carros </option>
                <option value="6"> Comédia </option>
                <option value="7"> Demônios </option>
                <option value="8"> Ecchi </option>
                <option value="9"> Escolar </option>
                <option value="10"> Espaço </option>
                <option value="11"> Esportes </option>
                <option value="12"> Fantasia </option>
                <option value="13"> Ficção Cientifíca </option>
                <option value="14"> Harém </option>
                <option value="15"> Infantil </option>
                <option value="16"> Isekai </option>
                <option value="17"> Jogos </option>
                <option value="18"> Militar </option>
                <option value="19"> Mistérios </option>
                <option value="20"> Mecha </option>
                <option value="21"> Romance </option>
                <option value="22"> Shoujo </option>
                <option value="23"> Slice of Life </option>
                <option value="24"> Sobrenatural </option>
                <option value="25"> Vampiros </option>
            </select>
            <select id="studio">
                <option value="1" label=" Estúdio"> Todos </option>
                <option value="2"> MadHouse </option>
                <option value="3"> Dream </option>
                <option value="4"> Kyoani </option>
                <option value="5"> A1 </option>
                <option value="6"> Bones </option>
                <option value="7"> Trigger </option>
                <option value="8"> David Production </option>
                <option value="9"> Toei </option>
                <option value="10"> Pierrot </option>
            </select>
            <select id="numep">
                <option value="0" label="Episódios" > Todos </option>
                <option value="1" > 12 </option>
                <option value="2"> 25 </option>
                <option value="3"> 25+ </option>
            </select>
        </div>
<?php
echo "<div class=\"anime-container\">";

IF (isset($_GET["s"])){
    $keyword = $_GET["s"];
    IF ($keyword != null){
    echo "<h1> " . "Resultados da busca por" .  "<span>" . $_GET["s"] . "<span>" . " </h1>";
}
}

while ($row = mysqli_fetch_assoc($result))
{
    echo "<a href=\"detalhe.php?id=" . $row["id"] . "\">" .
                "<div class=\"anime\">
                    <img src=\"../assets/imagens/posters/" . $row["poster"] . "\" alt=\"Poster do Anime\" />
                    <h5>" . $row["nome"] . "<span>" . $row["episodios"] . " Vídeo(s)</span></h5>
                </div>
        </a>";
}

echo "</div>";
echo file_get_contents("../assets/footer-index.txt");
?>