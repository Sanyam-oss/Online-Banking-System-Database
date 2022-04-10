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
-- Table structure for table `customer_phone_number`
--

DROP TABLE IF EXISTS `customer_phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_phone_number` (
  `cin` int unsigned NOT NULL,
  `phone_number` bigint unsigned NOT NULL,
  PRIMARY KEY (`cin`,`phone_number`),
  CONSTRAINT `customer_phone_number_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `customer` (`cin`),
  CONSTRAINT `customer_phone_number_chk_1` CHECK (((`phone_number` >= 1000000000) and (`phone_number` <= 9999999999)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_phone_number`
--

LOCK TABLES `customer_phone_number` WRITE;
/*!40000 ALTER TABLE `customer_phone_number` DISABLE KEYS */;
INSERT INTO `customer_phone_number` VALUES (100000001,7492543057),(100000002,8862380267),(100000003,9320659480),(100000004,6085637378),(100000005,6576509010),(100000006,9435037578),(100000007,6655411804),(100000008,9588354257),(100000009,8375512532),(100000010,7712181824),(100000011,8268827275),(100000012,6148732982),(100000013,7011539259),(100000014,6706034388),(100000015,6459548739),(100000016,6768839812),(100000017,6583181270),(100000018,9286616319),(100000019,7186963697),(100000020,6635109359),(100000021,7448672199),(100000022,9028860082),(100000023,6831253811),(100000024,8124938272),(100000025,9185999945),(100000026,7772638290),(100000027,9834320497),(100000028,9405517879),(100000029,8639566093),(100000030,9751638668),(100000031,6506709300),(100000032,8565408667),(100000033,6360729350),(100000034,8057635495),(100000035,9766625871),(100000036,7694396490),(100000037,8064155594),(100000038,8818460779),(100000039,9128900793),(100000040,9347088033),(100000041,9122196974),(100000042,6257032895),(100000043,8259795320),(100000044,9216571910),(100000045,6948088788),(100000046,8495919154),(100000047,6251631026),(100000048,6497417906),(100000049,8371788649),(100000050,9415469971),(100000051,9447063297),(100000052,7735472780),(100000053,8934058502),(100000054,9398930301),(100000055,6687053529),(100000056,8603268623),(100000057,9853235054),(100000058,8056667453),(100000059,8311617100),(100000060,9475707417),(100000061,8849522459),(100000062,8050058002),(100000063,9887107262),(100000064,6067073573),(100000065,6072810282),(100000066,8795910583),(100000067,8826140756),(100000068,9647026794),(100000069,8729537665),(100000070,7658391698),(100000071,6423928324),(100000072,9042281392),(100000073,7763840605),(100000074,7698837533),(100000075,9927121329),(100000076,9062863838),(100000077,6281221579),(100000078,9932758323),(100000079,7713234348),(100000080,7490455355),(100000081,7950588798),(100000082,8649803280),(100000083,8912022213),(100000084,6593055730),(100000085,6446103605),(100000086,8566719840),(100000087,8149296356),(100000088,7526293135),(100000089,6017900585),(100000090,9557357504),(100000091,6828036980),(100000092,9450091152),(100000093,9915635161),(100000094,7059624869),(100000095,8091489313),(100000096,9436835941),(100000097,7381431006),(100000098,7900516695),(100000099,8259686656),(100000100,6415168631),(100000101,6119460012),(100000102,8776701966),(100000103,9997401397),(100000104,7874654241),(100000105,7602364762),(100000106,8630837124),(100000107,6702339528),(100000108,8589845596),(100000109,9370555277),(100000110,9183519481),(100000111,9379552899),(100000112,7938071643),(100000113,7256040929),(100000114,6399880762),(100000115,6763912113),(100000116,8177383482),(100000117,7007561533),(100000118,6424715734),(100000119,6525195610),(100000120,9399040667),(100000121,8317302533),(100000122,9026111643),(100000123,6370440271),(100000124,8514947880),(100000125,6648812569),(100000126,8669865874),(100000127,9235309470),(100000128,9777857273),(100000129,7347975227),(100000130,6479075298),(100000131,7443916294),(100000132,8192550965),(100000133,7510059880),(100000134,7292708310),(100000135,7208211567),(100000136,9288048458),(100000137,6350125691),(100000138,7585880960),(100000139,7109199068),(100000140,6550663366),(100000141,9475878949),(100000142,8706799594),(100000143,9300682529),(100000144,7397705957),(100000145,9298306344),(100000146,8495881118),(100000147,8160061731),(100000148,6710893746),(100000149,9512887248),(100000150,8972064497),(100000151,6571045788),(100000152,7469878578),(100000153,7027132003),(100000154,8167989768),(100000155,7798111354),(100000156,9106594912),(100000157,9705980452),(100000158,7248483213),(100000159,7000514906),(100000160,7219811255),(100000161,7980360189),(100000162,8396332530),(100000163,8094973382),(100000164,6831870391),(100000165,8308546192),(100000166,7726301921),(100000167,7218310543),(100000168,7138458765),(100000169,7056075570),(100000170,9279559259),(100000171,8179420792),(100000172,7343424733),(100000173,9644262180),(100000174,8776018439),(100000175,6184530595),(100000176,7226108262),(100000177,6596030383),(100000178,7030413693),(100000179,9494659783),(100000180,9136905431),(100000181,7345577849),(100000182,6251545878),(100000183,6581321652),(100000184,9067200923),(100000185,6346160669),(100000186,9032126184),(100000187,9305471801),(100000188,9253092186),(100000189,7836939179),(100000190,9028941974),(100000191,6363288161),(100000192,6737661446),(100000193,9307495259),(100000194,6521097168),(100000195,7716288628),(100000196,7817299361),(100000197,6074725504),(100000198,9560961436),(100000199,8404105321),(100000200,7994169205),(100000201,7623949781),(100000202,6407005607),(100000203,9804190071),(100000204,9498983540),(100000205,7865701905),(100000206,6294941634),(100000207,6006672244),(100000208,6324788760),(100000209,6381988191),(100000210,8635707903),(100000211,9110138821),(100000212,8364363605),(100000213,6512299866),(100000214,9759204920),(100000215,9238622747),(100000216,7541621164),(100000217,7428947871),(100000218,6753715902),(100000219,9912277665),(100000220,6690122567),(100000221,9747164348),(100000222,6309749817),(100000223,6820763121),(100000224,8975738392),(100000225,9428601533),(100000226,6010457189),(100000227,8306555113),(100000228,7115779933),(100000229,9735824572),(100000230,9708729794),(100000231,6554373501),(100000232,8783622524),(100000233,7051478918),(100000234,6245406056),(100000235,9440488644),(100000236,8990823702),(100000237,9608755840),(100000238,6770457646),(100000239,9136557400),(100000240,7843040615),(100000241,7288524302),(100000242,8632655549),(100000243,8459951357),(100000244,8318581137),(100000245,6012357625),(100000246,8221377048),(100000247,6999365013),(100000248,7994859597),(100000249,9293644369),(100000250,9327187277),(100000251,6643764514),(100000252,7731790316),(100000253,6666614407),(100000254,6689243467),(100000255,7068910786),(100000256,8856982002),(100000257,9187792049),(100000258,9434395213),(100000259,9513066528),(100000260,7767170300),(100000261,6859021013),(100000262,6266860420),(100000263,7890887472),(100000264,6403219331),(100000265,6056517710),(100000266,9771807658),(100000267,9441935019),(100000268,9330586249),(100000269,9748592055),(100000270,6469534142),(100000271,6547406786),(100000272,9476055991),(100000273,8135918093),(100000274,8836159975),(100000275,9615285331),(100000276,7616935532),(100000277,6391729733),(100000278,8218484285),(100000279,9579780364),(100000280,8231646006),(100000281,6106702397),(100000282,9289202395),(100000283,7242218715),(100000284,8332479059),(100000285,7520440152),(100000286,8214742988),(100000287,8194105349),(100000288,7288271383),(100000289,7689265884),(100000290,8722528366),(100000291,7532552696),(100000292,7353322041),(100000293,8001052685),(100000294,6751344956),(100000295,6574326267),(100000296,8622832914),(100000297,6280870536),(100000298,7379584857),(100000299,9900996679),(100000300,8707327712),(100000301,7838938490),(100000302,6677560860),(100000303,6351324652),(100000304,6769211148),(100000305,8916511656),(100000306,7553012303),(100000307,8358300756),(100000308,7802371267),(100000309,6556161764),(100000310,8277057982),(100000311,6051788525),(100000312,8337590868),(100000313,7677977014),(100000314,8585158948),(100000315,7362286006),(100000316,9180304564),(100000317,9742313710),(100000318,7792733701),(100000319,8908915406),(100000320,8645267158),(100000321,7237644016),(100000322,6723175016),(100000323,8588841738),(100000324,8037246179),(100000325,8400498479),(100000326,8892040958),(100000327,6433664748),(100000328,6953891641),(100000329,8862744694),(100000330,9729755044),(100000331,8501976456),(100000332,6637405693),(100000333,9217935774),(100000334,6985448895),(100000335,8428971093),(100000336,6197887088),(100000337,9654307041),(100000338,8918611846),(100000339,6881119422),(100000340,7659125326),(100000341,9208792063),(100000342,6459242510),(100000343,6176717746),(100000344,7625214321),(100000345,8512389651),(100000346,8690988464),(100000347,9424502171),(100000348,7838178823),(100000349,9208542990),(100000350,7264589556),(100000351,9564359996),(100000352,6615498586),(100000353,6489448676),(100000354,6973962612),(100000355,8116627838),(100000356,9724562899),(100000357,8536065254),(100000358,9538486778),(100000359,6243832304),(100000360,6417497430),(100000361,7180237088),(100000362,6725013658),(100000363,7668963321),(100000364,6555143167),(100000365,9747602519),(100000366,8147826817),(100000367,9403287990),(100000368,6300642549),(100000369,8053161785),(100000370,8331208757),(100000371,7523260660),(100000372,7568426847),(100000373,6750752366),(100000374,9476674033),(100000375,6713415500),(100000376,7286127866),(100000377,6323508748),(100000378,9549025223),(100000379,8280001580),(100000380,8325283996),(100000381,7277123705),(100000382,9442147448),(100000383,6708961029),(100000384,6806848929),(100000385,7987581795),(100000386,9450296913),(100000387,8448835492),(100000388,7486722156),(100000389,6456917747),(100000390,7561787325),(100000391,8896265193),(100000392,7432169289),(100000393,8524214331),(100000394,8768653850),(100000395,9618275576),(100000396,8022819396),(100000397,9344431170),(100000398,7836131234),(100000399,9936596048),(100000400,6679930452);
/*!40000 ALTER TABLE `customer_phone_number` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-02 16:05:06
