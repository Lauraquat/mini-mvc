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


        // Route vers la page d'inscription
        Route::Add('/register', function () {
            return Template::render('views/common/register.php');
        });

        //Route vers la page login
        Route::Add('/login', function () {
            return Template::render('views/common/login.php');
        });


        //Route vers la page logout
        Route::Add('/logout', function () {
            return Template::render('views/common/logout.php');
        });

        //        Exemple de limitation d'accès à une page en fonction de la SESSION.
        //        if (SessionHelpers::isLogin()) {
        //            Route::Add('/logout', [$main, 'home']);
        //        }
    }
}

