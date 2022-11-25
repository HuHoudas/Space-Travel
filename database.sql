-- Active: 1665753972491@@127.0.0.1@3306@SpaceTravel
-- MySQL Script generated by MySQL Workbench
-- Thu 24 Nov 2022 11:28:42 AM CET
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Table `mydb`.`Planet`
-- -----------------------------------------------------
CREATE TABLE `Planet` (
  `idPlanet` INT NOT NULL,
  `PlanetName` VARCHAR(45) NULL,
  `PlanetCoord` VARCHAR(45) NULL,
  PRIMARY KEY (`idPlanet`))
ENGINE = InnoDB;

ALTER TABLE `Planet` ADD `PlanetURL` VARCHAR(100);


INSERT INTO `Planet` (`idPlanet`, `PlanetName`, `PlanetCoord`) VALUES (2, "jupiter", "oui" ), (1, "Mars", "oui"), (3, "Vénus", "oui"), (4, "La Terre", "oui"), (5, "Pandora", "oui");
-- -----------------------------------------------------
-- Table `mydb`.`Activity`
-- -----------------------------------------------------
CREATE TABLE `Activity` (
  `idActivité` INT NOT NULL,
  `ActivityName` VARCHAR(45) NULL,
  `Planet_idPlanet` INT NOT NULL,
  PRIMARY KEY (`idActivité`),
  INDEX `fk_Activity_Planet1_idx` (`Planet_idPlanet` ASC) VISIBLE,
  CONSTRAINT `fk_Activity_Planet1`
    FOREIGN KEY (`Planet_idPlanet`)
    REFERENCES `mydb`.`Planet` (`idPlanet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Actualité`
-- -----------------------------------------------------
CREATE TABLE `Actualité` (
  `idActuality` INT NOT NULL,
  `ActualityName` VARCHAR(45) NULL,
  `Planet_idPlanet` INT NOT NULL,
  PRIMARY KEY (`idActuality`),
  INDEX `fk_Actualité_Planet_idx` (`Planet_idPlanet` ASC) VISIBLE,
  CONSTRAINT `fk_Actualité_Planet`
    FOREIGN KEY (`Planet_idPlanet`)
    REFERENCES `mydb`.`Planet` (`idPlanet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Reservation`
-- -----------------------------------------------------
CREATE TABLE `Reservation` (
  `idReservation` INT NOT NULL,
  `ReservationName` VARCHAR(45) NULL,
  `ReservationPlace` VARCHAR(45) NULL,
  `Planet_idPlanet` INT NOT NULL,
  `ReservationPrice` INT NOT NULL,
  `ReservationLength` VARCHAR(45) NULL,
  PRIMARY KEY (`idReservation`),
  INDEX `fk_Reservation_Planet1_idx` (`Planet_idPlanet` ASC) VISIBLE,
  CONSTRAINT `fk_Reservation_Planet1`
    FOREIGN KEY (`Planet_idPlanet`)
    REFERENCES `mydb`.`Planet` (`idPlanet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Travel`
-- -----------------------------------------------------
CREATE TABLE `Travel` (
  `Planet_idPlanet` INT NOT NULL,
  `idTravel` VARCHAR(45) NOT NULL,
  `TravelTime` VARCHAR(45) NULL,
  `TravelName` VARCHAR(45) NULL,
  INDEX `fk_Travel_Planet1_idx` (`Planet_idPlanet` ASC) VISIBLE,
  PRIMARY KEY (`idTravel`),
  CONSTRAINT `fk_Travel_Planet1`
    FOREIGN KEY (`Planet_idPlanet`)
    REFERENCES `mydb`.`Planet` (`idPlanet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
