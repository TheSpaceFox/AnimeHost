function menu_collapse() {
  	var x = document.getElementById("menu_collapse");
    var y = document.getElementById("pesquisa");
  	if (x.style.display === "block") {
        x.style.display = "none";
    } else {
        x.style.display = "block";
    y.style.display = "none";
    }
}

function searchbar_collapse(){
  	var y = document.getElementById("pesquisa");
    var x = document.getElementById("menu_collapse");
  	if (y.style.display === "block") {
        y.style.display = "none";
    } else {
        y.style.display = "block";
    x.style.display = "none";
    }
}

function search(){
  window.location.href = "http://theanimehost.000webhostapp.com/animes/index.php?s=" + document.getElementById('search').value;
}

function searchbig(){
  window.location.href = "http://theanimehost.000webhostapp.com/animes/index.php?s=" + document.getElementById('searchbig').value;
}
