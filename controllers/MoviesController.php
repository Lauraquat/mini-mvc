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
        $test = "Bonjour";
        var_dump($test);
        return Template::render("views/global/movies.php", array("test" => $test));

        // $movies = $this->moviesModel->getMovie();
        
        // // $allMovies = [];

        // // foreach($movies as $movie){
        // //     $allMovies[$movie->order] = [
        // //         "name" => $movie->name,
        // //         "date" => $movie->date,
        // //         "img" => $movie->img,
        // //         "synopsis" => $movie->synopsis,
        // //         "ba" => $movie->ba,
        // //         "storie" => $movie->storie
        // //     ];
        // // }
           
        // // $data = $this->moviesModel->getDataByMovieId($movie->id); // Récupération des TODOS présents en base.
        // return Template::render("views/global/movies.php", array("movies" => $movies));
    }


    function getOneMovie($order){
        $movies = $this->moviesModel->getMovie();
        
        $allMovies = [];
        
        foreach($movies as $movie){
            $allMovies[$movie->order] = [
                "name" => $movie->name,
                "date" => $movie->date,
                "img" => $movie->img,
                "synopsis" => $movie->synopsis,
                "ba" => $movie->ba,
                "storie" => $movie->storie
            ];
        }
           
        // $data = $this->moviesModel->getDataByMovieId($movie->id); // Récupération des TODOS présents en base.
        return Template::render("views/global/movie.php", array(
            "movies" => $allMovies
        ));
    }
}