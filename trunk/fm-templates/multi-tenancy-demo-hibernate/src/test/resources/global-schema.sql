SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `multi_global` ;
CREATE SCHEMA IF NOT EXISTS `multi_global` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `multi_global` ;

-- -----------------------------------------------------
-- Table `multi_global`.`tenant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `multi_global`.`tenant` ;

CREATE  TABLE IF NOT EXISTS `multi_global`.`tenant` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `key_name` VARCHAR(45) NOT NULL ,
  `jndi_name` VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;