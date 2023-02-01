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

function openForm(){
    document.getElementById('forms').style.display = "flex";
    // document.getElementsByClassName('forms').style.display = "flex";
    document.querySelector('.linkadd').style.display = "none"; 
}


function eyeclick(){
    const eye = document.getElementById("eye");
const eyeoff = document.getElementById("eyeoff");
const passwordField = document.querySelector("input[type=password]");

  eye.style.display = "none";
  eyeoff.style.display = "block";

  passwordField.type = "text";
};

function eyeoffclick() {
const eye = document.getElementById("eye");
const eyeoff = document.getElementById("eyeoff");
const passwordField = document.getElementById("password");

  eyeoff.style.display = "none";
  eye.style.display = "block";

  passwordField.type = "password";
};
