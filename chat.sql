-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: chat
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (54,'bernard','the new message','2018-06-08 21:38:33'),(55,'bernard','fj','2018-06-08 21:52:00'),(56,'bernard','dj','2018-06-08 22:48:03'),(57,'bernard','dkdk','2018-06-08 22:52:09'),(58,'bernard','dkdk','2018-06-08 22:52:56'),(59,'bernard','test','2018-06-08 22:53:08'),(60,'bernard','dk','2018-06-08 22:54:19'),(61,'bernard','wath','2018-06-08 22:54:39'),(62,'bernard','wath','2018-06-08 22:54:41'),(63,'bernard','s','2018-06-08 22:58:31'),(64,'bernard','j','2018-06-08 22:59:39'),(65,'bernard','j','2018-06-08 23:02:37'),(66,'bernard','jdj','2018-06-08 23:02:48'),(67,'bernard','j','2018-06-08 23:03:07'),(68,'bernard','bounce in msg','2018-06-08 23:03:19'),(69,'bernard','j','2018-06-08 23:03:50'),(70,'bernard','jkd','2018-06-08 23:04:03'),(71,'bernard','j','2018-06-08 23:10:33'),(72,'bernard','d','2018-06-08 23:10:37'),(73,'bernard','d','2018-06-08 23:10:40'),(74,'bernard','j','2018-06-08 23:11:16'),(75,'bernard','ddd','2018-06-08 23:11:23'),(76,'bernard','j','2018-06-08 23:11:59'),(77,'bernard','dkd','2018-06-08 23:12:04'),(78,'bernard','dkd','2018-06-08 23:12:09'),(79,'bernard','j','2018-06-08 23:13:24'),(80,'bernard','ddk','2018-06-08 23:13:29'),(81,'bernard','ddk','2018-06-08 23:13:39'),(82,'bernard','ddks','2018-06-08 23:13:42'),(83,'bernard','j','2018-06-08 23:20:01'),(84,'bernard','c','2018-06-08 23:20:06'),(85,'bernard','j','2018-06-08 23:20:26'),(86,'bernard','d','2018-06-08 23:20:30'),(87,'bernard','j','2018-06-08 23:20:52'),(88,'bernard','d','2018-06-08 23:20:56'),(89,'bernard','j','2018-06-08 23:22:14'),(90,'bernard','sss','2018-06-08 23:22:21'),(91,'bernard','j','2018-06-08 23:22:46'),(92,'bernard','sss ','2018-06-08 23:22:51'),(93,'bernard','j','2018-06-08 23:23:12'),(94,'bernard','dd','2018-06-08 23:23:21'),(95,'bernard','j','2018-06-08 23:25:13'),(96,'bernard','enfin','2018-06-08 23:25:26'),(97,'bernard','j','2018-06-08 23:26:01'),(98,'bernard','enfin','2018-06-08 23:26:14'),(99,'bernard','enfin','2018-06-08 23:26:18'),(100,'bernard','enfin','2018-06-08 23:26:24'),(101,'bernard','enfin','2018-06-08 23:26:27'),(102,'bernard','j','2018-06-08 23:29:37'),(103,'bernard','j','2018-06-08 23:29:39'),(104,'bernard','j','2018-06-08 23:30:06'),(105,'bernard','j','2018-06-08 23:30:09'),(106,'bernard','j','2018-06-08 23:30:28'),(107,'bernard','animated','2018-06-08 23:30:37'),(108,'bernard','animated','2018-06-08 23:30:37'),(109,'bernard','animated','2018-06-08 23:30:37'),(110,'bernard','animated','2018-06-08 23:30:43'),(111,'bernard','cool','2018-06-08 23:30:51'),(112,'bernard','j','2018-06-08 23:31:20'),(113,'bernard','animated','2018-06-08 23:31:30'),(114,'bernard','animated','2018-06-08 23:31:35'),(115,'bernard','animated','2018-06-08 23:31:35'),(116,'bernard','blur','2018-06-08 23:31:49'),(117,'bernard','blur','2018-06-08 23:31:54'),(118,'bernard','blur','2018-06-08 23:31:55'),(119,'bernard','blur','2018-06-08 23:31:57'),(120,'bernard','blurdd','2018-06-08 23:32:02'),(121,'bernard','blurdd============','2018-06-08 23:32:07'),(122,'bernard','blurdd============','2018-06-08 23:32:08'),(123,'bernard','blurdd============','2018-06-08 23:32:21'),(124,'bernard','j','2018-06-08 23:33:05'),(125,'bernard','vl','2018-06-08 23:36:23'),(126,'bernard','nw','2018-06-08 23:38:06'),(127,'bennn','cool ici','2018-06-08 23:48:45'),(128,'dania','moi aussi je trouve sa cool','2018-06-08 23:50:41'),(129,'testing','salut dania cva ?','2018-06-09 00:00:54'),(130,'testing','salut dania cva ?','2018-06-09 00:01:49'),(131,'testing','yeah','2018-06-09 00:03:15'),(132,'testing','au dessus','2018-06-09 00:05:34'),(133,'testing','les message s\'ajoute au dessus','2018-06-09 00:06:08'),(134,'testing','pas mal l\'animation','2018-06-09 00:06:39'),(135,'testing','cooll nn','2018-06-09 00:50:30'),(136,'testing','cbn mais ','2018-06-09 01:01:13'),(137,'testing B','heuu tu as recu ???','2018-06-09 01:02:31'),(138,'testing','nn tjr aprs raf','2018-06-09 01:03:03'),(139,'testing B','ahhh','2018-06-09 01:03:28'),(140,'testing B','cool','2018-06-09 01:10:37'),(141,'testing B','mais ajaj','2018-06-09 01:12:01'),(142,'testing B','mais ajaj','2018-06-09 01:12:35'),(143,'testing','quoi ?\r\n','2018-06-09 01:13:30'),(144,'testing','quoi ?','2018-06-09 01:14:20'),(145,'testing B','rien','2018-06-09 01:15:04'),(146,'testing B','cva toi ?','2018-06-09 01:15:39'),(147,'testing','oui\r\n','2018-06-09 01:16:20'),(148,'testing','etw ?','2018-06-09 01:17:25'),(149,'testing','cool le commentaires','2018-06-09 01:17:58'),(150,'testing B','cva toi ?','2018-06-09 01:18:55'),(151,'testing','oui','2018-06-09 01:19:15'),(152,'testing B','cool raconte','2018-06-09 01:19:30'),(153,'testing','rien a dire etw ?','2018-06-09 01:19:41'),(154,'testing B','pareil ','2018-06-09 01:19:50'),(155,'testing','hummm','2018-06-09 01:19:56'),(156,'testing B','src','2018-06-09 01:20:02'),(157,'testing','quoi ?','2018-06-09 01:20:08'),(158,'the trust','salut ici','2018-06-09 01:22:03'),(159,'testing B','jeje\r\n','2018-06-09 01:22:12'),(160,'testing','sls\r\n','2018-06-09 01:22:15'),(161,'the trust','dkdk','2018-06-09 01:22:18'),(162,'the trust','moi c\'est trust','2018-06-09 01:22:52'),(163,'testing B','ng','2018-06-09 01:23:06'),(164,'testing','dania','2018-06-09 01:23:15'),(165,'the trust','comment vous trouvez la day culturelle ?','2018-06-09 01:23:29'),(166,'the trust','sur ie et sa fonctionne','2018-06-09 01:23:50'),(167,'the trust','check this','2018-06-09 01:24:02'),(168,'testing B','n\'import quoi','2018-06-09 01:24:13'),(169,'testing','srx ?','2018-06-09 01:24:21'),(170,'berber','il est seulemnt intelligent hein ?','2018-06-09 01:25:46'),(171,'testing','qui ?','2018-06-09 01:25:54'),(172,'testing B','bernard ???','2018-06-09 01:26:01'),(173,'berber','oui','2018-06-09 01:26:07'),(174,'berber','bon','2018-06-09 01:28:50'),(175,'testing','quoi','2018-06-09 01:29:14'),(176,'testing','cool','2018-06-09 01:29:56'),(177,'berber','ok','2018-06-09 01:30:05'),(178,'testing','bug ok','2018-06-09 01:30:51'),(179,'berber','cool\n','2018-06-09 01:31:59'),(180,'testing','we les couleurs sont bonnes now','2018-06-09 01:32:26'),(181,'testing B','suis qui ?','2018-06-09 01:33:22'),(182,'berber','testing b est de retour ???','2018-06-09 01:33:37'),(183,'testing B','berber ?? toi t\'est la depuis quand ?','2018-06-09 01:33:55'),(184,'berber','sa fait un bay','2018-06-09 01:34:05'),(185,'testing B','eyo... tu es en quel classe ?','2018-06-09 01:34:18'),(186,'testing','donc moi vous me voyer pas ?','2018-06-09 01:34:35'),(187,'testing B','oh testing','2018-06-09 01:34:52'),(188,'berber','oh testing','2018-06-09 01:34:53'),(189,'testing B','exemple d\'un message vide','2018-06-09 01:35:47'),(190,'testing B',' ','2018-06-09 01:35:51'),(191,'berber','c\'est vrai il y a encore des bug a fixer','2018-06-09 01:36:08'),(192,'testing','sinon sa remplace pas whatsapp','2018-06-09 01:36:21'),(193,'testing B','meme pas\r\n','2018-06-09 01:36:32'),(194,'berber','j\'aime bien l\'animation, c\'est original','2018-06-09 01:36:51'),(195,'testing B','we c\'est animate.css','2018-06-09 01:37:10'),(196,'testing','je savais','2018-06-09 01:37:16'),(197,'berber','c\'est ca','2018-06-09 01:37:20'),(198,'testing B','il est off now','2018-06-09 01:37:45'),(199,'testing','qui sa ?','2018-06-09 01:37:55'),(200,'testing B','berber','2018-06-09 01:38:03'),(201,'testing','sur bashi il etait sur internet explorer mm toi','2018-06-09 01:38:20'),(202,'testing B','c\'est faux ca','2018-06-09 01:38:27'),(203,'testing','je te dit','2018-06-09 01:38:32'),(204,'testing B','c\'etait M.edge derniere version , teuB','2018-06-09 01:38:46'),(205,'testing','eh qu\'il me pardonne','2018-06-09 01:38:56'),(206,'testing B','va dormir dhi','2018-06-09 01:39:04'),(207,'testing','jah demain','2018-06-09 01:39:14'),(208,'testing','ok','2018-06-09 01:39:30'),(209,'testing','hello','2018-06-09 01:44:18'),(210,'testing','kkjk','2018-06-09 01:50:03'),(211,'testing','kj;','2018-06-09 01:50:41'),(212,'testing','kj;','2018-06-09 01:50:53'),(213,'testing','kj;','2018-06-09 01:51:05'),(214,'testing','kj;','2018-06-09 01:51:17'),(215,'testing','kj;','2018-06-09 01:51:28'),(216,'testing','kj;','2018-06-09 01:51:40'),(217,'testing','kj;','2018-06-09 01:51:52'),(218,'testing','kj;','2018-06-09 01:52:03'),(219,'testing','kj;','2018-06-09 01:52:15'),(220,'testing','kj;','2018-06-09 01:52:26'),(221,'testing','kj;','2018-06-09 01:52:26'),(222,'testing','kj;','2018-06-09 01:52:26'),(223,'testing','kj;','2018-06-09 01:52:26'),(224,'testing','kj;','2018-06-09 01:52:26'),(225,'testing','kj;','2018-06-09 01:52:26'),(226,'testing','kj;','2018-06-09 01:52:26'),(227,'huuu','hello','2018-06-09 13:58:44'),(228,'huuu','someone is here ?','2018-06-09 13:59:32'),(229,'huuu','ggg','2018-06-09 14:11:00'),(230,'testing B','Bonjour','2018-06-09 14:13:43'),(231,'huuu','Bonjour','2018-06-09 14:13:54'),(232,'testing B','Bonjour','2018-06-09 14:14:11'),(233,'huuu','Ca va?','2018-06-09 14:14:29'),(234,'huuu','cool','2018-06-09 14:16:07'),(235,'huuu','cbn','2018-06-09 14:17:12'),(236,'huuu','kkdkdkd','2018-06-09 14:17:46'),(237,'testing B','cbn','2018-06-09 14:18:09'),(238,'huuu','bb','2018-06-09 14:18:18'),(239,'huuu','yuyuu','2018-06-09 14:18:26'),(240,'testing B','jhjl','2018-06-09 14:18:37'),(241,'ng','salut tout le mon','2018-06-16 13:14:30'),(242,'miss-ng','kak\r\n','2018-06-23 13:53:37');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online`
--

DROP TABLE IF EXISTS `online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online`
--

LOCK TABLES `online` WRITE;
/*!40000 ALTER TABLE `online` DISABLE KEYS */;
INSERT INTO `online` VALUES (1,'bernard ng'),(2,'kd'),(3,'b'),(4,'bernard'),(5,'bennn'),(6,'dania'),(7,'evody'),(8,'testing'),(9,'testing B'),(10,'the trust'),(11,'berber'),(12,'huuu'),(13,'ng'),(14,'miss-ng');
/*!40000 ALTER TABLE `online` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-03  0:27:33
