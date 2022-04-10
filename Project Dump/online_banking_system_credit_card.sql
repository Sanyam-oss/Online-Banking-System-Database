-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: online_banking_system
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card` (
  `card_number` bigint unsigned NOT NULL,
  `cin` int unsigned NOT NULL,
  `billing_date` date DEFAULT (curdate()),
  `due_date` date DEFAULT ((curdate() + 20)),
  `credit_limit` mediumint NOT NULL DEFAULT (0),
  `total_amount_due` mediumint NOT NULL DEFAULT (0),
  `rewards_point` smallint unsigned DEFAULT (0),
  `minimum_amount_due` mediumint DEFAULT ((`total_amount_due` * 0.05)),
  PRIMARY KEY (`card_number`),
  KEY `cin` (`cin`),
  CONSTRAINT `credit_card_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `customer` (`cin`),
  CONSTRAINT `credit_card_ibfk_2` FOREIGN KEY (`card_number`) REFERENCES `card` (`card_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES (100000000200,100000125,'2022-03-25','2022-04-14',25000,21386,497,1069),(100000000201,100000126,'2022-03-23','2022-04-12',25000,28011,501,1401),(100000000202,100000127,'2022-03-07','2022-03-27',25000,18168,564,908),(100000000203,100000128,'2022-03-12','2022-04-01',25000,43833,848,2192),(100000000204,100000129,'2022-03-17','2022-04-06',25000,46853,125,2343),(100000000205,100000130,'2022-03-25','2022-04-14',25000,48199,799,2410),(100000000206,100000131,'2022-03-16','2022-04-05',25000,24160,675,1208),(100000000207,100000132,'2022-03-28','2022-04-17',25000,13978,234,699),(100000000208,100000133,'2022-03-29','2022-04-18',25000,30431,365,1522),(100000000209,100000134,'2022-03-19','2022-04-08',25000,25267,818,1263),(100000000210,100000135,'2022-03-20','2022-04-09',25000,3032,416,152),(100000000211,100000136,'2022-03-11','2022-03-31',25000,25813,770,1291),(100000000212,100000137,'2022-03-27','2022-04-16',25000,37856,395,1893),(100000000213,100000138,'2022-03-13','2022-04-02',25000,36663,753,1833),(100000000214,100000139,'2022-03-03','2022-03-23',25000,7264,87,363),(100000000215,100000140,'2022-03-16','2022-04-05',25000,41380,213,2069),(100000000216,100000141,'2022-03-20','2022-04-09',25000,41123,288,2056),(100000000217,100000142,'2022-03-29','2022-04-18',25000,3195,702,160),(100000000218,100000143,'2022-03-29','2022-04-18',25000,13743,349,687),(100000000219,100000144,'2022-03-12','2022-04-01',25000,37840,153,1892),(100000000220,100000145,'2022-03-08','2022-03-28',25000,17098,319,855),(100000000221,100000146,'2022-03-04','2022-03-24',25000,32256,302,1613),(100000000222,100000147,'2022-03-24','2022-04-13',25000,31242,630,1562),(100000000223,100000148,'2022-03-05','2022-03-25',25000,23928,818,1196),(100000000224,100000149,'2022-03-16','2022-04-05',25000,2349,235,117),(100000000225,100000150,'2022-03-16','2022-04-05',50000,38031,570,1902),(100000000226,100000151,'2022-03-27','2022-04-16',50000,46732,670,2337),(100000000227,100000152,'2022-03-30','2022-04-19',50000,44600,93,2230),(100000000228,100000153,'2022-03-29','2022-04-18',50000,17483,682,874),(100000000229,100000154,'2022-03-15','2022-04-04',50000,14920,491,746),(100000000230,100000155,'2022-03-05','2022-03-25',50000,16115,677,806),(100000000231,100000156,'2022-03-15','2022-04-04',50000,42899,655,2145),(100000000232,100000157,'2022-03-27','2022-04-16',50000,11335,807,567),(100000000233,100000158,'2022-03-24','2022-04-13',50000,37596,243,1880),(100000000234,100000159,'2022-03-28','2022-04-17',50000,43713,325,2186),(100000000235,100000160,'2022-03-21','2022-04-10',50000,42265,197,2113),(100000000236,100000161,'2022-03-08','2022-03-28',50000,40702,797,2035),(100000000237,100000162,'2022-03-11','2022-03-31',50000,3079,608,154),(100000000238,100000163,'2022-03-05','2022-03-25',50000,7243,599,362),(100000000239,100000164,'2022-03-05','2022-03-25',50000,27335,392,1367),(100000000240,100000165,'2022-03-12','2022-04-01',50000,2617,299,131),(100000000241,100000166,'2022-03-22','2022-04-11',50000,22173,666,1109),(100000000242,100000167,'2022-03-17','2022-04-06',50000,47201,157,2360),(100000000243,100000168,'2022-03-18','2022-04-07',50000,28347,534,1417),(100000000244,100000169,'2022-03-18','2022-04-07',50000,49499,352,2475),(100000000245,100000170,'2022-03-30','2022-04-19',50000,11515,374,576),(100000000246,100000171,'2022-03-06','2022-03-26',50000,2867,744,143),(100000000247,100000172,'2022-03-24','2022-04-13',50000,10179,568,509),(100000000248,100000173,'2022-03-16','2022-04-05',50000,6450,210,323),(100000000249,100000174,'2022-03-16','2022-04-05',50000,2887,532,144),(100000000250,100000401,'2022-03-05','2022-03-25',50000,30224,530,1511),(100000000251,100000402,'2022-03-08','2022-03-28',50000,23065,211,1153),(100000000252,100000403,'2022-03-28','2022-04-17',50000,20926,398,1046),(100000000253,100000404,'2022-03-10','2022-03-30',50000,47192,534,2360),(100000000254,100000405,'2022-03-28','2022-04-17',50000,36607,841,1830),(100000000255,100000406,'2022-03-02','2022-03-22',50000,16693,215,835),(100000000256,100000407,'2022-03-21','2022-04-10',50000,38936,818,1947),(100000000257,100000408,'2022-03-04','2022-03-24',50000,7676,829,384),(100000000258,100000409,'2022-03-13','2022-04-02',50000,21667,144,1083),(100000000259,100000410,'2022-03-01','2022-03-21',50000,28643,644,1432),(100000000260,100000411,'2022-03-05','2022-03-25',50000,35208,560,1760),(100000000261,100000412,'2022-03-28','2022-04-17',50000,27460,379,1373),(100000000262,100000413,'2022-03-09','2022-03-29',50000,39219,593,1961),(100000000263,100000414,'2022-03-01','2022-03-21',50000,10002,661,500),(100000000264,100000415,'2022-03-30','2022-04-19',50000,15228,271,761),(100000000265,100000416,'2022-03-27','2022-04-16',50000,40023,262,2001),(100000000266,100000417,'2022-03-07','2022-03-27',50000,36137,291,1807),(100000000267,100000418,'2022-03-26','2022-04-15',50000,13821,763,691),(100000000268,100000419,'2022-03-02','2022-03-22',50000,40475,759,2024),(100000000269,100000420,'2022-03-03','2022-03-23',50000,10805,823,540),(100000000270,100000351,'2022-03-04','2022-03-24',50000,2802,688,140),(100000000271,100000352,'2022-03-16','2022-04-05',50000,15244,552,762),(100000000272,100000353,'2022-03-28','2022-04-17',50000,47020,704,2351),(100000000273,100000354,'2022-03-04','2022-03-24',50000,26986,311,1349),(100000000274,100000355,'2022-03-30','2022-04-19',50000,34030,794,1702),(100000000275,100000356,'2022-03-05','2022-03-25',50000,42620,667,2131),(100000000276,100000357,'2022-03-13','2022-04-02',50000,32297,304,1615),(100000000277,100000358,'2022-03-16','2022-04-05',50000,37860,91,1893),(100000000278,100000359,'2022-03-05','2022-03-25',50000,23963,319,1198),(100000000279,100000360,'2022-03-19','2022-04-08',50000,12491,355,625),(100000000280,100000361,'2022-03-27','2022-04-16',50000,26956,741,1348),(100000000281,100000362,'2022-03-25','2022-04-14',50000,30088,847,1504),(100000000282,100000363,'2022-03-05','2022-03-25',50000,18202,558,910),(100000000283,100000364,'2022-03-20','2022-04-09',50000,36535,361,1827),(100000000284,100000365,'2022-03-29','2022-04-18',50000,37317,289,1866),(100000000285,100000366,'2022-03-01','2022-03-21',50000,36863,318,1843),(100000000286,100000367,'2022-03-17','2022-04-06',50000,31065,795,1553),(100000000287,100000368,'2022-03-07','2022-03-27',50000,16777,621,839),(100000000288,100000369,'2022-03-25','2022-04-14',50000,35590,307,1780),(100000000289,100000370,'2022-03-04','2022-03-24',50000,18502,66,925),(100000000290,100000371,'2022-03-23','2022-04-12',50000,29199,535,1460),(100000000291,100000372,'2022-03-26','2022-04-15',50000,3588,632,179),(100000000292,100000373,'2022-03-15','2022-04-04',50000,1856,575,93),(100000000293,100000374,'2022-03-26','2022-04-15',50000,14944,819,747),(100000000294,100000375,'2022-03-28','2022-04-17',50000,20808,297,1040),(100000000295,100000376,'2022-03-08','2022-03-28',50000,4057,820,203),(100000000296,100000377,'2022-03-21','2022-04-10',50000,19586,850,979),(100000000297,100000378,'2022-03-06','2022-03-26',50000,6413,803,321),(100000000298,100000379,'2022-03-30','2022-04-19',50000,26910,538,1346),(100000000299,100000380,'2022-03-22','2022-04-11',50000,30750,377,1538);
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-02 16:05:11
