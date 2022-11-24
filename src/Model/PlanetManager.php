<?php

namespace App\Model;

use PDO;
use Twig\TokenParser\FlushTokenParser;

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

    public function selectRandomPicture()
    {
        $statement = $this->pdo->query("SELECT * FROM " . self::TABLE . " WHERE id=:id");
        $statement = fetch();
    }
}