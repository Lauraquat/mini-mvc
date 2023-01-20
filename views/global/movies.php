<main id="moviesMain">
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


 