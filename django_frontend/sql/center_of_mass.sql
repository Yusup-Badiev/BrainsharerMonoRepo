-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.1.12    Database: active_atlas_development
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `center_of_mass`
--

DROP TABLE IF EXISTS `center_of_mass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `center_of_mass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prep_id` varchar(20) NOT NULL,
  `structure_id` int(11) NOT NULL,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `section` float NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime(6) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `K__COM_AID` (`prep_id`),
  KEY `K__COM_SID` (`structure_id`),
  UNIQUE KEY UK__COM_prep_id_structure_id (prep_id, structure_id),
  CONSTRAINT `FK__COM_prep_id` FOREIGN KEY (`prep_id`) REFERENCES `animal` (`prep_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK__COM_structure_id` FOREIGN KEY (`structure_id`) REFERENCES `structure` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76  DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `center_of_mass`
--

LOCK TABLES `center_of_mass` WRITE;
/*!40000 ALTER TABLE `center_of_mass` DISABLE KEYS */;
INSERT INTO `center_of_mass` VALUES (1,'DK52',3,46488,18778,242,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (2,'DK52',8,38990,20019,172,1,'2020-11-03 12:26:06.000000','2020-11-04 21:44:23');
INSERT INTO `center_of_mass` VALUES (3,'DK52',9,39184,19027,315,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (4,'DK52',12,42425,23190,166,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (5,'DK52',13,42286,22901,291,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (6,'MD589',1,31002.1,17139.3,210,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (7,'MD589',2,30851.8,17026.3,242,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (8,'MD589',6,25238.4,13606,210,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (9,'MD589',7,25231.8,13572.2,236,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (10,'MD589',8,25863.9,16448.5,160,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (11,'MD589',9,25617.9,16089,298,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (12,'MD589',12,27315.2,18976.5,174,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (13,'MD589',13,27227.1,18547.7,296,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (14,'MD589',14,26920.5,16996.3,177,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (15,'MD589',15,26803.3,16688.2,284,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (16,'MD589',17,29043,18890.2,167,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (17,'MD589',18,28901.5,18291.1,296,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (18,'MD589',19,28764.5,15560.1,134,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (19,'MD589',20,28519.2,14960.1,330,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (20,'MD589',22,26993.8,15147,180,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (21,'MD589',23,26951.6,14929.4,268,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (22,'MD589',28,23019.2,17948.5,200,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (23,'MD589',29,23067.2,17945.9,270,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (24,'MD589',33,24976.4,10136.9,220,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (25,'MD589',44,25210.3,18857.2,212,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (26,'MD589',45,25142.5,18757.5,262,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (27,'Atlas',1,203.341,47.9286,-28.7396,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (28,'Atlas',2,203.341,47.9286,28.7396,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (29,'Atlas',3,197.227,67.0988,-1.5,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (30,'Atlas',4,-135.445,-108.494,-13.5284,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (31,'Atlas',5,-135.445,-108.494,13.5284,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (32,'Atlas',6,-100.559,-103.896,-24.7425,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (33,'Atlas',7,-100.559,-103.896,24.7425,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (34,'Atlas',8,-43.2008,2.07948,-136.199,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (35,'Atlas',9,-43.2008,2.07948,136.199,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (36,'Atlas',10,17.1597,12.4922,-35.373,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (37,'Atlas',11,17.1597,12.4922,35.373,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (38,'Atlas',12,29.6329,114.424,-114.808,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (39,'Atlas',13,29.6329,114.424,114.808,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (40,'Atlas',14,-5.10818,40.307,-107.937,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (41,'Atlas',15,-5.10818,40.307,107.937,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (42,'Atlas',16,202.306,25.6525,2,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (43,'Atlas',17,112.44,103.826,-123.461,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (44,'Atlas',18,112.44,103.826,123.461,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (45,'Atlas',19,83.2885,-43.5046,-215.832,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (46,'Atlas',20,83.2885,-43.5046,215.832,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (47,'Atlas',21,-3.2471,-248.307,-0.000000000000312639,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (48,'Atlas',22,-3.80266,-57.1921,-83.5497,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (49,'Atlas',23,-3.80266,-57.1921,83.5497,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (50,'Atlas',24,188.194,146.863,-112.49,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (51,'Atlas',25,188.194,146.863,112.49,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (52,'Atlas',26,-103.962,-127.015,-186.017,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (53,'Atlas',27,-103.962,-127.015,186.017,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (54,'Atlas',28,-171.668,93.0847,-54.5189,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (55,'Atlas',29,-171.668,93.0847,54.5189,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (56,'Atlas',32,-121.546,62.2477,-3.5,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (57,'Atlas',33,-128.018,-241.129,3,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (58,'Atlas',34,-231.485,-17.4186,-121.066,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (59,'Atlas',35,-231.485,-17.4186,121.066,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (60,'Atlas',36,-198.125,-22.3174,-140.916,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (61,'Atlas',37,-198.125,-22.3174,140.916,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (62,'Atlas',38,256.283,82.0335,-134.452,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (63,'Atlas',39,256.283,82.0335,134.452,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (64,'Atlas',40,179.326,50.5224,-191.372,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (65,'Atlas',41,179.326,50.5224,191.372,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (66,'Atlas',42,101.378,49.4977,-186.165,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (67,'Atlas',43,101.378,49.4977,186.165,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (68,'Atlas',44,-72.7921,120.224,-51.3041,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (69,'Atlas',45,-72.7921,120.224,51.3041,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (70,'Atlas',46,4.07409,-4.99103,-243.468,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (71,'Atlas',47,4.07409,-4.99103,243.468,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (72,'Atlas',48,60.0779,13.7844,-231.33,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (73,'Atlas',49,60.0779,13.7844,231.33,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (74,'Atlas',50,-121.989,15.4707,-148.395,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
INSERT INTO `center_of_mass` VALUES (75,'Atlas',51,-121.989,15.4707,148.395,1,'2020-11-03 12:26:06.000000','2020-11-03 20:26:06');
/*!40000 ALTER TABLE `center_of_mass` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-06  9:04:31
