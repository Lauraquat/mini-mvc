<?php
// Initialiser la session
session_start();
?>


<?php if(isset($_SESSION["username"])):?>
    <div class="">
        <h1>Bienvenue <?php echo $_SESSION['username']; ?>!</h1>
        <p>Voici notre site sur la saga Retour vers le Futur</p>
    </div>
<?php endif; ?>
