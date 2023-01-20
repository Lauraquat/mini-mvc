<?php foreach($actors as $actor): ?>
        <?= $actor->getName();?>
        <?php foreach($moviesActors as $moviesActor):?>
            <?php if($moviesActor->actors_id == $actor->getId()): ?>
                <?php foreach($movies as $movie):?>
                    <?php if($moviesActor->movies_id == $movie->getId()):?>
                        <?= $movie->getName();?>
                    <?php endif;?>
                <?php endforeach;?>
            <?php endif;?>
        <?php endforeach;?>
<?php endforeach; ?>