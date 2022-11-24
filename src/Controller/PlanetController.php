<?php

namespace App\Controller;

use App\Model\PlanetManager;

class PlanetController extends AbstractController
{

    public function index()
    {
        $planetManager = new PlanetManager();
        $planets = $planetManager->selectAll();

        return $this->twig->render(
            'Planet/planet_layout.html.twig',
            [
                
                'planets' => $planets
            ]
        );
    }
}
