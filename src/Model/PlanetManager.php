<?php

namespace App\Model;

use PDO;

class PlanetManager extends AbstractManager 
{
    public const TABLE = 'Planet';

    public function selectOneById(int $id): array
    {
        $statement = $this->pdo->query("SELECT * FROM " . self::TABLE . " WHERE id=:id");
        return $statement->fetch();
    }
}