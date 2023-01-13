<?php

namespace routes;

use controllers\MoviesController;
use routes\base\Route;
use utils\Template;

class Web
{
    function __construct()
    {
        $main = new MoviesController();

        // Appel la méthode « home » dans le contrôleur $main.
        Route::Add('/', [$main, 'home']);
        Route::Add('/movies', [$main, 'getAllMovies']);

        Route::Add('/movie/{order}', [$main, 'getOneMovie']);

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

