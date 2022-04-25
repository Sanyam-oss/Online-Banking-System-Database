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
-- Table structure for table `savings_account`
--

DROP TABLE IF EXISTS `savings_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savings_account` (
  `account_number` bigint unsigned NOT NULL,
  `cin` int unsigned NOT NULL,
  PRIMARY KEY (`account_number`),
  UNIQUE KEY `cin` (`cin`),
  CONSTRAINT `savings_account_ibfk_1` FOREIGN KEY (`account_number`) REFERENCES `bank_account` (`account_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `savings_account_ibfk_2` FOREIGN KEY (`cin`) REFERENCES `personal_customer` (`cin`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savings_account`
--

LOCK TABLES `savings_account` WRITE;
/*!40000 ALTER TABLE `savings_account` DISABLE KEYS */;
INSERT INTO `savings_account` VALUES (11000000026,100000001),(11000000027,100000002),(11000000028,100000003),(11000000029,100000004),(11000000030,100000005),(11000000031,100000006),(11000000032,100000007),(11000000033,100000008),(11000000034,100000009),(11000000035,100000010),(11000000036,100000011),(11000000037,100000012),(11000000038,100000013),(11000000039,100000014),(11000000040,100000015),(11000000041,100000016),(11000000042,100000017),(11000000043,100000018),(11000000044,100000019),(11000000045,100000020),(11000000046,100000021),(11000000047,100000022),(11000000048,100000023),(11000000049,100000024),(11000000050,100000025),(11000000051,100000026),(11000000052,100000027),(11000000053,100000028),(11000000054,100000029),(11000000055,100000030),(11000000056,100000031),(11000000057,100000032),(11000000058,100000033),(11000000059,100000034),(11000000060,100000035),(11000000061,100000036),(11000000062,100000037),(11000000063,100000038),(11000000064,100000039),(11000000065,100000040),(11000000066,100000041),(11000000067,100000042),(11000000068,100000043),(11000000069,100000044),(11000000070,100000045),(11000000071,100000046),(11000000072,100000047),(11000000073,100000048),(11000000074,100000049),(11000000075,100000050),(11000000076,100000051),(11000000077,100000052),(11000000078,100000053),(11000000079,100000054),(11000000080,100000055),(11000000081,100000056),(11000000082,100000057),(11000000083,100000058),(11000000084,100000059),(11000000085,100000060),(11000000086,100000061),(11000000087,100000062),(11000000088,100000063),(11000000089,100000064),(11000000090,100000065),(11000000091,100000066),(11000000092,100000067),(11000000093,100000068),(11000000094,100000069),(11000000095,100000070),(11000000096,100000071),(11000000097,100000072),(11000000098,100000073),(11000000099,100000074),(11000000100,100000075),(11000000101,100000076),(11000000102,100000077),(11000000103,100000078),(11000000104,100000079),(11000000105,100000080),(11000000106,100000081),(11000000107,100000082),(11000000108,100000083),(11000000109,100000084),(11000000110,100000085),(11000000111,100000086),(11000000112,100000087),(11000000113,100000088),(11000000114,100000089),(11000000115,100000090),(11000000116,100000091),(11000000117,100000092),(11000000118,100000093),(11000000119,100000094),(11000000120,100000095),(11000000121,100000096),(11000000122,100000097),(11000000123,100000098),(11000000124,100000099),(11000000125,100000100),(11000000126,100000101),(11000000127,100000102),(11000000128,100000103),(11000000129,100000104),(11000000130,100000105),(11000000131,100000106),(11000000132,100000107),(11000000133,100000108),(11000000134,100000109),(11000000135,100000110),(11000000136,100000111),(11000000137,100000112),(11000000138,100000113),(11000000139,100000114),(11000000140,100000115),(11000000141,100000116),(11000000142,100000117),(11000000143,100000118),(11000000144,100000119),(11000000145,100000120),(11000000146,100000121),(11000000147,100000122),(11000000148,100000123),(11000000149,100000124),(11000000150,100000125),(11000000151,100000126),(11000000152,100000127),(11000000153,100000128),(11000000154,100000129),(11000000155,100000130),(11000000156,100000131),(11000000157,100000132),(11000000158,100000133),(11000000159,100000134),(11000000160,100000135),(11000000161,100000136),(11000000162,100000137),(11000000163,100000138),(11000000164,100000139),(11000000165,100000140),(11000000166,100000141),(11000000167,100000142),(11000000168,100000143),(11000000169,100000144),(11000000170,100000145),(11000000171,100000146),(11000000172,100000147),(11000000173,100000148),(11000000174,100000149),(11000000175,100000150),(11000000176,100000151),(11000000177,100000152),(11000000178,100000153),(11000000179,100000154),(11000000180,100000155),(11000000181,100000156),(11000000182,100000157),(11000000183,100000158),(11000000184,100000159),(11000000185,100000160),(11000000186,100000161),(11000000187,100000162),(11000000188,100000163),(11000000189,100000164),(11000000190,100000165),(11000000191,100000166),(11000000192,100000167),(11000000193,100000168),(11000000194,100000169),(11000000195,100000170),(11000000196,100000171),(11000000197,100000172),(11000000198,100000173),(11000000199,100000174),(11000000200,100000175),(11000000201,100000176),(11000000202,100000177),(11000000203,100000178),(11000000204,100000179),(11000000205,100000180),(11000000206,100000181),(11000000207,100000182),(11000000208,100000183),(11000000209,100000184),(11000000210,100000185),(11000000211,100000186),(11000000212,100000187),(11000000213,100000188),(11000000214,100000189),(11000000215,100000190),(11000000216,100000191),(11000000217,100000192),(11000000218,100000193),(11000000219,100000194),(11000000220,100000195),(11000000221,100000196),(11000000222,100000197),(11000000223,100000198),(11000000224,100000199),(11000000225,100000200),(11000000226,100000201),(11000000227,100000202),(11000000228,100000203),(11000000229,100000204),(11000000230,100000205),(11000000231,100000206),(11000000232,100000207),(11000000233,100000208),(11000000234,100000209),(11000000235,100000210),(11000000236,100000211),(11000000237,100000212),(11000000238,100000213),(11000000239,100000214),(11000000240,100000215),(11000000241,100000216),(11000000242,100000217),(11000000243,100000218),(11000000244,100000219),(11000000245,100000220),(11000000246,100000221),(11000000247,100000222),(11000000248,100000223),(11000000249,100000224),(11000000250,100000225),(11000000251,100000226),(11000000252,100000227),(11000000253,100000228),(11000000254,100000229),(11000000255,100000230),(11000000256,100000231),(11000000257,100000232),(11000000258,100000233),(11000000259,100000234),(11000000260,100000235),(11000000261,100000236),(11000000262,100000237),(11000000263,100000238),(11000000264,100000239),(11000000265,100000240),(11000000266,100000241),(11000000267,100000242),(11000000268,100000243),(11000000269,100000244),(11000000270,100000245),(11000000271,100000246),(11000000272,100000247),(11000000273,100000248),(11000000274,100000249),(11000000275,100000250);
/*!40000 ALTER TABLE `savings_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26  0:11:53
