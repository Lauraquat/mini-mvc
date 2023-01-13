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
        $movie = $this->moviesModel->getMovie();
        
        var_dump($movie);

        $data = $this->moviesModel->getDataByMovieId($movie); // Récupération des TODOS présents en base.
        return Template::render("views/global/home.php", array("data" => $data));
    }

    function exemple($parametre = 'Valeur par défaut'): string
    {
        return "Voilà votre paramètre : $parametre";
    }
}