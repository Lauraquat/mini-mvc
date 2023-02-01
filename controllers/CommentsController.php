<?php

namespace controllers;

use controllers\base\WebController;
use models\CommentsModel;
use utils\Template;

class CommentsController extends WebController
{
    private $commentsModel;
    
    public function __construct()
    {
        $this->commentsModel = new CommentsModel();
    }


    function addCom(){
            $comments =  $this->commentsModel->addCom($_POST["pseudo"], $_POST["movies_id"], $_POST["commentaires"], $_POST["date"]);


            return Template::render("views/global/movie.php", array(
            "comments" => $comments,
        ));
    }
}