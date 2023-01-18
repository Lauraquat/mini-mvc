<?php

namespace controllers;

use controllers\base\WebController;
use models\ImagesModel;
use utils\Template;

class GalleryController extends WebController
{
    private $imagesModel;
    
    public function __construct()
    {
        $this->imagesModel = new ImagesModel();
    }
    

    public function getAllImages(){
        $images = $this->imagesModel->getAllImages();
        
        return Template::render("views/global/gallery.php", array(
            "images" => $images,
        ));
    }
}