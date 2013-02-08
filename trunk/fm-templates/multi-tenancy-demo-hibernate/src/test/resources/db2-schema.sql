SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `tenant_2` ;
CREATE SCHEMA IF NOT EXISTS `tenant_2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `tenant_2` ;

-- -----------------------------------------------------
-- Table `tenant_2`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tenant_2`.`user` ;

CREATE  TABLE IF NOT EXISTS `tenant_2`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;