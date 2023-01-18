<?php

namespace controllers;

use controllers\base\WebController;
use models\MoviesModel;
use utils\Template;

class MoviesController extends WebController
{
    private $moviesModel;
    function __construct()
    {
        $this->moviesModel = new MoviesModel();
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
        
        return Template::render("views/global/movie.php", array(
            "movie" => $movie
        ));
    }
}