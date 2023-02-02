<?php
// Initialiser la session
if(!isset($_SESSION)) 
{ 
    session_start();
}
?>

<div class="bg-home"></div>
<div class="imghomepage">
    <div>
    <h1>Bienvenue </h1>
        <?php if(isset($_SESSION["username"])):?>
            <h1><?php echo $_SESSION['username']; ?>!</h1>
        <?php endif; ?>
    <h2>Sur le site officiel de <br> Retour vers le futur France</h2>
    </div>
    <div class="anim">
        <img class="imgcar" src="/public/image/delorean.svg" alt="delorean">
    </div>
</div>

