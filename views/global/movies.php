<button class="linkadd" onclick="openForm()">Ajouter un film</button>
<main id="moviesMain">

<form action="post" action="add" id="forms">
    <h2>Ajouter un film</h2>
    <input type="number" name="orders" placeholder="Numero du film" id="">
    <input type="text" name="name" placeholder="Nom du film" id="">
    <input type="number" name="date" placeholder="Année de sortie" id="">
    <input type="text" name="img" placeholder="Lien de l'image" id="">
    <input type="text" name="synopsis" placeholder="Synopsis du film" id="">
    <input type="text" name="ba" placeholder="Lien de la bande annonce" id="">
    <input type="textarea" name="story" placeholder="Histoire" id="">
    <input type="submit" name="add" value="Ajouter" />
</form>

    <?php foreach($movies as $movie):?>
        <a class="card" href="movie/<?= $movie->getOrders()?>">
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


 