-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema softwarespherebd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema softwarespherebd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `softwarespherebd` DEFAULT CHARACTER SET utf8 ;
USE `softwarespherebd` ;

-- -----------------------------------------------------
-- Table `softwarespherebd`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `softwarespherebd`.`Usuarios` (
  `id_usuarios` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `apellido` VARCHAR(65) NOT NULL,
  `telefono` VARCHAR(10) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `contraseña` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_usuarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `softwarespherebd`.`Orden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `softwarespherebd`.`Orden` (
  `id_orden` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `cotizacion` FLOAT UNSIGNED NOT NULL,
  `descripcion` VARCHAR(305) NOT NULL,
  `id_usuarios_fk` INT NOT NULL,
  PRIMARY KEY (`id_orden`, `id_usuarios_fk`),
  INDEX `fk_Orden_Usuarios_idx` (`id_usuarios_fk` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `softwarespherebd`.`Servicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `softwarespherebd`.`Servicios` (
  `id_servicios` INT NOT NULL AUTO_INCREMENT,
  `url_imagen` VARCHAR(300) NOT NULL,
  `nombre_servicio` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(505) NOT NULL,
  PRIMARY KEY (`id_servicios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `softwarespherebd`.`Orden_has_Servicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `softwarespherebd`.`Orden_has_Servicios` (
  `id_orden_fk` INT NOT NULL,
  `id_servicios_fk` INT NOT NULL,
  INDEX `fk_Orden_has_Servicios_Servicios1_idx` (`id_servicios_fk` ASC) VISIBLE,
  INDEX `fk_Orden_has_Servicios_Orden1_idx` (`id_orden_fk` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
