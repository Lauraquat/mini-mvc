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
    <input type="submit" name="edit" value="Modifier" />
</form>

<div class="block-single-movie">
        <h2><?= $movie->getName() ?></h2>   
        <div class="">Film créé en <?= $movie->getDate() ?></div>
        <div class=""> <img width="20%" src="<?= $movie->getImg() ?>"></div>
        
        <h3>Synopsis</h3>
        <div class=""> <?= $movie->getSynopsis() ?></div>
        
        <h3>Bande Annonce</h3>
        <iframe width="420" height="345" src='<?= $movie->getBa() ?>' frameborder="0" allowfullscreen></iframe><br/><br/>
        
        <h3>Story</h3>
        <div class=""><?= $movie->getStory() ?></div>
                    
        <h3>Acteurs</h3>
        <div class="movie-acteur-block">
            <?php foreach($actors as $actor):?>
                <div class="actor-card">
                    <h4><?= $actor->getPseudo()?></h4>
                    <p>Interprété par : <?= $actor->getName()?></p>
                    <img width="" src="<?= $actor->getPhoto()?>"></img>
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
            <p>Ecrit le "<?= $comment->getCommentsDate()?>"</p>
        <?php endforeach; ?>

        <form action="addCom" method="POST">
            <textarea id="texte" name="message"></textarea>
            <input type="hidden" name="movies_id" value="<?= $movie->id ?>"/>
            <input type="hidden" name="date" value="<?= date('Y-m-d H:i:s')?>" />
            <input type="submit" name="addCom" value="Valider">
        </form>
</div>
