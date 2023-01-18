<?php

namespace models;

use models\base\SQL;
use models\classes\Images;

class ImagesModel extends SQL
{
    public function __construct()
    {
    }


    public function getAllImages()
    {
        $query = "SELECT * FROM images";
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Images::class);
    }


    public function getImagesByMovie($id)
    {
        $query = "SELECT images.* FROM movies_images as images INNER JOIN movies ON movies.id = images.movies_id WHERE movies_id =" . $id;
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Images::class);
    }
}