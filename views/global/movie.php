
<div class="block-single-movie">
        <div class="img-baniere" style="background-image: url( <?= $movie->getImg_baniere() ?>)"></div>        
        <h2><?= $movie->getName() ?></h2>   
        <div class="">Film créé en <?= $movie->getDate() ?></div>
        <h3>Bande Annonce</h3>
        <iframe src='<?= $movie->getBa() ?>' frameborder="0" allowfullscreen></iframe>
        
        <h3>Story</h3>
        <div class=""><?= $movie->getStory() ?></div>
                    
        <h3>Acteurs</h3>
        <div class="movie-acteur-block">
            <?php foreach($actors as $actor):?>
                <div class="actor-card">
                    <div class="img-actor" style="background-image: url(<?= $actor->getPhoto()?>)"></div>
                    <h4><?= $actor->getPseudo()?></h4>
                    <p>Interprété par : <?= $actor->getName()?></p>
                </div>
            <?php endforeach; ?>
        </div>
            
        <h3>Galerie</h3>
        <div class="movie-galerie">
            <?php foreach($images as $image):?>
                <img width="" src="<?= $image->getImage()?>"></img>
            <?php endforeach; ?>
        </div>
        
        <h3>Commentaires</h3>
        <?php foreach($comments as $comment):?>
            <h4><?= $comment->getCommentaires()?></h4>
            <p>Ecrit le<?= $comment->getCommentsDate()?></p>
        <?php endforeach; ?>

        <form action="addCom">
            <textarea id="texte" name="message"></textarea>
            <input type="hidden" name="movie_id" value=<?= $movie->id ?> />
            <input type="submit" name="addCom" value="Valider">
        </form>
</div>
