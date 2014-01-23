-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: 192.237.246.191    Database: bndr_s003
-- ------------------------------------------------------
-- Server version	5.1.69

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

--
-- Table structure for table `bom`
--

DROP TABLE IF EXISTS `bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bom` (
  `item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `part` varchar(16) DEFAULT NULL,
  `parent` int(10) unsigned DEFAULT NULL,
  `parent_pn` varchar(16) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `qty` int(10) unsigned DEFAULT NULL,
  `unit` varchar(4) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `manufacturer` varchar(64) DEFAULT NULL,
  `manufacturer_pn` varchar(64) DEFAULT NULL,
  `supplier` varchar(64) DEFAULT NULL,
  `supplier_pn` varchar(64) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `cost_u` float DEFAULT NULL,
  `cost_e` float DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `tuples` varchar(255) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL,
  `chksum` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`item`),
  KEY `item` (`item`),
  KEY `part` (`part`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom`
--

LOCK TABLES `bom` WRITE;
/*!40000 ALTER TABLE `bom` DISABLE KEYS */;
INSERT INTO `bom` VALUES (1,'BED01',NULL,NULL,'Long Beam',2,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/9geigro8cfmd05f/LONG.PDF',NULL,NULL,NULL,0,NULL,NULL,1,'a80c04f5ca1cde4f5badcbc32713fb2a85e710a4');
INSERT INTO `bom` VALUES (2,'BED02',NULL,NULL,'Cross Member Assy',2,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/w8wvu13pi6tbu2r/CROSS%20MEMBER.PDF',NULL,NULL,NULL,2.2176,NULL,NULL,1,'');
INSERT INTO `bom` VALUES (3,'BED03',NULL,NULL,'Left Leg Assy',2,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/hh36iguiu3y5s3q/LEFT%20LEG%20ASSY.PDF',NULL,NULL,NULL,4.2724,NULL,NULL,1,'');
INSERT INTO `bom` VALUES (4,'BED04',NULL,NULL,'Right Leg Assy',2,'each',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'');
INSERT INTO `bom` VALUES (5,'BED05',NULL,NULL,'Slats',12,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/16vuqgflfk2ftck/SLAT.PDF',NULL,NULL,NULL,0,NULL,NULL,1,'');
INSERT INTO `bom` VALUES (6,'BED06',3,NULL,'Long Leg',1,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/23j9sy87o6le82z/LEG%20LONG.PDF',NULL,NULL,NULL,0,NULL,NULL,NULL,'');
INSERT INTO `bom` VALUES (7,'BED07',3,NULL,'Short Leg',1,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/tclyhijbtpskr9l/LEG%20SHORT.PDF',NULL,NULL,NULL,0,NULL,NULL,NULL,'');
INSERT INTO `bom` VALUES (8,'90610A253',3,NULL,'Wood Screw, Square Drive, Zinc-Plated Steel, Number 10, 2\" Long',5,'each',NULL,'McMaster','90610A253','McMaster','90610A253','http://www.mcmaster.com/#90610a253/=pott7q',NULL,NULL,NULL,1.0582,'prch','.1924,,,,',NULL,'');
INSERT INTO `bom` VALUES (9,'90267A705',2,NULL,'5/16\" Threaded Inserrt',4,'each',NULL,'McMaster-Carr','90267A705','McMaster-Carr','90267A705','http://www.mcmaster.com/#90267a705/=pqh55r',NULL,NULL,NULL,2.2176,'prch','.504,,,,',NULL,'');
INSERT INTO `bom` VALUES (10,'BED08',2,NULL,'Coss Beam',1,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/r7szn9992zwyfau/CROSS.PDF',NULL,NULL,NULL,0,NULL,NULL,NULL,'');
INSERT INTO `bom` VALUES (11,'BED09',3,NULL,'Bolt Assy',2,'each',NULL,NULL,NULL,NULL,NULL,'https://www.dropbox.com/s/1qgnv731rdhvoqu/BOLT%20ASSY.PDF',NULL,NULL,NULL,1.078,NULL,NULL,NULL,'');
INSERT INTO `bom` VALUES (12,'91247A599',11,NULL,'5/16\" x 4\" HCS',1,'each',NULL,'McMaster-Carr','91247A599','McMaster-Carr','91247A599','http://www.mcmaster.com/#91247a599/=pqj9pj',NULL,NULL,NULL,0.495,'prch','.45,,,,',NULL,'');
INSERT INTO `bom` VALUES (13,'90126A030',11,NULL,'5/16\" Plain Washer',1,'each',NULL,'McMaster-Carr','90126A030','McMaster-Carr','90126A030','http://www.mcmaster.com/#90126a030/=pqjb4g',NULL,NULL,NULL,0.044,'prch','.04,,,,',NULL,'');
INSERT INTO `bom` VALUES (14,'BED06',4,NULL,'Long Leg',1,'each',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fe6def7306ca46e17fc9d4c7d099bc88c8da81e0');
INSERT INTO `bom` VALUES (15,'TP01',NULL,NULL,'testpart',1,'each',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'38b57964815aac26612d5279063b11fd09d696a9');
/*!40000 ALTER TABLE `bom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-23 16:52:35
