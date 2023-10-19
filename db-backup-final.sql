-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: jakeclark.mysql.pythonanywhere-services.com    Database: JakeClark$default
-- ------------------------------------------------------
-- Server version	5.7.34-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer_collection`
--

DROP TABLE IF EXISTS `answer_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ques1` varchar(1) DEFAULT NULL,
  `ques2` varchar(1) DEFAULT NULL,
  `ques3` varchar(1) DEFAULT NULL,
  `ques4` varchar(1) DEFAULT NULL,
  `ques5` varchar(1) DEFAULT NULL,
  `ans` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_collection`
--

LOCK TABLES `answer_collection` WRITE;
/*!40000 ALTER TABLE `answer_collection` DISABLE KEYS */;
INSERT INTO `answer_collection` VALUES (1,'C','D','A','C','B','-l9V_i'),(2,'B','D','A','C','B','_ZxUsS'),(3,'B','C','C','B','C','KBd-HD'),(4,'A','A','A','A','A','nuLVZx'),(5,'B','A','A','B','A','W_vDlB'),(6,'B','A','A','C','B','chfiFs'),(7,'C','A','A','C','C','87lvO9'),(8,'C','D','C','D','C','-zRtQc'),(9,'B','B','A','C','B','6L0vMY'),(10,'B','D','A','C','C','xbZWwA'),(11,'B','A','C','C','A','hlT-jH'),(12,'B','A','C','C','A','Gmv0rd'),(13,'C','D','A','C','A','HqAHFw'),(14,'C','C','A','C','C','W2IpiP'),(15,'B','A','A','C','B','9shiHo'),(16,'B','C','D','C','B','-zQsug'),(17,'C','D','C','C','A','UdNz2h'),(18,'B','A','A','C','C','krIeeb'),(19,'B','C','A','C','C','1mNbzR'),(20,'C','A','A','C','C','mYz3OL'),(21,'B','A','B','C','C','5mQCjv'),(22,'C','A','B','C','C','Yag401'),(23,'B','C','A','C','A','XqaxLR'),(24,'D','A','A','C','B','vpjhjV'),(25,'C','C','A','C','C','CuFnUb'),(26,'B','B','A','C','C','k7Rl_V'),(27,'B','A','B','C','B','be2tZx'),(28,'C','A','A','C','A','70vgiR'),(29,'C','C','A','C','C','iZNfCd'),(30,'C','C','C','C','C','wdMkxU'),(31,'B','A','B','C','C','9SnC5H'),(32,'C','A','D','C','C','vW9H8f'),(33,'B','A','B','B','B','soWig8'),(34,'A','A','A','A','A','ZnCyyZ'),(35,'B','B','B','B','B','Lyn0_R'),(36,'C','A','A','C','A','3nXoLo'),(37,'A','B','B','B','B','P8Gh4R'),(38,'A','B','B','B','B','62XAiA'),(39,'A','A','A','A','A','zdR_vl'),(40,'C','D','A','B','C','n48lSt'),(41,'C','C','A','C','C','m_zhtT'),(42,'B','A','A','C','B','WgrGfF'),(43,'B','D','A','C','A','pzs-VU'),(44,'A','A','A','A','A','r9elqy'),(45,'B','C','A','C','B','NMwkrN'),(46,'C','C','C','C','D','KfS99i'),(47,'C','A','A','C','C','hLbRma'),(48,'B','A','A','C','B','bbL9S2'),(49,'B','A','A','C','B','hwkQTR'),(50,'D','D','A','C','D','7XYMSO'),(51,'B','A','A','C','C','ytWxkq'),(52,'C','A','A','C','B','PaO0hQ'),(56,'A','B','B','B','B','ZQt4kR'),(57,'B','C','C','C','C','v5wQVP'),(58,'A','A','A','A','A','mshGGN'),(59,'A','A','A','A','A','lWLpyW'),(60,'B','A','A','C','B','jmmubl'),(61,'C','A','A','C','C','UlW9CV'),(62,'B','A','D','C','C','YY8oLn'),(63,'C','A','A','C','C','2JP0LT'),(64,'B','C','A','C','C','sxil5-'),(65,'C','C','B','C','C','U3rwGE'),(66,'B','A','A','C','C','TkoUeg'),(67,'B','C','A','C','C','v3XRCq'),(68,'C','A','A','C','B','vhDt86'),(69,'C','C','D','C','C','Z5AIaQ'),(70,'B','B','A','C','B','yvHxEM'),(71,'C','A','A','C','C','UYtW5I'),(72,'C','A','A','C','C','mVQJJw'),(73,'C','A','A','C','C','ts3QJh'),(74,'C','C','D','C','C','PEWIVP'),(75,'C','C','A','C','C','5IuuaT'),(76,'C','A','A','B','B','rE71nZ'),(77,'C','A','D','C','B','S0KSbT'),(78,'C','A','A','B','C','sqKfjK'),(79,'B','A','A','C','C','bgprh3'),(80,'B','A','A','C','C','4kT94A'),(81,'B','A','D','C','A','MHvv15'),(82,'B','D','C','D','A','xmM3Wt'),(83,'B','A','C','A','B','Gd65yQ'),(84,'B','A','D','A','C','kyXYWV'),(85,'B','A','B','C','B','14flJm'),(86,'B','A','D','A','A','wwiUtx'),(87,'B','A','C','A','B','yR_E55'),(89,'B','A','B','C','C','FO0Ge7'),(90,'B','A','D','C','B','O9uylA');
/*!40000 ALTER TABLE `answer_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ques1`
--

DROP TABLE IF EXISTS `ques1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ques1` (
  `ans` varchar(1) NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`ans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ques1`
--

LOCK TABLES `ques1` WRITE;
/*!40000 ALTER TABLE `ques1` DISABLE KEYS */;
INSERT INTO `ques1` VALUES ('A',1),('B',4),('C',3),('D',2);
/*!40000 ALTER TABLE `ques1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ques1_count`
--

DROP TABLE IF EXISTS `ques1_count`;
/*!50001 DROP VIEW IF EXISTS `ques1_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ques1_count` AS SELECT 
 1 AS `ans`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ques2`
--

DROP TABLE IF EXISTS `ques2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ques2` (
  `ans` varchar(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ques2`
--

LOCK TABLES `ques2` WRITE;
/*!40000 ALTER TABLE `ques2` DISABLE KEYS */;
INSERT INTO `ques2` VALUES ('A',4),('B',2),('C',3),('D',1);
/*!40000 ALTER TABLE `ques2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ques2_count`
--

DROP TABLE IF EXISTS `ques2_count`;
/*!50001 DROP VIEW IF EXISTS `ques2_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ques2_count` AS SELECT 
 1 AS `ans`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ques3`
--

DROP TABLE IF EXISTS `ques3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ques3` (
  `ans` varchar(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ques3`
--

LOCK TABLES `ques3` WRITE;
/*!40000 ALTER TABLE `ques3` DISABLE KEYS */;
INSERT INTO `ques3` VALUES ('A',4),('B',1),('C',3),('D',2);
/*!40000 ALTER TABLE `ques3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ques3_count`
--

DROP TABLE IF EXISTS `ques3_count`;
/*!50001 DROP VIEW IF EXISTS `ques3_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ques3_count` AS SELECT 
 1 AS `ans`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ques4`
--

DROP TABLE IF EXISTS `ques4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ques4` (
  `ans` varchar(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ques4`
--

LOCK TABLES `ques4` WRITE;
/*!40000 ALTER TABLE `ques4` DISABLE KEYS */;
INSERT INTO `ques4` VALUES ('A',1),('B',3),('C',4),('D',2);
/*!40000 ALTER TABLE `ques4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ques4_count`
--

DROP TABLE IF EXISTS `ques4_count`;
/*!50001 DROP VIEW IF EXISTS `ques4_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ques4_count` AS SELECT 
 1 AS `ans`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ques5`
--

DROP TABLE IF EXISTS `ques5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ques5` (
  `ans` varchar(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ques5`
--

LOCK TABLES `ques5` WRITE;
/*!40000 ALTER TABLE `ques5` DISABLE KEYS */;
INSERT INTO `ques5` VALUES ('A',1),('B',4),('C',3),('D',2);
/*!40000 ALTER TABLE `ques5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ques5_count`
--

DROP TABLE IF EXISTS `ques5_count`;
/*!50001 DROP VIEW IF EXISTS `ques5_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ques5_count` AS SELECT 
 1 AS `ans`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `summary_score`
--

DROP TABLE IF EXISTS `summary_score`;
/*!50001 DROP VIEW IF EXISTS `summary_score`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `summary_score` AS SELECT 
 1 AS `ID`,
 1 AS `ques1_score`,
 1 AS `ques2_score`,
 1 AS `ques3_score`,
 1 AS `ques4_score`,
 1 AS `ques5_score`,
 1 AS `Sum`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `birthday` text,
  `password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'PlaneAndCars','2021-09-10','PlaneAndCars1'),(2,'PlaneAndCars2','2021-09-16','PlaneAndCars1'),(3,'PlaneAndCars3','2021-09-09','PlaneAndCars1'),(4,'Mysteryguy','2000-07-07','Mysteryguy070700');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `ques1_count`
--

/*!50001 DROP VIEW IF EXISTS `ques1_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`JakeClark`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ques1_count` AS select `ques1`.`ans` AS `ans`,count(`answer_collection`.`ques1`) AS `total` from (`ques1` join `answer_collection` on((`ques1`.`ans` = `answer_collection`.`ques1`))) group by `ques1`.`ans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ques2_count`
--

/*!50001 DROP VIEW IF EXISTS `ques2_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`JakeClark`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ques2_count` AS select `ques2`.`ans` AS `ans`,count(`answer_collection`.`ques2`) AS `total` from (`ques2` join `answer_collection` on((`ques2`.`ans` = `answer_collection`.`ques2`))) group by `ques2`.`ans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ques3_count`
--

/*!50001 DROP VIEW IF EXISTS `ques3_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`JakeClark`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ques3_count` AS select `ques3`.`ans` AS `ans`,count(`answer_collection`.`ques3`) AS `total` from (`ques3` join `answer_collection` on((`ques3`.`ans` = `answer_collection`.`ques3`))) group by `ques3`.`ans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ques4_count`
--

/*!50001 DROP VIEW IF EXISTS `ques4_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`JakeClark`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ques4_count` AS select `ques4`.`ans` AS `ans`,count(`answer_collection`.`ques4`) AS `total` from (`ques4` join `answer_collection` on((`ques4`.`ans` = `answer_collection`.`ques4`))) group by `ques4`.`ans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ques5_count`
--

/*!50001 DROP VIEW IF EXISTS `ques5_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`JakeClark`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ques5_count` AS select `ques5`.`ans` AS `ans`,count(`answer_collection`.`ques5`) AS `total` from (`ques5` join `answer_collection` on((`ques5`.`ans` = `answer_collection`.`ques5`))) group by `ques5`.`ans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `summary_score`
--

/*!50001 DROP VIEW IF EXISTS `summary_score`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`JakeClark`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `summary_score` AS select `answer_collection`.`id` AS `ID`,`ques1`.`score` AS `ques1_score`,`ques5`.`score` AS `ques2_score`,`ques3`.`score` AS `ques3_score`,`ques4`.`score` AS `ques4_score`,`ques5`.`score` AS `ques5_score`,((((`ques1`.`score` + `ques2`.`score`) + `ques3`.`score`) + `ques4`.`score`) + `ques5`.`score`) AS `Sum` from (`ques5` join (`ques4` join (`ques3` join (`ques2` join (`ques1` join `answer_collection` on((`ques1`.`ans` = `answer_collection`.`ques1`))) on((`ques2`.`ans` = `answer_collection`.`ques2`))) on((`ques3`.`ans` = `answer_collection`.`ques3`))) on((`ques4`.`ans` = `answer_collection`.`ques4`))) on((`ques5`.`ans` = `answer_collection`.`ques5`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-02  4:44:57
