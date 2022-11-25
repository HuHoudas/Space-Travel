<?php

namespace App\Controller;


class ThanksController extends AbstractController
{
    public function index(): string
    {

        return $this->twig->render('Home/thank.html.twig', [
        ]);
    }

}
