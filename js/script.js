function myFunction() {
    var x = document.getElementById("menu");
    var y= document.getElementById("form");
  	if (x.style.display === "block") {
        x.style.display = "none";
    } else {
        x.style.display = "block";
        y.style.display = "none";
    }
}

function myFunction2() {
  	var y = document.getElementById("form");
    var x = document.getElementById("menu");
  	if (y.style.display === "block") {
        y.style.display = "none";
    } else {
        y.style.display = "block";
        x.style.display = "none";
    }
}
