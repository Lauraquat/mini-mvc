<?php

namespace models;

use models\base\SQL;
use models\classes\Movie;

class MoviesModel extends SQL
{
    public function __construct()
    {
        parent::__construct('movie', 'name');
    }

    public function getMovie()
    {
        $query = "SELECT * FROM movies";
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Movie::class);  
    }

    public function getDataByMovieId($order): array
    {
        $query = "SELECT * FROM movies WHERE order = ?";
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute([$order]);
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Movie::class);
    }


    public function getActorsByMovies($order)
    {
        $query = "SELECT * FROM movies WHERE order = ?";     //jointure à faire avec base actors
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute([$order]);
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Movie::class);
    }
}