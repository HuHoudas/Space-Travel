<?php

namespace App\Controller;

use App\Model\PlanetManager;
use Symfony\Component\HttpClient\HttpClient;

class PlanetApiController extends AbstractController
{
    public function __construct()
    {
        parent::__construct();

        header('Content-Type: application/json');
    }

    public function getPlanetInfo($id): string
    {
        var_dump($id);
        exit();
        $planetManager = new PlanetManager();
        $planet = $planetManager->selectOneById($id);

  
    }
}
