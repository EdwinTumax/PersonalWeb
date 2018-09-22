/*
SQLyog Ultimate v9.02 
MySQL - 5.7.19 : Database - contacto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`contacto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `contacto`;

/*Table structure for table `contacto` */

DROP TABLE IF EXISTS `contacto`;

CREATE TABLE `contacto` (
  `idContacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `nivel` varchar(16) DEFAULT NULL,
  `lenguajes` varchar(128) DEFAULT NULL,
  `comentario` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`idContacto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `contacto` */

insert  into `contacto`(`idContacto`,`nombre`,`email`,`nivel`,`lenguajes`,`comentario`) values (1,'Edwin Tumax','edwintumax@gmail.com','senior','c#/vb/java/','Me guswta la programacion');

/* Procedure structure for procedure `sp_RegistrarContacto` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_RegistrarContacto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RegistrarContacto`(
	in _nombre varchar(256),
	in _email varchar(128),
	in _nivel varchar(16),
	in _lenguajes varchar(128),
	in _comentario varchar(256))
BEGIN
	insert into contacto (nombre,email,nivel,lenguajes,
	 comentario)
	values (_nombre,_email,_nivel,_lenguajes,_comentario);
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
