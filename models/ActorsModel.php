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
        $query = "SELECT actors.* FROM actors INNER JOIN movies ON movies.id = actors.movies_id WHERE movies_id =" . $id;
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Actors::class);
    }

}