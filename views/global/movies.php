<?php foreach($movies as $movie):?>
    <?= $movie->name?>
    <?= $movie->img?>
    
    <a href="movie/{<?= $movie->order?>}">Voir le détail</a>
<?php endforeach; ?>



 