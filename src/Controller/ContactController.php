<?php

namespace App\Controller;

class ContactController extends AbstractController
{

    public const MAX_FULLNAME_LENGTH = 90;
    public const MAX_EMAIL_LENGTH = 255;

    public function index(string $message = ''): string
    {
        $contact = [];
        $errors = [];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $contact = array_map('trim', $_POST);

            $errors = $this->verification($contact);
            if (empty($errors)) {

                header('location: /contact?message=success');
                return '';
            }
        }
       
        return $this->twig->render(
            'form/contact.html.twig',
            ['errors' => $errors, 'contact' => $contact, 'message' => $message]
        );
    }

    private function verification(array $contact): array
    {
        $errors = [];

        if (strlen($contact['lastname']) > self::MAX_FULLNAME_LENGTH) {
            $errors[] = 'Le nom doit être inférieur à ' . self::MAX_FULLNAME_LENGTH . ' caractères';
        }

        if (strlen($contact['firstname']) > self::MAX_FULLNAME_LENGTH) {
            $errors[] = 'Le nom doit être inférieur à ' . self::MAX_FULLNAME_LENGTH . ' caractères';
        }

        if (strlen($contact['email']) > self::MAX_EMAIL_LENGTH) {
            $errors[] = 'L\'email doit être inférieur à ' . self::MAX_EMAIL_LENGTH . ' caractères';
        }

        if (!filter_var(($contact['email']), FILTER_VALIDATE_EMAIL)) {
            $errors[] = 'Le format d\'email est incorrect';
        }

        $errors = $this->verifEmpty($contact, $errors);
        return $errors;
    }

    private function verifEmpty(array $contact, array $errors): array
    {
        if (empty($contact['lastname'])) {
            $errors[] = 'Le nom est obligatoire';
        }

        if (empty($contact['firstname'])) {
            $errors[] = 'Le nom est obligatoire';
        }

        if (empty($contact['email'])) {
            $errors[] = 'L\'email est obligatoire';
        }

        return $errors;
    }
}
