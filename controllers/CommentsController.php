<?php

namespace controllers;

use controllers\base\WebController;
use models\CommentsModel;
use models\ActorsModel;
use models\ImagesModel;
use models\MoviesModel;
use utils\Template;

class CommentsController extends WebController
{
    private $commentsModel;
    private $actorsModel;
    private $imagesModel;
    private $moviesModel;
    
    public function __construct()
    {
        $this->actorsModel = new ActorsModel();
        $this->imagesModel = new ImagesModel();
        $this->moviesModel = new MoviesModel();
        $this->commentsModel = new CommentsModel();
    }

}