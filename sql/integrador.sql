-- MySQL Script generated by MySQL Workbench
-- Wed Sep 13 02:46:02 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema integrador
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `integrador` ;

-- -----------------------------------------------------
-- Schema integrador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `integrador` DEFAULT CHARACTER SET utf8 ;
USE `integrador` ;

-- -----------------------------------------------------
-- Table `integrador`.`registros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `integrador`.`registros` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `ape` VARCHAR(45) NOT NULL,
  `t_dni` VARCHAR(45) NOT NULL,
  `dni` VARCHAR(10) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `psw` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `correo_UNIQUE` (`correo` ASC) VISIBLE,
  UNIQUE INDEX `psw_UNIQUE` (`psw` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `dni_UNIQUE` (`dni` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `integrador`.`habitaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `integrador`.`habitaciones` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `n_camas` INT NOT NULL,
  `n_adultos` INT NOT NULL,
  `n_infantes` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `integrador`.`reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `integrador`.`reservas` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha_inicio` DATE NOT NULL,
  `fecha_fin` DATE NOT NULL,
  `registros_id` INT UNSIGNED NOT NULL,
  `habitaciones_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_reservas_registros_idx` (`registros_id` ASC) VISIBLE,
  INDEX `fk_reservas_habitaciones1_idx` (`habitaciones_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `integrador`.`pagos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `integrador`.`pagos` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha_p` DATE NOT NULL,
  `numero_tar` VARCHAR(25) NOT NULL,
  `dni` VARCHAR(10) NOT NULL,
  `valor` INT NOT NULL,
  `tipo_pago` VARCHAR(45) NOT NULL,
  `reservas_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `numero_tar_UNIQUE` (`numero_tar` ASC) VISIBLE,
  UNIQUE INDEX `dni_UNIQUE` (`dni` ASC) VISIBLE,
  INDEX `fk_pagos_reservas1_idx` (`reservas_id` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
