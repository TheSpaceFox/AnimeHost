<?php
$link = mysqli_connect("localhost", "root", "", "animehost");
$sql = "SELECT * FROM paginas ";

IF (isset($_GET["s"])){
    $keyword = $_GET["s"];
    IF ($keyword != null)
    {
        $sql = $sql . "WHERE nome LIKE '%" . $_GET["s"] . "%' " . 
            "OR tags LIKE '%" . $_GET["s"] . "%' " .
            "OR sinopse LIKE '%" . $_GET["s"] . "%' ";
    }
}

$result = mysqli_query($link, $sql);

echo file_get_contents("assets/header.txt");

echo "<div class=\"lauroaranha\">
        <div class=\"anime-container\">";

IF (isset($_GET["s"])){
    $keyword = $_GET["s"];
    IF ($keyword != null){
    echo "Resultados da busca: " . $_GET["s"];
}
}

while ($row = mysqli_fetch_assoc($result))
{
    echo "<a href=\"animes/detalhe.php?id=" . $row["id"] . "\">" .
                "<div class=\"anime\">
                    <img src=\"../assets/imagens/posters/" . $row["poster"] . "\" alt=\"Poster do Anime\" />
                    <h5>" . $row["nome"] . "<span>" . $row["episodios"] . " Vídeo(s)</span></h5></div></a>";
}
}

echo "</div></div>";
echo file_get_contents("assets/footer.txt");
?>