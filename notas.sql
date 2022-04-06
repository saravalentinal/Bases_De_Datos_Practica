DROP DATABASE IF EXISTS notas_db;
CREATE DATABASE notas_db;
USE notas_db;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuarios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) UNIQUE NOT NULL,
  `id_notas` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_usuarios`),
  KEY `usuarios_id_notas_foreign` (`id_notas`),
  CONSTRAINT `usuarios_id_notas_foreign` FOREIGN KEY (`id_notas`) REFERENCES `notas` (`id_usuarios`),
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,NULL,NULL,32,1),(2,NULL,NULL,32,2),(3,NULL,NULL,32,3),(4,NULL,NULL,32,4),(5,NULL,NULL,32,5),(6,NULL,NULL,33,1),(7,NULL,NULL,33,2),(8,NULL,NULL,33,3),(9,NULL,NULL,33,4),(10,NULL,NULL,33,5),(11,NULL,NULL,33,6),(12,NULL,NULL,34,1),(13,NULL,NULL,34,2),(14,NULL,NULL,34,4),(15,NULL,NULL,34,5),(16,NULL,NULL,34,6),(17,NULL,NULL,35,7),(18,NULL,NULL,35,8),(19,NULL,NULL,35,9),(20,NULL,NULL,35,10),(21,NULL,NULL,35,11),(22,NULL,NULL,35,12),(23,NULL,NULL,35,13),(24,NULL,NULL,35,15),(25,NULL,NULL,35,16),(26,NULL,NULL,35,17),(27,NULL,NULL,36,7),(28,NULL,NULL,36,8),(29,NULL,NULL,36,9),(30,NULL,NULL,36,10),(31,NULL,NULL,36,13),(32,NULL,NULL,36,14),(33,NULL,NULL,36,15),(34,NULL,NULL,36,16),(35,NULL,NULL,36,17),(36,NULL,NULL,37,7),(37,NULL,NULL,37,8),(38,NULL,NULL,37,9),(39,NULL,NULL,37,10),(40,NULL,NULL,37,11),(41,NULL,NULL,37,12),(42,NULL,NULL,37,13),(43,NULL,NULL,37,14),(44,NULL,NULL,37,15),(45,NULL,NULL,37,17),(46,NULL,NULL,38,18),(47,NULL,NULL,38,19),(48,NULL,NULL,38,20),(49,NULL,NULL,38,22),(50,NULL,NULL,38,23),(51,NULL,NULL,39,18),(52,NULL,NULL,39,19),(53,NULL,NULL,39,20),(54,NULL,NULL,39,21),(55,NULL,NULL,39,22),(56,NULL,NULL,39,23),(57,NULL,NULL,40,19),(58,NULL,NULL,40,20),(59,NULL,NULL,40,21),(60,NULL,NULL,40,22),(61,NULL,NULL,40,23),(62,NULL,NULL,41,24),(63,NULL,NULL,41,25),(64,NULL,NULL,41,26),(65,NULL,NULL,41,27),(66,NULL,NULL,41,28),(67,NULL,NULL,42,24),(68,NULL,NULL,42,25),(69,NULL,NULL,42,26),(70,NULL,NULL,42,27),(71,NULL,NULL,42,28),(72,NULL,NULL,43,24),(73,NULL,NULL,43,26),(74,NULL,NULL,43,27),(75,NULL,NULL,43,28),(76,NULL,NULL,44,29),(77,NULL,NULL,44,30),(78,NULL,NULL,44,31),(79,NULL,NULL,44,32),(80,NULL,NULL,44,33),(81,NULL,NULL,44,34),(82,NULL,NULL,44,35),(83,NULL,NULL,44,36),(84,NULL,NULL,44,37),(85,NULL,NULL,45,29),(86,NULL,NULL,45,31),(87,NULL,NULL,45,32),(88,NULL,NULL,45,33),(89,NULL,NULL,45,34),(90,NULL,NULL,45,35),(91,NULL,NULL,45,36),(92,NULL,NULL,45,37),(93,NULL,NULL,46,29),(94,NULL,NULL,46,30),(95,NULL,NULL,46,33),(96,NULL,NULL,46,35),(97,NULL,NULL,46,36),(98,NULL,NULL,46,37),(99,NULL,NULL,47,38),(100,NULL,NULL,47,39),(101,NULL,NULL,47,40),(102,NULL,NULL,47,41),(103,NULL,NULL,47,42),(104,NULL,NULL,47,45),(105,NULL,NULL,47,46),(106,NULL,NULL,47,47),(107,NULL,NULL,47,48),(108,NULL,NULL,47,49),(109,NULL,NULL,47,50),(110,NULL,NULL,47,51),(111,NULL,NULL,47,52),(112,NULL,NULL,47,53),(113,NULL,NULL,47,54),(114,NULL,NULL,47,55),(115,NULL,NULL,47,56),(116,NULL,NULL,48,40),(117,NULL,NULL,48,41),(118,NULL,NULL,48,42),(119,NULL,NULL,48,43),(120,NULL,NULL,48,44),(121,NULL,NULL,48,45),(122,NULL,NULL,48,47),(123,NULL,NULL,48,48),(124,NULL,NULL,48,49),(125,NULL,NULL,48,50),(126,NULL,NULL,48,51),(127,NULL,NULL,48,52),(128,NULL,NULL,48,54),(129,NULL,NULL,48,55),(130,NULL,NULL,48,56),(131,NULL,NULL,48,57),(132,NULL,NULL,49,38),(133,NULL,NULL,49,39),(134,NULL,NULL,49,40),(135,NULL,NULL,49,41),(136,NULL,NULL,49,42),(137,NULL,NULL,49,43),(138,NULL,NULL,49,44),(139,NULL,NULL,49,46),(140,NULL,NULL,49,47),(141,NULL,NULL,49,48),(142,NULL,NULL,49,49),(143,NULL,NULL,49,50),(144,NULL,NULL,49,51),(145,NULL,NULL,49,52),(146,NULL,NULL,49,54),(147,NULL,NULL,49,55),(148,NULL,NULL,49,57);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id_notas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(10),
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `descripcion` varchar,
  `id_usuario` int(10) unsigned NOT NULL,
  `id_categoria` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_notas`),
  KEY `notas_id_usuario` (`id_usuario`),
  KEY `notas_id_categoria` (`id_categoria`),
  CONSTRAINT `notas_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`),
  CONSTRAINT `notas_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categorias`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `actor_movie` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,NULL,NULL,1,1),(2,NULL,NULL,2,1),(3,NULL,NULL,3,1),(4,NULL,NULL,4,2),(5,NULL,NULL,5,2),(6,NULL,NULL,6,2),(7,NULL,NULL,7,3),(8,NULL,NULL,7,4),(9,NULL,NULL,8,3),(10,NULL,NULL,8,4),(11,NULL,NULL,9,3),(12,NULL,NULL,9,4),(13,NULL,NULL,10,5),(14,NULL,NULL,11,5),(15,NULL,NULL,12,5),(16,NULL,NULL,13,6),(17,NULL,NULL,13,8),(18,NULL,NULL,13,9),(19,NULL,NULL,14,6),(20,NULL,NULL,14,8),(21,NULL,NULL,14,9),(22,NULL,NULL,15,6),(23,NULL,NULL,15,8),(24,NULL,NULL,15,9),(25,NULL,NULL,16,7),(26,NULL,NULL,17,7),(27,NULL,NULL,18,7),(28,NULL,NULL,19,10),(29,NULL,NULL,20,10),(30,NULL,NULL,21,11),(31,NULL,NULL,22,11),(32,NULL,NULL,22,9),(33,NULL,NULL,23,11),(34,NULL,NULL,24,12),(35,NULL,NULL,25,12),(36,NULL,NULL,26,12),(37,NULL,NULL,27,13),(38,NULL,NULL,27,14),(39,NULL,NULL,27,19),(40,NULL,NULL,28,13),(41,NULL,NULL,28,14),(42,NULL,NULL,29,20),(43,NULL,NULL,30,21);
