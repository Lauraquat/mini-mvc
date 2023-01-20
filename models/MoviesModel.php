<?php

namespace models;

use models\base\SQL;
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
}