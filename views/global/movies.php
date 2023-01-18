<?php foreach($movies as $movie):?>
    <h2><?= $movie->getName()?></h2>
    <div class="px-2">Film créé en <?= $movie->getDate() ?></div><br/><br/>
    <img width="20%" src="<?= $movie->getImg()?>"> <br/>
    <?= $movie->getSynopsis()?> <br/>
   
    <a href="movie/<?= $movie->getOrders()?>">Voir le détail</a>
    <hr>
<?php endforeach; ?>


 