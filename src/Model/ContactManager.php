<?php

namespace App\Model;

use PDO;

class ContactManager extends AbstractManager
{
    public const TABLE = "Reservation";

    public function selectContactInformation(string $orderBy = '', string $direction = 'ASC'): array
    {
        $query = 'SELECT * FROM ' . self::TABLE;
        if ($orderBy) {
            $query .= ' ORDER BY ' . $orderBy . ' ' . $direction;
        }

        return $this->pdo->query($query)->fetchAll();
    }
}
