<?php

namespace routes;

use controllers\ActorsController;
use controllers\GalleryController;
use controllers\MoviesController;
use routes\base\Route;
use utils\Template;

class Web
{
    function __construct()
    {
        $movies = new MoviesController();

        // Appel des méthodes dans le contrôleur $movies.
        Route::Add('/', [$movies, 'home']);
        Route::Add('/movies', [$movies, 'getAllMovies']);
        Route::Add('/movie/{orders}', [$movies, 'getOneMovie']);


        $gallery = new GalleryController();
        
        // Appel des méthodes dans le contrôleur $gallery.
        Route::Add('/gallery', [$gallery, 'getAllImages']);
        
        
        $actors = new ActorsController();
        
        // Appel des méthodes dans le contrôleur $actors.
        Route::Add('/actors', [$actors, 'getAllMoviesByActor']);



        // Appel la fonction inline dans le routeur.
        // Utile pour du code très simple, où un tes, l'utilisation d'un contrôleur est préférable.
        Route::Add('/about', function () {
            return Template::render('views/global/about.php');
        });

        //        Exemple de limitation d'accès à une page en fonction de la SESSION.
        //        if (SessionHelpers::isLogin()) {
        //            Route::Add('/logout', [$main, 'home']);
        //        }
    }
}

