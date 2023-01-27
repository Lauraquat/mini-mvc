<?php

namespace models;

use models\base\SQL;
use models\classes\Actors;

class ActorsModel extends SQL
{
    public function __construct()
    {
    }

    public function getActors(): Array
    {
        $query = "SELECT * FROM actors";
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Actors::class);  
    }

    
    public function getActorsByMovie($id)
    {
        $query = "SELECT a.* FROM actors a WHERE a.id IN (SELECT actors_id FROM movies_actors WHERE movies_id =" . $id .")";
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Actors::class);
    }

    
    function addActor($name, $pseudo, $photo)
    {
        $stmt = $this->getPdo()->prepare("INSERT INTO actors (`name`, `pseudo`, `photo`) VALUES (?, ?, ?)");
        $stmt->execute([$name, $pseudo, $photo]);
        $stmt->fetch();
        return $this->getPdo()->lastInsertId();
    }

    function saveActorMovies($movie_id, $actors_id){
        //Insérer dans table movies_actors avec un foreach par movie dans controller
    }

}