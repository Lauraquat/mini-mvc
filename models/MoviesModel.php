<?php

namespace models;

use models\base\SQL;
use models\classes\Comments;
use models\classes\Movie;

class MoviesModel extends SQL
{
    public function __construct()
    {
    }

    public function getMovies(): Array
    {
        $query = "SELECT * FROM movies";
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Movie::class);  
    }


    public function getMovieByOrders($orders): Movie
    {
        $query = "SELECT * FROM movies WHERE orders =" . $orders;
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchObject(Movie::class);
    }

    public function getMoviesByActor()
    {
        $query = "SELECT * FROM movies_actors";
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Movie::class);
    } 
      
    public function add($orders, $name,$img_baniere, $date, $img, $synopsis, $ba, $story)
    {
        $stmt = $this->getPdo()->prepare("INSERT INTO movies (orders, name, img_baniere, date, img, synopsis, ba, story) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->execute([$orders, $name,$img_baniere, $date, $img, $synopsis, $ba, $story]);
        $stmt->fetch();
        return $this->getPdo()->lastInsertId();
    }

}