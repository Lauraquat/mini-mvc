<div class="img-baniere" style="background-image: url( <?= $movie->getImgBaniere() ?>)"> 
    <?php if(isset($_SESSION['id'])):?>
        <button class="linkadd z-1" onclick="openForm()">Modifier le film</button>
    <?php endif; ?>
            
            <!-- <form action="updateMovie" method="POST" class="forms"> -->
        <form action="/update/<?= $movie->getId()?>" method="POST" id="forms" class="z-1">
            <h2>Modifier le film</h2>
            <input type="text" name="name" placeholder="Nom du film" value="<?= $movie->getName()?>">
            <input type="text" name="imgbaniere" placeholder="Lien image banière" value="<?= $movie->getImgBaniere()?>">
            <input type="number" name="date" placeholder="Année de sortie" min="1900" value="<?= $movie->getDate()?>">
            <input type="text" name="img" placeholder="Lien de l'image" value="<?= $movie->getImg()?>">
            <input type="textarea" name="synopsis" placeholder="Synopsis du film" value="<?= $movie->getSynopsis()?>" >
            <input type="text" name="ba" placeholder="Lien de la bande annonce"  value="<?= $movie->getBa()?>">
            <input type="textarea" name="story" placeholder="Histoire"  value="<?= $movie->getStory()?>">
            <input type="submit" name="edit" value="Modifier" class="btn-submit"/>
        </form>
        
        <div class="bg-single-movie"></div>      
        <div class="z-1">
            <h1 ><?= $movie->getName() ?></h1>   
            <div>Film créé en <?= $movie->getDate() ?></div>
        </div>
        <iframe class="bafilm z-1" src='<?= $movie->getBa() ?>' frameborder="0" allowfullscreen></iframe>
        <div class="z-1 story"><?= $movie->getStory() ?></div>
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
            <div class="commentsdiv">
            <?php foreach($comments as $comment):?>
                <div class="com">            
                <h3>
                    "<?= $comment->getCommentaires()?>"
                <br> 
                 par <?= $comment->getPseudo()?>
                </h3>
                <p>Ecrit le "<?= $comment->getCommentsDate()?>"</p>
            </div>
            <?php endforeach; ?>
            </div>
            
            <form action="/addCom/<?= $movie->getId()?>" method="POST" class="forms-login">
                <h4>Ajouter un commentaire</h4>
                <input type="text" name="pseudo" id="pseudo" placeholder="Votre pseudo"/>
                <input type="hidden" name="movies_id" id="movies_id" value="<?= $movie->id ?>"/>
                <textarea id="texte" name="commentaires" id="commentaires" placeholder="Votre commentaire"></textarea>
                <input name="date" type="hidden" id="date" value="<?= date('Y-m-d H:i:s')?>" />
                <input type="submit" name="addCom" class="btn-submit" value="Valider">
            </form>
        </div>
