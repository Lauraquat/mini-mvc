<div class="block-single-movie">
    <div class="img-baniere" style="background-image: url( <?= $movie->getImg_baniere() ?>)"> 
    <div class="bg-single-movie"></div>      
        <?php if($_SESSION['id'] != NULL):?>
            <button class="linkadd" onclick="openForm()">Modifier le film</button>
        <?php endif; ?>

        <!-- <form action="updateMovie" method="POST" class="forms"> -->
        <form action="/update/<?= $movie->getId()?>" method="POST" id="forms">
            <h2>Modifier le film</h2>
            <input type="text" name="name" placeholder="Nom du film" value="<?= $movie->getName()?>">
            <input type="number" name="date" placeholder="Année de sortie" value="<?= $movie->getDate()?>">
            <input type="text" name="img" placeholder="Lien de l'image" value="<?= $movie->getImg()?>">
            <input type="text" name="synopsis" placeholder="Synopsis du film" value="<?= $movie->getSynopsis()?>" >
            <input type="text" name="ba" placeholder="Lien de la bande annonce"  value="<?= $movie->getBa()?>">
            <input type="textarea" name="story" placeholder="Histoire"  value="<?= $movie->getStory()?>">
            <input type="submit" name="edit" value="Modifier" class="btn-submit"/>
        </form>

        <div>
            <h1><?= $movie->getName() ?></h1>   
            <div class="">Film créé en <?= $movie->getDate() ?></div>
        </div>
        <iframe class="bafilm" src='<?= $movie->getBa() ?>' frameborder="0" allowfullscreen></iframe>
        <div class=""><?= $movie->getStory() ?></div>
    </div> 
    <div class="storymovie">
                       
        <div class="movie-acteur-block">
            <?php foreach($actors as $actor):?>
                <div class="actor-card">
                    <div class="img-actor" style="background-image: url(<?= $actor->getPhoto()?>)"></div>
                    <h4><?= $actor->getPseudo()?></h4>
                    <p>Interprété par : <?= $actor->getName()?></p>
                </div>
            <?php endforeach; ?>
        </div>
        <h3>Images du film</h3>
        <div class="movie-galerie">
            <?php foreach($images as $image):?>
                <img width="" src="<?= $image->getImage()?>"></img>
                <?php endforeach; ?>
            </div>
            
            <h3>Commentaires</h3>
        <?php foreach($comments as $comment):?>
            <div class="com">            
                
                <h3>
                    "<?= $comment->getCommentaires()?>"
                <br> 
                 par <?= $comment->getPseudo()?>
                </h3>
                <p>Ecrit le "<?= $comment->getCommentsDate()?>"</p>
            <?php endforeach; ?>
            </div>
            <form action="addCom" method="POST" class="forms-login">
                <input type="text" name="pseudo" id="pseudo" placeholder="Votre pseudo"/>
                <input type="hidden" name="movies_id" id="movies_id" value="<?= $movie->id ?>"/>
                <textarea id="texte" name="commentaires" id="commentaires" placeholder="Votre commentaire"></textarea>
                <input name="date" type="hidden" id="date" value="<?= date('Y-m-d H:i:s')?>" />
                <input type="submit" name="addCom" class="btn-submit" value="Valider">
            </form>
        </div>
</div>
