<?php

namespace App\Controller;

class SolarSystemeController extends AbstractController
{
    public function index()
    {
        return $this->twig->render("SolarSysteme/SolarSysteme.html.twig");
    }
}