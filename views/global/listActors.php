<section id="section-actors">
    <?php foreach($actors as $actor): ?>
        <div class="actor-card">
            <div class="img-actor" style="background-image:url(<?= $actor->getPhoto();?>)">
            </div>
            <h4><?= $actor->getName();?></h3>
            <h5><?= $actor->getPseudo();?></h4>
            <?php foreach($moviesActors as $moviesActor):?>
                <?php if($moviesActor->actors_id == $actor->getId()): ?>
                    <?php foreach($movies as $movie):?>
                        <?php if($moviesActor->movies_id == $movie->getId()):?>
                           <p><?= $movie->getName();?></p>
                        <?php endif;?>
                    <?php endforeach;?>
                <?php endif;?>
            <?php endforeach;?>
        </div>
        <?php endforeach; ?>
</section>