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

    public function getDataByMovieId($id): array
    {
        $query = "SELECT * FROM movies WHERE id = ?";
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute([$id]);
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Movie::class);
    }


    // public function getMoviesByActors($id)
    // {
    //     $query = "SELECT * FROM movies WHERE id = ?";     //jointure à faire avec base actors
    //     $stmt = SQL::getPdo()->prepare($query);
    //     $stmt->execute([$id]);
    //     return $stmt->fetchAll(\PDO::FETCH_CLASS, Movie::class);
    // }
}