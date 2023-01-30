<?php
// Initialiser la session
session_start();
?>

<?php if(!isset($_SESSION["username"])):?>
    <a href="/login">Se connecter</a>
    <a href="/register">S'inscrire</a>
<?php endif; ?>


<?php if(isset($_SESSION["username"])):?>
    <div class="sucess">
    <h1>Bienvenue <?php echo $_SESSION['username']; ?>!</h1>
    <p>Voici notre site sur la saga Retour vers le Futur</p>
    <a href="/logout">Déconnexion</a>
    </div>
<?php endif; ?>

<?php require ('./common/footer.php') ?>
