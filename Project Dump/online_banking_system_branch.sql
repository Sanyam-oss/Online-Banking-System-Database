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
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `ifsc_code` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(25) NOT NULL,
  `branch_account_number` bigint unsigned NOT NULL,
  `street` varchar(50) NOT NULL,
  `city_village_town` varchar(25) NOT NULL,
  `district` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `pincode` mediumint NOT NULL,
  `opening_date` date NOT NULL,
  PRIMARY KEY (`ifsc_code`),
  UNIQUE KEY `branch_name` (`branch_name`),
  KEY `branch_account_number` (`branch_account_number`),
  CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`branch_account_number`) REFERENCES `bank_account` (`account_number`),
  CONSTRAINT `branch_ibfk_2` FOREIGN KEY (`branch_account_number`) REFERENCES `bank_account` (`account_number`),
  CONSTRAINT `branch_chk_1` CHECK (((`pincode` >= 100000) and (`pincode` <= 999999)))
) ENGINE=InnoDB AUTO_INCREMENT=100026 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (100000,'TREASURY BRANCH',10000000000,'BUILDING 359, DR DN ROAD','GREATER BOMBAY','MUMBAI','MAHARASHTRA',400001,'2016-07-28'),(100001,'PASCHIM BANGA GRAMIN',10000000001,'NATWAR PAUL ROAD CHATTERJEE PARA MORE','HAORA','HOWRAH','WEST BENGAL',711101,'2017-05-11'),(100002,'GSI EXTENSION COUNTER',10000000002,'15 A AND B KYD STREET','KOLKATA','KOLKATA','WEST BENGAL',700016,'2016-09-27'),(100003,'SRI AUROBINDO ASHRAM',10000000003,'AUROBINDO MARG','NEW DELHI','NEW DELHI','DELHI',110016,'2017-06-26'),(100004,'MARINE DRIVE',10000000004,'MAFATLAL BUILDING, NARIMAN POINT','MUMBAI','MUMBAI','MAHARASHTRA',400021,'2016-09-27'),(100005,'SARISHA',10000000005,'LALMOHAN APARTMENT NH 117 DIAMOND HARBOUR ROAD','KOLKATA','KOLKATA','WEST BENGAL',743368,'2016-06-15'),(100006,'FAIZABAD ROAD',10000000006,'FAIZABAD ROAD','LUCKNOW','LUCKNOW','UTTAR PRADESH',226016,'2016-09-17'),(100007,'BORAL',10000000007,'P2 BORAL MAIN ROAD','PARGANAS','KOLKATA','WEST BENGAL',700154,'2017-05-02'),(100008,'CHIKHLI',10000000008,'CHIKHLI ABHIJIT HOUSING SOCIETY','PUNE','CHINCHWAD','MAHARASHTRA',411019,'2016-06-08'),(100009,'KHOUPUM',10000000009,'KHOUPUM SDO COMPLEX','NONEY','KHOUPUM','MANIPUR',795159,'2016-07-01'),(100010,'DOMBIVLI WEST MUMBAI',10000000010,'GUPTE ROAD DOMBIVLI WEST','THANE','MUMBAI','MAHARASHTRA',421201,'2017-01-06'),(100011,'ROUSE AVENUE',10000000011,'DISTRICT COURT DDU MARG','NEW DELHI','NEW DELHI','DELHI',110002,'2017-02-03'),(100012,'TITWALA',10000000012,'BUILDING NO 11 GANESH MANDIR ROAD','THANE','KALYAN THANE','MAHARASHTRA',421605,'2016-04-09'),(100013,'VIVEKANANDA SARANI',10000000013,'NO 3362  SENRALEIGH ROAD','BURDWAN','ASANSOL','WEST BENGAL',713301,'2016-12-19'),(100014,'MANINAGAR EAST',10000000014,'NO1, SHRI RANG HEIGHTS','AHMEDABAD','AHMEDABAD','GUJARAT',380008,'2017-11-12'),(100015,'AMBATTUR',10000000015,'67 B NORTH PARK STREET','CHENNAI','CHENNAI','TAMIL NADU',600053,'2017-04-21'),(100016,'NANGANALLUR',10000000016,'NO 53 PLOT NO 16 A VEERARAGHAVAN STREET','NANGANALLUR','CHENNAI','TAMIL NADU',600061,'2016-03-17'),(100017,'DHAKURIA B',10000000017,'31 A NARAYAN CHOUDHURY ROAD','KOLKATA','KOLKATA','WEST BENGAL',700042,'2017-07-16'),(100018,'GARAPADU',10000000018,'2 78A GARAPADU VATTI ','GUNTUR','GARAPADU','ANDHRA PRADESH',522002,'2016-11-05'),(100019,'THULLUR',10000000019,'3 97 NEAR TELEPHONE EXCHANGE','GUNTUR','THULLUR','ANDHRA PRADESH',522237,'2017-11-24'),(100020,'RAJOURI GARDEN',10000000020,'C-32 RAJOURI GARDEN','DELHI','NEW DELHI','DELHI',110027,'2016-04-10'),(100021,'THIRUNAGAR',10000000021,'THIRUVALUVAR STREET','THIRUNAGAR','MADURAI','TAMIL NADU',625006,'2017-07-02'),(100022,'BADGAON BRANCH',10000000022,'771 GRAMIN SACHIVALAYA','KANKER','BADGAON','CHHATTISGARH',494334,'2016-08-21'),(100023,'MALGADH',10000000023,'DEESA','BANAS KANTHA','DEESA','GUJARAT',385535,'2016-09-06'),(100024,'BELLANDUR',10000000024,'PARAS MEADOWS GREEN GLEN LAYOUT','BANGALORE URBAN','BANGALORE','KARNATAKA',560103,'2017-09-08'),(100025,'PANDITPURA',10000000025,'PANDITPURA PS BASWA','DAUSA','BANDIKURI','RAJASTHAN',303313,'2016-06-02');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-02 16:05:13
