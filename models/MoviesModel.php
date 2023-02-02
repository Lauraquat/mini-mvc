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


    public function getMovieById($id): Movie
    {
        $query = "SELECT * FROM movies WHERE id =" . $id;
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
      
    public function add($name,$imgbaniere, $date, $img, $synopsis, $ba, $story)
    {
        $stmt = $this->getPdo()->prepare("INSERT INTO movies (name, imgbaniere, date, img, synopsis, ba, story) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->execute([$name, $imgbaniere, $date, $img, $synopsis, $ba, $story]);
        $stmt->fetch();
    }

    public function update($movie)
    {
        $stmt = $this->getPdo()->prepare("UPDATE movies SET name = ?, imgbaniere = ?, date = ?, img = ?, synopsis = ?, ba = ?, story = ? WHERE id =" . $movie->getId());
        $stmt->execute([$movie->getName(),$movie->getImgBaniere(), $movie->getDate(), $movie->getImg(), $movie->getSynopsis(), $movie->getBa(), $movie->getStory()]);
    }

    
}