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

    public function getPlanetInfo($id): string
    {
        $planetManager = new PlanetManager();
        $planet = $planetManager->selectOneById($id);

        return json_encode($planet);
    }

}