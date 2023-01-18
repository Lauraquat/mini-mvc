<?php

namespace controllers;

use controllers\base\WebController;
use models\MoviesModel;
use models\ActorsModel;
use utils\Template;

class MoviesController extends WebController
{
    private $moviesModel;
    private $actorsModel;
    function __construct()
    {
        $this->moviesModel = new MoviesModel();
        $this->actorsModel = new ActorsModel();
    }
    
    function home(){
        $test = "Bonjour";
        return Template::render("views/global/home.php", array("test" => $test));

    }

    function getAllMovies()
    {
        $movies = $this->moviesModel->getMovies();
        
        return Template::render("views/global/movies.php", array(
            "movies" => $movies
        ));
    }


    function getOneMovie($orders){
        $movie = $this->moviesModel->getMovieByOrders($orders);
        $actors = $this->actorsModel->getActorsByMovie($movie->getId());
        
        return Template::render("views/global/movie.php", array(
            "movie" => $movie,
            "actors" => $actors
        ));
    }

    // function getActors($id){
    //     $actors = $this->moviesModel->getActorsByMovie($id);
        
    //     return Template::render("views/global/movie.php", array(
    //         "actors" => $actors
    //     ));
    // }
}