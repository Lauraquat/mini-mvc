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


    public function getOneMovie($id){
        $movie = $this->moviesModel->getMovieById($id);
        $actors = $this->actorsModel->getActorsByMovie($id);
        $images = $this->imagesModel->getImagesByMovie($id);
        $comments = $this->commentsModel->getCommentsByMovie($id);
        
        return Template::render("views/global/movie.php", array(
            "movie" => $movie,
            "images" => $images,
            "actors" => $actors,
            "comments" => $comments,
        ));
    }
    
    function add($name, $imgbaniere, $date, $img, $synopsis, $ba, $story) {
        
        $movies =  $this->moviesModel->add($name,$imgbaniere, $date, $img, $synopsis, $ba, $story);

        $movies = $this->moviesModel->getMovies();
        return Template::render("views/global/movies.php", array(
            "movies" => $movies,
        ));
    }


    function update($id, $name, $date, $img, $synopsis, $ba, $story) {
        $movie = $this->moviesModel->getMovieById($id);
        $actors = $this->actorsModel->getActorsByMovie($id);
        $images = $this->imagesModel->getImagesByMovie($id);
        $comments = $this->commentsModel->getCommentsByMovie($id);

        $movie->setName($name);
        $movie->setDate($date);
        $movie->setImg($img);
        $movie->setSynopsis($synopsis);
        $movie->setBa($ba);
        $movie->setStory($story);

        $this->moviesModel->update($movie);

        return Template::render("views/global/movie.php", array(
            "movie" => $movie,
            "images" => $images,
            "actors" => $actors,
            "comments" => $comments,
        ));
    }
    
    public function addCom($id){
        $movie = $this->moviesModel->getMovieById($id);
        $actors = $this->actorsModel->getActorsByMovie($id);
        $images = $this->imagesModel->getImagesByMovie($id);

        $this->commentsModel->addCom($_POST["pseudo"], $_POST["movies_id"], $_POST["commentaires"], $_POST["date"]);

        $comments = $this->commentsModel->getCommentsByMovie($id);

        return Template::render("views/global/movie.php", array(
            "movie" => $movie,
            "images" => $images,
            "actors" => $actors,    
            "comments"=> $comments,
    ));
}
}