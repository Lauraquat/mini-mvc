<?php
// Initialiser la session
if(!isset($_SESSION)) 
{ 
    session_start();
}
?>

<?php if(isset($_SESSION["username"])):?>
    <div class="">
        <h1>Bienvenue <?php echo $_SESSION['username']; ?>!</h1>
    </div>
<?php endif; ?>
