<div class="p-2">

<?php if(isset($_SESSION['id'])):?>
    <button class="linkadd" onclick="openForm()">Ajouter un film</button>
<?php endif; ?>

<!-- <form action="add" method="POST" class="forms"> -->
<form action="add" method="POST" id="forms">
    <h2>Ajouter un film</h2>
    <input type="text" name="name" placeholder="Nom du film" >
    <input type="text" name="imgbaniere" placeholder="Lien image banière" >
    <input type="number" name="date" min="0" placeholder="Année de sortie" >
    <input type="text" name="img" placeholder="Lien de l'image" >
    <input type="text" name="synopsis" placeholder="Synopsis du film" >
    <input type="text" name="ba" placeholder="Lien de la bande annonce" >
    <input type="textarea" name="story" placeholder="Histoire" >
    <input type="submit" name="add" value="Ajouter" class="btn-submit"/>
</form>
<main id="moviesMain">

    <?php foreach($movies as $movie):?>
        <a class="card" href="movie/<?= $movie->getId()?>">
            <img width="" src="<?= $movie->getImg()?>">
            <div class="moviescontent" >
                <h2><?= $movie->getName()?></h2>
                <div class="">Film créé en <?= $movie->getDate() ?></div>
                <?= $movie->getSynopsis()?>
            </div>
            <button class="btnenplus">En savoir +</button>
        </a>
    <?php endforeach; ?>

</main>


</div>