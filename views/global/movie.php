<div class="container mt-5">
    <div class="row">
        <div class="card">
            <div class="card-body">
                <h2><?= $movies[1]["name"] ?></h2>   
                <div class="px-2">Film créé en <?= $movies[$movies->order]["date"] ?></div><br/><br/>
                <div class="px-2"> <img src="<?= $movies[$movies->order]['img'] ?>"></div><br/><br/>
                <H3>Synopsis</H3>
                <div class="px-2"> <?= $movies[$movies->order]["synopsis"] ?></div><br/><br/>
                <H3>Bande Annonce</H3>
                <iframe width="420" height="345" src='<?= $movies[$movies->order]["ba"] ?>' frameborder="0" allowfullscreen></iframe><br/><br/>
                <H3>Storie</H3>
                <div class="px-2"> <?= $movies[$movies->order]["storie"] ?></div><br/><br/>
            </div>
        </div>
    </div>
</div>
