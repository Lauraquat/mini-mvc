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
    
    function addActor($addActor, $name, $pseudo, $photo) {
        if (isset($addActor)) {
            $actor =  $this->actorsModel->addActor($name, $pseudo, $photo);
        }


        var_dump($_POST);

        
        $actors = $this->actorsModel->getActors();
        $movies = $this->moviesModel->getMovies();
        $moviesActors = $this->moviesModel->getMoviesByActor();

        return Template::render("views/global/listActors.php", array(
            "actors" => $actors,
            "actor" => $actor,
            "movies" => $movies,
            "moviesActors" => $moviesActors
        ));
    }
}