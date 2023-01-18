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
                <div class="px-2"> <?= $movie->getStory() ?></div><br/><br/>
            </div>
        </div>
    </div>
</div>
