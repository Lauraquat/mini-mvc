<?php

namespace controllers;

use controllers\base\WebController;
use models\MoviesModel;
use utils\Template;

class SampleWebController extends WebController
{
    private $moviesModel;
    function __construct()
    {
        $this->moviesModel = new MoviesModel();
    }
    

    function home()
    {
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
        // var_dump($allMovies);
           
        // $data = $this->moviesModel->getDataByMovieId($movie->id); // Récupération des TODOS présents en base.
        return Template::render("views/global/home.php", array("movies" => $allMovies));
    }

    function exemple($parametre = 'Valeur par défaut'): string
    {
        return "Voilà votre paramètre : $parametre";
    }
}