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
    
   


}