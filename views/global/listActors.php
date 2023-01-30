<?php if($_SESSION['id'] != NULL):?>
    <button class="linkadd" onclick="openForm()">Ajouter un acteur</button>
<?php endif; ?>


<section id="section-actors">
    <!-- <form action="addActor" method="POST" class="forms"> -->
    <form action="addActor" method="POST" id="forms">
        <h2>Ajouter un acteur</h2>
        <input type="text" name="name" placeholder="Nom de l'acteur">
        <input type="text" name="pseudo" placeholder="Pseudo">
        <input type="text" name="photo" placeholder="Lien de l'image">
        <select multiple name="movies[]">
            <option value="" disabled>Dans quel film a t-il joué?</option>
            <?php foreach($movies as $movie):?>
                <option name="<?= $movie->getId();?>" value="<?= $movie->getId();?>">
                    <p><?= $movie->getName();?></p>
                </option>
            <?php endforeach;?>
        </select>
        <input type="submit" name="addActor" value="Ajouter" />
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