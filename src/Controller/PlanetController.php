<?php

namespace App\Controller;

use App\Model\PlanetManager;
use Symfony\Component\HttpClient\HttpClient;

class PlanetController extends AbstractController
{

    public function index($id)
    {
        $planetManager = new PlanetManager();
        $planet = $planetManager->selectAll();

        $client = HttpClient::create();
        $response = $client->request('GET', 'https://api.le-systeme-solaire.net/rest.php/bodies?data=id%2Cname%2Cperihelion%2Cmass%2Cgravity%2CsideralOrbit%2CavgTemp.&order=id%2Casc&filter%5B%5D=isPlanet%2Ceq%2Ctrue');
        $content = $response->getContent();
        $content = $response->toArray();
        $oui = [];
        $planetName = $planetManager->selectOneById($id);
        foreach ($content as $contente) {
            foreach ($contente as $contentes) {
                if ($contentes['name'] === $planetName['PlanetName']) {
                    $oui = $contentes;
                }
            }
        }
        // recupérer la bonne planète 
        return $this->twig->render(
            'Planet/planet_layout.html.twig',
            [

                'planet' => $oui
            ]
        );
    }
}
