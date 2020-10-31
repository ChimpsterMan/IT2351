-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema assignment_5_school_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema assignment_5_school_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `assignment_5_school_db` DEFAULT CHARACTER SET utf8 ;
USE `assignment_5_school_db` ;

-- -----------------------------------------------------
-- Table `assignment_5_school_db`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignment_5_school_db`.`students` (
  `student_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `major` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `studentscol_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `assignment_5_school_db`.`student_classes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `assignment_5_school_db`.`student_classes` (
  `student_id` INT NOT NULL,
  `class_sequence` INT NOT NULL,
  `class` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`, `class_sequence`),
  CONSTRAINT `student_id`
    FOREIGN KEY (`student_id`)
    REFERENCES `assignment_5_school_db`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
