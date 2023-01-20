<?php

namespace controllers;

use controllers\base\WebController;
use models\ActorsModel;
use models\ImagesModel;
use models\MoviesModel;
use utils\Template;

class MoviesController extends WebController
{
    private $actorsModel;
    private $imagesModel;
    private $moviesModel;
    
    public function __construct()
    {
        $this->actorsModel = new ActorsModel();
        $this->imagesModel = new ImagesModel();
        $this->moviesModel = new MoviesModel();
    }
    
    public function home(){
        $test = "Bonjour";
        return Template::render("views/global/home.php", array("test" => $test));

    }

    public function getAllMovies()
    {
        $movies = $this->moviesModel->getMovies();
        
        return Template::render("views/global/movies.php", array(
            "movies" => $movies
        ));
    }


    public function getOneMovie($orders){
        $movie = $this->moviesModel->getMovieByOrders($orders);
        $images = $this->imagesModel->getImagesByMovie($movie->getId());
        $actors = $this->actorsModel->getActors();

        
        return Template::render("views/global/movie.php", array(
            "movie" => $movie,
            "images" => $images,
            "actors" => $actors
        ));
    }
}