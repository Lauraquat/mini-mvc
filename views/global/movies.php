<?php foreach($movies as $movie):?>
    <?= $movie->name?>
    <?= $movie->img?>
    <!-- <?php var_dump($movie->order); ?> -->
    <a href="movie/<?= $movie->order?>">Voir le détail</a>
<?php endforeach; ?>



 