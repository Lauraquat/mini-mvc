<?php

namespace models;

use models\base\SQL;
use models\classes\Comments;

class CommentsModel extends SQL
{
    public function __construct()
    {
    }

    public function getComments(): Array
    {
        $query = "SELECT * FROM comments";
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Comments::class);  
    }
    
    public function getCommentsByMovie($id)
    {
        $query = "SELECT commentaires.* FROM comments as commentaires INNER JOIN movies ON movies.id = commentaires.movies_id WHERE movies_id =" . $id;
        $stmt = SQL::getPdo()->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Comments::class);
    }

    public function addCom($movies_id, $users_id, $commentaires, $comments_date){
        $stmt = $this->getPdo()->prepare("INSERT INTO comments (`movies_id`, `users_id`, `commentaires`, `comments_date`) VALUES (?, ?, ?, ?)");
        $stmt->execute([$movies_id, $users_id, $commentaires, $comments_date]);
        $stmt->fetch();
        return $this->getPdo()->lastInsertId();
    }

}