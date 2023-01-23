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
    
    function add($add) {
        if ($add) {        
            $formData = $_POST;
            $movieSelected = [];
            
            foreach($formData as $key => $data) {
                if ($key == "name" || $key == "pseudo" || $key == "photo" || $key == "add") {
                    
                } else {
                    $movieSelected[$key] = $data;
                }
            }

        } else {
            $movies = $this->moviesModel->getAll();
            return Template::render("views/addActor.php", ["movies" => $movies]);
        }
    }

}