<?php

namespace controllers;

use controllers\base\WebController;
use models\ActorsModel;
use models\MoviesModel;
use utils\Template;

class ActorsController extends WebController
{
    private $actorsModel;
    private $moviesModel;
    
    public function __construct()
    {
        $this->actorsModel = new ActorsModel();
        $this->moviesModel = new MoviesModel();
    }
    

    public function getAllMoviesByActor(){
        $actors = $this->actorsModel->getActors();
        $movies = $this->moviesModel->getMovies();
        $moviesActors = $this->moviesModel->getMoviesByActor();
                  
        return Template::render("views/global/listActors.php", array(
            "actors" => $actors,
            "movies" => $movies,
            "moviesActors" => $moviesActors
        ));
    }
    
    function addActor() {

        // $movies=[];
        // foreach($_POST['movies'] as $movieId){           //TODO comment récupérer tous les fims sélectionnés?
        //     $movies[]=$movieId;
        // }

        $actorId =  $this->actorsModel->addActor($_POST['name'], $_POST['pseudo'], $_POST['photo'], $_POST['movies']);
        $movieId = $_POST['movies'];

        $this->actorsModel->saveActorMovies($movieId, $actorId);
        
        $actors = $this->actorsModel->getActors();
        $movies = $this->moviesModel->getMovies();
        $moviesActors = $this->moviesModel->getMoviesByActor();

        return Template::render("views/global/listActors.php", array(
            "actors" => $actors,
            "movies" => $movies,
            "moviesActors" => $moviesActors
        ));
    }
}