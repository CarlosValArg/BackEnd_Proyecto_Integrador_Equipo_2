-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema software_sphere
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema software_sphere
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `software_sphere` DEFAULT CHARACTER SET utf8 ;
USE `software_sphere` ;

-- -----------------------------------------------------
-- Table `software_sphere`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `software_sphere`.`Usuarios` (
  `usuario_id` INT NOT NULL AUTO_INCREMENT,
  `usuario_nombres` VARCHAR(100) NOT NULL,
  `usuario_apellidos` VARCHAR(100) NOT NULL,
  `usuario_telefono` VARCHAR(10) NOT NULL,
  `usuario_correo` VARCHAR(200) NOT NULL,
  `usuario_contraseña` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`usuario_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `software_sphere`.`Servicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `software_sphere`.`Servicios` (
  `servicios_id` INT NOT NULL AUTO_INCREMENT,
  `servicio_nombre` VARCHAR(200) NOT NULL,
  `servicio_descripcion` VARCHAR(1000) NOT NULL,
  `servicio_imagen_url` VARCHAR(500) NOT NULL,
  `servicio_cotizacion` FLOAT UNSIGNED NOT NULL,
  PRIMARY KEY (`servicios_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `software_sphere`.`Orden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `software_sphere`.`Orden` (
  `orden_id` INT NOT NULL AUTO_INCREMENT,
  `orden_fecha` DATE NOT NULL,
  `orden_descripcion` VARCHAR(1000) NOT NULL,
  `usuario_id` INT NOT NULL,
  PRIMARY KEY (`orden_id`, `usuario_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `software_sphere`.`Servicios_has_Orden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `software_sphere`.`Servicios_has_Orden` (
  `servicios_id` INT NOT NULL,
  `orden_id` INT NOT NULL,
  PRIMARY KEY (`servicios_id`, `orden_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
