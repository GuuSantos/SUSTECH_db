-- MySQL Script generated by MySQL Workbench
-- Wed Mar 23 14:42:04 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SUSTECH
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SUSTECH
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SUSTECH` DEFAULT CHARACTER SET utf8 ;
USE `SUSTECH` ;

-- -----------------------------------------------------
-- Table `SUSTECH`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SUSTECH`.`Categoria` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(255) NOT NULL,
  `estado` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SUSTECH`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SUSTECH`.`Usuario` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(255) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SUSTECH`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SUSTECH`.`Produto` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `quantidade` VARCHAR(255) NOT NULL,
  `preco` VARCHAR(255) NOT NULL,
  `Categoria_id` BIGINT NOT NULL,
  `Usuario_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Produto_Categoria_idx` (`Categoria_id` ASC) VISIBLE,
  INDEX `fk_Produto_Usuario1_idx` (`Usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_Categoria`
    FOREIGN KEY (`Categoria_id`)
    REFERENCES `SUSTECH`.`Categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_Usuario1`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `SUSTECH`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;