/*!40000 ALTER TABLE `actor_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categorias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_categoria` varchar(100),
  PRIMARY KEY (`id_categorias`),
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,NULL,NULL,'Sam','Worthington',7.5,1),(2,NULL,NULL,'Zoe','Saldana',5.5,2),(3,NULL,NULL,'Sigourney','Weaver',9.7,NULL),(4,NULL,NULL,'Leonardo','Di Caprio',3.5,4),(5,NULL,NULL,'Kate','Winslet',1.5,5),(6,NULL,NULL,'Billy','Zane',7.5,6),(7,NULL,NULL,'Mark','Hamill',6.5,7),(8,NULL,NULL,'Harrison','Ford',7.5,8),(9,NULL,NULL,'Carrie','Fisher',7.5,9),(10,NULL,NULL,'Sam','Neill',2.5,10),(11,NULL,NULL,'Laura','Dern',7.5,11),(12,NULL,NULL,'Jeff','Goldblum',4.5,NULL),(13,NULL,NULL,'Daniel','Radcliffe',7.5,13),(14,NULL,NULL,'Emma','Watson',2.5,14),(15,NULL,NULL,'Rupert','Grint',6.2,15),(16,NULL,NULL,'Shia','LaBeouf',9.5,16),(17,NULL,NULL,'Rosie','Huntington-Whiteley',1.5,17),(18,NULL,NULL,'Matthew','Broderick',6.1,18),(19,NULL,NULL,'James','Earl Jones',7.5,19),(20,NULL,NULL,'Jeremy','Irons',7.2,20),(21,NULL,NULL,'Johnny','Depp',1.5,21),(22,NULL,NULL,'Helena','Bonham Carter',7.5,1),(23,NULL,NULL,'Mia','Wasikowska',7.5,2),(24,NULL,NULL,'Albert','Brooks',2.5,3),(25,NULL,NULL,'Ellen','DeGeneres',2.6,4),(26,NULL,NULL,'Alexander','Gould',7.5,5),(27,NULL,NULL,'Tom','Hanks',4.4,6),(28,NULL,NULL,'Tim','Allen',7.5,7),(29,NULL,NULL,'Sean','Penn',9.2,8),(30,NULL,NULL,'Adam','Sandler',3.1,9),(31,NULL,NULL,'Renee','Zellweger',9.5,10),(32,NULL,NULL,'Emilia','Clarke',8.2,11),(33,NULL,NULL,'Peter','Dinklage',2.3,12),(34,NULL,NULL,'Kit','Harington',2.4,NULL),(35,NULL,NULL,'Jared','Padalecki',2.8,14),(36,NULL,NULL,'Jensen','Ackles',5.5,15),(37,NULL,NULL,'Jim','Beaver',2.6,16),(38,NULL,NULL,'Andrew','Lincoln',3.3,17),(39,NULL,NULL,'Jon','Bernthal',2.9,NULL),(40,NULL,NULL,'Sarah','Callies',2.4,19),(41,NULL,NULL,'Jim','Caviezel',1.9,20),(42,NULL,NULL,'Taraji','Henson',5.9,21),(43,NULL,NULL,'Kevin','Chapman',2.9,1),(44,NULL,NULL,'Johnny','Galecki',2.3,2),(45,NULL,NULL,'Jim','Parsons',6.9,3),(46,NULL,NULL,'Kaley','Cuoco',2.3,4),(47,NULL,NULL,'Bryan','Cranston',7.9,NULL),(48,NULL,NULL,'Aaron','Paul',5.9,6),(49,NULL,NULL,'Anna','Gunn',3.1,7);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_categoria`
--

DROP TABLE IF EXISTS `nota_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_categoria` (
  `id_nota_categoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_categoria` int(10) unsigned NOT NULL,
  `id_nota` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nota_categoria`),
  KEY `nota_categoria_id_categoria` (`id_categoria`),
  KEY `nota_categoria_id_nota` (`id_nota`),
  CONSTRAINT `nota_categoria_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categorias`),
  CONSTRAINT `nota_categoria_id_nota_foreign` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id_notas`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_categoria`
--

LOCK TABLES `nota_categoria` WRITE;
/*!40000 ALTER TABLE `nota_categoria` DISABLE KEYS */;
INSERT INTO `nota_categoria` VALUES (1,NULL,NULL,'Winter Is Coming',1,'2011-01-01 00:00:00',7.3,1),(2,NULL,NULL,'The North Remembers',1,'2012-01-01 00:00:00',8.3,2),(3,NULL,NULL,'Valar Dohaeris',1,'2013-01-01 00:00:00',6.3,3),(4,NULL,NULL,'Two Swords',1,'2014-01-01 00:00:00',7.5,4),(5,NULL,NULL,'The Wars to Come',1,'2015-01-01 00:00:00',9.3,5),(6,NULL,NULL,'The Red Woman',1,'2016-01-01 00:00:00',7.7,6),(7,NULL,NULL,'Pilot',1,'2005-01-01 00:00:00',7.3,8),(8,NULL,NULL,'In My Time of Dying',1,'2006-01-01 00:00:00',8.3,9),(9,NULL,NULL,'The Magnificent Seven',1,'2007-01-01 00:00:00',6.3,10),(10,NULL,NULL,'Lazarus Rising',1,'2008-01-01 00:00:00',7.5,11),(11,NULL,NULL,'Sympathy for the Devil',1,'2009-01-01 00:00:00',9.3,12),(12,NULL,NULL,'Exile on Main St.',1,'2010-01-01 00:00:00',7.7,13),(13,NULL,NULL,'Meet the New Boss',1,'2011-01-01 00:00:00',7.3,14),(14,NULL,NULL,'We Need to Talk About Kevin',1,'2012-01-01 00:00:00',8.3,15),(15,NULL,NULL,'I Think Im Gonna Like It Here',1,'2013-01-01 00:00:00',6.3,16),(16,NULL,NULL,'A Very Special Supernatural Special',1,'2014-01-01 00:00:00',7.5,17),(17,NULL,NULL,'Out of the Darkness, Into the Fire',1,'2015-01-01 00:00:00',9.3,18),(18,NULL,NULL,'Days Gone Bye',1,'2010-01-01 00:00:00',7.3,20),(19,NULL,NULL,'What Lies Ahead',1,'2011-01-01 00:00:00',8.3,21),(20,NULL,NULL,'Seed',1,'2012-01-01 00:00:00',6.3,22),(21,NULL,NULL,'30 Days Without an Accident',1,'2013-01-01 00:00:00',7.5,23),(22,NULL,NULL,'No Sanctuary',1,'2014-01-01 00:00:00',9.3,24),(23,NULL,NULL,'First Time Again',1,'2015-01-01 00:00:00',7.7,25),(24,NULL,NULL,'Pilot',1,'2011-01-01 00:00:00',7.3,27),(25,NULL,NULL,'The Contingency',1,'2012-01-01 00:00:00',8.3,28),(26,NULL,NULL,'Liberty',1,'2013-01-01 00:00:00',6.3,29),(27,NULL,NULL,'Panopticon',1,'2015-01-01 00:00:00',7.5,30),(28,NULL,NULL,'B.S.O.D.',1,'2016-01-01 00:00:00',9.3,31),(29,NULL,NULL,'Pilot',1,'2005-01-01 00:00:00',7.3,32),(30,NULL,NULL,'The Bad Fish Paradigm',1,'2006-01-01 00:00:00',8.3,33),(31,NULL,NULL,'The Electric Can Opener Fluctuation',1,'2007-01-01 00:00:00',6.3,34),(32,NULL,NULL,'The Robotic Manipulation',1,'2008-01-01 00:00:00',7.5,35),(33,NULL,NULL,'The Skank Reflex Analysis',1,'2009-01-01 00:00:00',9.3,36),(34,NULL,NULL,'The Date Night Variable',1,'2010-01-01 00:00:00',7.7,37),(35,NULL,NULL,'The Hofstadter Insufficiency',1,'2011-01-01 00:00:00',7.3,38),(36,NULL,NULL,'The Locomotion Interruption',1,'2012-01-01 00:00:00',8.3,39),(37,NULL,NULL,'The Matrimonial Momentum',1,'2013-01-01 00:00:00',6.3,40),(38,NULL,NULL,'Pilot',1,'2009-01-01 00:00:00',7.3,42),(39,NULL,NULL,'Seven Thirty-Seven',1,'2010-01-01 00:00:00',8.3,43),(40,NULL,NULL,'No Más',1,'2011-01-01 00:00:00',6.3,44),(41,NULL,NULL,'Box Cutter',1,'2012-01-01 00:00:00',7.5,45),(42,NULL,NULL,'Live Free or Die',1,'2013-01-01 00:00:00',9.3,46),(43,NULL,NULL,'Madrigal',2,'2013-02-01 00:00:00',9.3,46),(44,NULL,NULL,'Hazard Pay',3,'2013-03-01 00:00:00',9.3,46),(45,NULL,NULL,'Fifty-One',4,'2013-04-01 00:00:00',9.3,46),(46,NULL,NULL,'Dead Freight',5,'2013-05-01 00:00:00',9.3,46),(47,NULL,NULL,'Buyout',6,'2013-06-01 00:00:00',9.3,46),(48,NULL,NULL,'Say My Name',7,'2013-06-01 00:00:00',9.3,46),(49,NULL,NULL,'Gliding Over All',8,'2013-07-01 00:00:00',9.3,46),(50,NULL,NULL,'Blood Money',9,'2013-07-01 00:00:00',9.3,46),(51,NULL,NULL,'Buried',10,'2013-07-01 00:00:00',9.3,46),(52,NULL,NULL,'Confessions',11,'2013-08-01 00:00:00',9.3,46),(53,NULL,NULL,'Rabid Dog',12,'2013-09-01 00:00:00',9.3,46),(54,NULL,NULL,'To hajiilee',13,'2013-10-01 00:00:00',9.3,46),(55,NULL,NULL,'Ozymandias',14,'2013-11-01 00:00:00',9.3,46),(56,NULL,NULL,'Granite State',15,'2013-12-01 00:00:00',9.3,46),(57,NULL,NULL,'Felina',16,'2013-12-01 00:00:00',9.3,46);
/*!40000 ALTER TABLE `nota_categoria` ENABLE KEYS */;
UNLOCK TABLES;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06 10:09:28