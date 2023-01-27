<?php
// Initialiser la session
session_start();
// Vérifiez si l'utilisateur est connecté, sinon redirige vers la page de connexion
  if(!isset($_SESSION["username"])){
    header("Location: /login");
    exit(); 
  }
?>

    <div class="sucess">
    <h1>Bienvenue <?php echo $_SESSION['username']; ?>!</h1>
    <p>Voici notre site sur la saga Retour vers le Futur</p>
    <a href="/logout">Déconnexion</a>
    </div>


<?php require ('./common/footer.php') ?>
