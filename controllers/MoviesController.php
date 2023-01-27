<?php

namespace controllers;

use controllers\base\WebController;
use models\ActorsModel;
use models\ImagesModel;
use models\MoviesModel;
use models\CommentsModel;
use utils\Template;

class MoviesController extends WebController
{
    private $actorsModel;
    private $imagesModel;
    private $moviesModel;
    private $commentsModel;
    
    public function __construct()
    {
        $this->actorsModel = new ActorsModel();
        $this->imagesModel = new ImagesModel();
        $this->moviesModel = new MoviesModel();
        $this->commentsModel = new CommentsModel();
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
        // $actors = $this->actorsModel->getActors();
        $actors = $this->actorsModel->getActorsByMovie($movie->getId());

        echo '<pre>' , var_dump($movie->getId()) , '</pre>';
        $images = $this->imagesModel->getImagesByMovie($movie->getId());
        $comments = $this->commentsModel->getCommentsByMovie($movie->getId());

        
        return Template::render("views/global/movie.php", array(
            "movie" => $movie,
            "images" => $images,
            "actors" => $actors,
            "comments" => $comments,
        ));
    }
    
    function add($add ,$orders, $name, $date, $img, $synopsis, $ba, $story) {
        if (isset($add)) {

            if ($date == "") {
                echo "Impossible d'ajouter sans une date valide";
            } else {
                $movies =  $this->moviesModel->add($orders, $name, $date, $img, $synopsis, $ba, $story);
            }
        }

        return Template::render("/movies.php", array(
            "movies" => $movies,
        ));
    }

}