<section id="section-actors">
    <a href="/addActor" id="linkaddactor">Ajouter un acteur</a>

<form action="post" action="#" class="forms">
    <h2>Ajouter un acteur</h2>
    <input type="text" name="name" placeholder="Nom de l'acteur" id="">
    <input type="text" name="pseudo" placeholder="Nom dans le film" id="">
    <input type="text" name="photo" placeholder="Lien de l'image" id="">
    <input type="submit" name="add" value="Ajouter" />
</form>

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