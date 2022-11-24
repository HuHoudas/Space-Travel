<?php

namespace App\Controller;

use App\Model\PlanetManager;

class PlanetApiController extends AbstractController
{
    public function __construct()
    {
        parent::__construct();

        header('Content-Type: application/json');
    }

    public function getPlanetPicture(): string
    {
        $articleManager = new PlanetManager();
        $planets = $articleManager->selectOneByName();

        return json_encode($planets);
    }
    
}