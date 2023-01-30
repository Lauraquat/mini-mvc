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
            <h3>Ecrit par :<?= $comment->getPseudo()?></h4>
            <h4><?= $comment->getCommentaires()?></h4>
            <p>Ecrit le "<?= $comment->getCommentsDate()?>"</p>
        <?php endforeach; ?>

        <form action="addCom" method="POST">
            <input type="text" name="pseudo" id=""/>
            <textarea id="texte" name="message"></textarea>
            <input type="hidden" name="movies_id" value="<?= $movie->id ?>"/>
            <input name="date" type="hidden" value="<?= date('Y-m-d H:i:s')?>" />
            <input type="submit" name="addCom" value="Valider">
        </form>
</div>
