<?php

namespace App\Controller;


class HomeController extends AbstractController
{
    public function index(): string
    {

        return $this->twig->render('Home/home.html.twig', [
        ]);
    }

}
