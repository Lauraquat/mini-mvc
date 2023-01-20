<?php
  // Initialiser la session
  session_start();
  // Vérifiez si l'utilisateur est connecté, sinon redirige vers la page de connexion
  if(!isset($_SESSION["username"])){
    header("Location: /login");
    exit(); 
  }
?>

<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" href="./public/style/main.css">
  </head>
  <body>
    <div class="sucess">
    <h1>Bienvenue <?php echo $_SESSION['username']; ?>!</h1>
    <p>Voici notre site sur la saga Retour vers le Futur</p>
    <a href="/logout">Déconnexion</a>
    </div>
  </body>
</html>


<a href="/movies">Liste des films</a>
<a href="/gallery">Liste des images</a>
<a href="/actors">Liste des acteurs</a>
