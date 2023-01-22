
<div class="container mt-5">
    <div class="row">
        <div class="card">
            <div class="card-body">
                <h2><?= $movie->getName() ?></h2>   
                <div class="px-2">Film créé en <?= $movie->getDate() ?></div><br/><br/>
                <div class="px-2"> <img width="20%" src="<?= $movie->getImg() ?>"></div><br/><br/>
                
                <H3>Synopsis</H3>
                <div class="px-2"> <?= $movie->getSynopsis() ?></div><br/><br/>
                
                <H3>Bande Annonce</H3>
                <iframe width="420" height="345" src='<?= $movie->getBa() ?>' frameborder="0" allowfullscreen></iframe><br/><br/>
                
                <H3>Story</H3>
                <div class="px-2"> <?= $movie->getStory() ?></div><br/>
                            
                <h3>Acteurs</h3>
                <?php foreach($actors as $actor):?>
                    <h4><?= $actor->getPseudo()?></h4>
                    <p>Interprété par : <?= $actor->getName()?></p>
                    <img width="20%" src="<?= $actor->getPhoto()?>"></img>
                <?php endforeach; ?>
                    
                <h3>Galerie</h3>
                <?php foreach($images as $image):?>
                    <img width="20%" src="<?= $image->getImage()?>"></img>
                <?php endforeach; ?>
                
                <h3>Commentaires</h3>
                <?php foreach($comments as $comment):?>
                    <h4><?= $comment->getCommentaires()?></h4>
                    <p>Ecrit le<?= $comment->getCommentsDate()?></p>
                <?php endforeach; ?>
<!-- 
                <form action="./addCom" method="post">
                    <div>
                        <input id="texte" name="texte" type="text" class="form-control" placeholder="Ajouter un commentaire" aria-label="My new idea" aria-describedby="basic-addon1" />
                        <input type="button" value="Valider">
                    </div>
                </form> -->
            </div>
        </div>
    </div>
</div>
