-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema usertest
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema usertest
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `usertest` DEFAULT CHARACTER SET utf8 ;
USE `usertest` ;

-- -----------------------------------------------------
-- Table `usertest`.`Tool`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usertest`.`Tool` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ToolName` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `usertest`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usertest`.`User` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `UserName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `usertest`.`Tool_has_User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usertest`.`Tool_has_User` (
  `Tool_Id` INT UNSIGNED NOT NULL,
  `User_Id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Tool_Id`, `User_Id`),
  INDEX `fk_Tool_has_User_User1_idx` (`User_Id` ASC),
  INDEX `fk_Tool_has_User_Tool_idx` (`Tool_Id` ASC),
  CONSTRAINT `fk_Tool_has_User_Tool`
    FOREIGN KEY (`Tool_Id`)
    REFERENCES `usertest`.`Tool` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tool_has_User_User1`
    FOREIGN KEY (`User_Id`)
    REFERENCES `usertest`.`User` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `usertest`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usertest`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
