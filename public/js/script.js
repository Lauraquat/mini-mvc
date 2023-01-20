var menuButton = document.getElementById('menu-button');
var menu = document.getElementById('menu');

// show or hide
function openmenu(){
    document.getElementById('menu-button').style.display = "none";
    document.getElementById('menu-button2').style.display = "block";
    document.getElementById('menu').style.display = "block";
}

function closemenu(){
    document.getElementById('menu-button2').style.display = "none";
    document.getElementById('menu-button').style.display = "block";
    document.getElementById('menu').style.display = "none";
}