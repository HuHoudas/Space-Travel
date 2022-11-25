-- Active: 1668438981645@@127.0.0.1@3306@SpaceTravel

-- MySQL Script generated by MySQL Workbench

-- Thu 24 Nov 2022 11:28:42 AM CET

-- Model: New Model    Version: 1.0

-- MySQL Workbench Forward Engineering

CREATE TABLE
    `Planet` (
        `idPlanet` INT NOT NULL,
        `PlanetName` VARCHAR(45) NULL,
        `PlanetCoord` VARCHAR(45) NULL,
        `PlanetURL` VARCHAR(100),
        `Description` TEXT NULL,
        PRIMARY KEY (`idPlanet`)
    ) ENGINE = InnoDB;

INSERT INTO
    `Planet` (
        `idPlanet`,
        `PlanetName`,
        `PlanetCoord`,
        `Description`
    )
VALUES (
        2,
        "Jupiter",
        "oui",
        "- Visite guidée de ses gisements de gaz
- Pratique de sports extrêmes a des température glaciales
- Chasse aux tornades géantes
- Séjour en demi-pension dans des cabines suspendues au sol, sujettes à des vents de 450km/h
Prix du voyage: 250.000€ par personne pour le voyage A/R
Prix des prestations sur place à la demande"
    ), (
        1,
        "Mars",
        "oui",
        "- Visite guidée de son exploitation énergétique
- Découverte autonome de la planète en rover
- Rencontre avec une forme de vie extraterrestre
- Séjour en demi-pension dans des bulles individuelles thermorégulées
Prix du voyage: 250.000€ par personne pour le voyage A/R
Prix des prestations sur place à la demande
* Un mars offert a l'achet du ticket"
    ), (
        3,
        "Vénus",
        "oui",
        "- Visite des sources chaudes naturelles réputées dans toute la galaxie
- Pass offert aux 5 clubs de la base (1 conso offerte)
- Séances de zumba obligatoires tous les matins à 6 heures VST
- Séjour en demi-pension dans des cabines 5 étoiles (oxygène aromatisé inclus)
Prix du voyage: 250.000€ par personne pour le voyage A/R
Prix des prestations sur place à la demande"
    ), (
        4,
        "La Terre",
        "oui",
        "- Séjour en orbite autour de la Terre
- Nettoyage des déchets spatiaux
- Séjour en demi-pension dans une ancienne station spatiale
Prix du voyage: 120.000€ par personne tout compris
(En partenariat avec la société Galiffreyan Transports)"
    ), (
        5,
        "Pandora",
        "oui",
        "- Découverte des coutumes pandoriennes
- Acrobranche sans filet dans les forêts isolées
- Visite des grottes bioluminescentes
- Séjour en demi-pension dans des cabanes sur la cime d'arbres millénaires
Prix du voyage: 350.000€ par personne pour le voyage A/R
Prix des prestations sur place à la demande"
    );

-- -----------------------------------------------------

-- Table `mydb`.`Activity`

-- -----------------------------------------------------

CREATE TABLE
    `Activity` (
        `idActivité` INT NOT NULL,
        `ActivityName` VARCHAR(45) NULL,
        `Planet_idPlanet` INT NOT NULL,
        PRIMARY KEY (`idActivité`),
        INDEX `fk_Activity_Planet1_idx` (`Planet_idPlanet` ASC) VISIBLE,
        CONSTRAINT `fk_Activity_Planet1` FOREIGN KEY (`Planet_idPlanet`) REFERENCES `mydb`.`Planet` (`idPlanet`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------

-- Table `mydb`.`Actualité`

-- -----------------------------------------------------

CREATE TABLE
    `Actualité` (
        `idActuality` INT NOT NULL,
        `ActualityName` VARCHAR(45) NULL,
        `Planet_idPlanet` INT NOT NULL,
        PRIMARY KEY (`idActuality`),
        INDEX `fk_Actualité_Planet_idx` (`Planet_idPlanet` ASC) VISIBLE,
        CONSTRAINT `fk_Actualité_Planet` FOREIGN KEY (`Planet_idPlanet`) REFERENCES `mydb`.`Planet` (`idPlanet`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------

-- Table `mydb`.`Reservation`

-- -----------------------------------------------------

CREATE TABLE
    `Reservation` (
        `idReservation` INT NOT NULL,
        `ReservationName` VARCHAR(45) NULL,
        `ReservationPlace` VARCHAR(45) NULL,
        `Planet_idPlanet` INT NOT NULL,
        `ReservationPrice` INT NOT NULL,
        `ReservationLength` VARCHAR(45) NULL,
        PRIMARY KEY (`idReservation`),
        INDEX `fk_Reservation_Planet1_idx` (`Planet_idPlanet` ASC) VISIBLE,
        CONSTRAINT `fk_Reservation_Planet1` FOREIGN KEY (`Planet_idPlanet`) REFERENCES `mydb`.`Planet` (`idPlanet`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

-- -----------------------------------------------------

-- Table `mydb`.`Travel`

-- -----------------------------------------------------

CREATE TABLE
    `Travel` (
        `Planet_idPlanet` INT NOT NULL,
        `idTravel` VARCHAR(45) NOT NULL,
        `TravelTime` VARCHAR(45) NULL,
        `TravelName` VARCHAR(45) NULL,
        INDEX `fk_Travel_Planet1_idx` (`Planet_idPlanet` ASC) VISIBLE,
        PRIMARY KEY (`idTravel`),
        CONSTRAINT `fk_Travel_Planet1` FOREIGN KEY (`Planet_idPlanet`) REFERENCES `mydb`.`Planet` (`idPlanet`) ON DELETE NO ACTION ON UPDATE NO ACTION
    ) ENGINE = InnoDB;

SET SQL_MODE = @OLD_SQL_MODE;

SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;

SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;