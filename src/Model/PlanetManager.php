<?php

namespace App\Model;

use PDO;

class PlanetManager extends AbstractManager 
{
    public const TABLE = 'Planet';

    public function selectOneById(int $id): array
    {
        $statement = $this->pdo->prepare("SELECT * FROM " . self::TABLE . " WHERE id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch();
    }

    public function selectRandomPicture(string $picture)
    {
    $statement = $this->pdo->query("SELECT * FROM " . self::TABLE . " WHERE id=:id");
    $statement->bindValue('id', $id, \PDO::PARAM_INT);
    $statement->bindValue('id', $url, \PDO::PARAM_STR);
    $statement->execute();

    return "$picture";
    }
}