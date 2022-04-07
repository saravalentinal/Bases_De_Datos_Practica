-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: laravel-database
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP DATABASE IF EXISTS notas_db;
CREATE DATABASE notas_db;
USE notas_db;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) NOT NULL,
  `email` varchar(50) UNIQUE NOT NULL,
  `status` TINYINT NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


INSERT INTO `usuarios` VALUES
(1, 'Torey Franzonetti', 'tfranzonetti0@multiply.com', 0),
(2, 'Carlina Shipway', 'cshipway1@admin.ch', 0),
(3, 'Lisa Driussi', 'ldriussi2@wunderground.com', 0),
(4, 'Warde Sharper', 'wsharper3@ox.ac.uk', 0),
(5, 'Magdalena Hawkswood', 'mhawkswood4@tripadvisor.com', 0),
(6, 'Oriana Eglaise', 'oeglaise5@ebay.com', 0),
(7, 'Sigfrid Doulton', 'sdoulton6@shinystat.com', 0),
(8, 'Austin Bernardon', 'abernardon7@ask.com', 0),
(9, 'Susan Pittel', 'spittel8@auda.org.au', 0),
(10, 'Reggie Trenholme', 'rtrenholme9@china.com.cn', 0);


--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id_nota` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100),
  `descripcion` TEXT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `id_usuario` int unsigned NOT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `nota_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `nota_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

INSERT INTO `notas` VALUES 
 (1, 'Persevering coherent solution', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '5/7/2021', '2/28/2022', 1),
 (2, 'Assimilated transitional workforce', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '11/24/2021', '1/10/2022', 3),
 (3, 'Synergistic tangible collaboration', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '8/16/2021', '8/21/2021', 5),
 (4, 'Universal demand-driven hardware', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '3/28/2022', '7/17/2021', 2),
 (5, 'Monitored discrete standardization', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '12/16/2021', '7/4/2021', 4),
 (6, 'Object-based contextually-based firmware', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2/28/2022', '2/24/2022', 8),
 (7, 'Enhanced mission-critical paradigm', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '3/21/2022', '6/26/2021', 10),
 (8, 'Virtual exuding toolset', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '7/29/2021', '12/21/2021', 9),
 (9, 'Digitized background definition', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '12/22/2021', '5/15/2021', 6),
 (10, 'Enterprise-wide coherent task-force', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '4/27/2021', '9/24/2021', 7);


--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` INT unsigned NOT NULL AUTO_INCREMENT,
  `name_categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` VALUES 
(1, 'multimedia'),
(2, 'grid-enabled'),
(3, 'user-facing'),
(4, 'web-enabled'),
(5, 'explicit'),
(6, 'attitude-oriented'),
(7, 'Networked'),
(8, 'global'),
(9, 'Multi-channelled'),
(10, 'responsive');


--
-- Table structure for table `nota_categoria`
--

DROP TABLE IF EXISTS `nota_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_categoria` (
  `id_nota_categoria` int unsigned NOT NULL AUTO_INCREMENT,
  `id_categoria` int unsigned NOT NULL,
  `id_nota` int unsigned NOT NULL,
  PRIMARY KEY (`id_nota_categoria`),
  KEY `nota_categoria_id_categoria_foreign` (`id_categoria`),
  KEY `nota_categoria_id_nota_foreign` (`id_nota`),
  CONSTRAINT `nota_categoria_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `nota_categoria_id_nota_foreign` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_categoria`
--

INSERT INTO `nota_categoria` VALUES 
(1,3,3),
(2,2,5),
(3,2,2),
(4,1,4),
(5,8,7),
(6,8,8),
(7,9,9),
(8,10,10),
(9,10,6),
(10,1,1);


--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro` (
  `id_registro` int unsigned NOT NULL AUTO_INCREMENT,
  `id_nota` int unsigned NOT NULL,
  `id_usuario` int unsigned NOT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `registro_id_nota_foreign` (`id_nota`),
  KEY `registro_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `registro_id_nota_foreign` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id_nota`),
  CONSTRAINT `registro_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

INSERT INTO `registro` VALUES 
(1,3,3),
(2,1,5),
(3,2,6),
(4,1,4),
(5,7,7),
(6,8,8),
(7,2,3),
(8,10,10),
(9,10,6),
(10,1,1);



/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06 10:09:28