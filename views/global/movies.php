<?php foreach($movies as $movie):?>
    <?= $movie->getName()?> <br/>
    <?= $movie->getDate()?> <br/>
    <img width="20%" src="<?= $movie->getImg()?>"> <br/>
    <?= $movie->getSynopsis()?> <br/>
    <iframe width="420" height="345" src='<?= $movie->getBa()?> <br/>' frameborder="0" allowfullscreen></iframe><br/><br/>
   
    <a href="movie/<?= $movie->getOrder()?>">Voir le détail</a>
    <hr>
<?php endforeach; ?>



 