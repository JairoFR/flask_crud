-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_usuarios
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `db_usuarios` ;

-- -----------------------------------------------------
-- Schema db_usuarios
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_usuarios` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema esquema_usuario
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `esquema_usuario` ;

-- -----------------------------------------------------
-- Schema esquema_usuario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `esquema_usuario` DEFAULT CHARACTER SET utf8mb3 ;
USE `db_usuarios` ;

-- -----------------------------------------------------
-- Table `db_usuarios`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_usuarios`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NULL,
  `last_name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

USE `esquema_usuario` ;

-- -----------------------------------------------------
-- Table `esquema_usuario`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `esquema_usuario`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(255) NULL DEFAULT NULL,
  `nombre` VARCHAR(255) NULL DEFAULT NULL,
  `apellido` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;