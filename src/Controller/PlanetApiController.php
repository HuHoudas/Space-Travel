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

    public function getPlanetPicture(int $id): string
    {
        $articleManager = new PlanetManager();
        $planets = $articleManager->selectOneById($id);

        return json_encode($planets);
    }

}