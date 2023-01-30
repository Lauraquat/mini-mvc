<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retour vers le futur</title>
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="/public/style/main.css">
    <script src="/public/js/script.js"></script>

</head>

<body class="<?= isset($_GET['id']) ? 'brick' : '' ?>">
 <header>
    <a class="lienlogo" href="/"> 
        <img src="/public/image/logo_rvf.svg" alt="logo site">
    </a>
    <div class="div-menu-connect">
        <?php if(!isset($_SESSION["username"])):?>
            <a href="/login">Se connecter</a>
            <!-- <a href="/register">S'inscrire</a> -->
        <?php endif; ?>
        <?php if(isset($_SESSION["username"])):?>
            <a href="/logout">Déconnexion</a>
        <?php endif; ?>
        <div id="menu-button" class="close" onclick="openmenu()"></div>
        <div id="menu-button2" class="" onclick="closemenu()"></div>
    </div>

    <nav id="menu" class="">
        <ul>
            <li><a href="/movies">Les films</a></li>
            <li><a href="/actors">Les acteurs</a>
            <li><a href="/gallery">Galerie</a></li>
            </li>
        </ul>
    </nav>
</header>