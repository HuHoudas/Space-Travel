<?php

namespace App\Controller;

use App\Model\ContactManager;

class ContactController extends AbstractController
{
    public function index(): string
    {

        return $this->twig->render('form/contact.html.twig', [
        ]);
    }

}
