CREATE DATABASE  IF NOT EXISTS `team_7` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `team_7`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: mscba02    Database: team_7
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `PHONE_NUMBER` varchar(11) NOT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `MIDDLE_NAME` varchar(30) DEFAULT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  PRIMARY KEY (`PHONE_NUMBER`),
  UNIQUE KEY `PHONE_NUMBER_UNIQUE` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('07006198310','Kerri ','Chappel','Hall'),('07011535851','Caroline ','Rimmer','Allyson '),('07023483846','Louis ','Williams','Watt'),('07024285341','Faye ','Oliver','Tanner'),('07026806172','Claire ','Alfred','Savage'),('07029416947','Lloyd ','Marks','Robertson'),('07031478798','Kimberley ','Denton','Elaine '),('07036426182','Kathryn ','Howell','Alice'),('07037730167','Veronica ','Bellamy','Stanton'),('07040514717','Jose ','Jackson','Ballard'),('07042600047','Benjamin ','Deandre','Drake'),('07042635260','Anita ','Latha','Alexander '),('07049287410','Michael','Hector','Harvey'),('07052226842','Tarzan','Ingham','Day'),('07055392437','Daniela ','Randall','Choice'),('07059768371','Vincent ','Barnard','Stanley'),('07064849692','Terrence ','Dowling','Santos '),('07066457296','Johnny ','Tucker','Bradshaw'),('07070201314','Jeannette ','Butcher','Lana '),('07073515929','Doug ','Simpson','Shepherd'),('07076741035','Gwyneth ','White','Pittman'),('07078156592','Lynsey ','Ashley','Wells'),('07081364641','Bethany ','Sanders','Duarte'),('07082731556','Adrian ','Baxter','Alberto '),('07083001514','Leon ','Dutton','Jake '),('07085639317','Nicole','Aniston','Everett'),('07087058104','Zara ','Ali','Khan'),('07089284599','Sean ','Green','Herman'),('07703681808','Trevor ','Thorne','Spencer'),('07704239250','Melody','Daniela','Lavonnie '),('07709224269','Rex ','Hubbard','Bradshaw'),('07709789831','Nicholas ','Kenyon','Orwell'),('07710969475','Rajesh ','Goodhall','Suryavanshi'),('07711803478','Jacqui ','Emery','Merci'),('07715118040','Arnold ','Butterfield','Manuel '),('07715608361','Lance ','Hughes','Massey'),('07716156424','Adline','Melissa','Pollard'),('07720517087','Grace ','White','Darnell '),('07721365931','Laura ','Bamford','Hall'),('07727651649','Francis ','Claude','Hobbs'),('07728431162','Leslie ','Donovan','Joyce'),('07733916931','Stefan','Daren','Palmer'),('07734912327','Marcus ','Steve','Emmanuel '),('07736309867','Juliet ','Ann','Howard '),('07738956287','Jackie ','Lambert','Choice'),('07763294967','Glenda ','Davidson','Dougherty'),('07766021615','Faye ','Evans','Wesley'),('07769210904','Trudi ','Adams','Pitts'),('07772765558','Jane ','Welch','Hunter'),('07773046131','Alexandra ','Irving','Cline'),('07774710911','Lee ','Christie','Lindstone'),('07776660119','Paul ','Cartwright','Murray'),('07777410949','Aaron ','Harvey','Hull'),('07780081793','Gerard ','Bradshaw','Hobbs'),('07785910068','Christian ','O\'Shea','Webster'),('07815847600','Denis ','Myers','Josh '),('07818312853','Nigel ','Lodge','Hall'),('07821368246','Shona ','Grey','Smith'),('07822834740','Guy ','Augustus','Andrews'),('07827980270','Katarina ','Dale','Duarte'),('07830112277','Helen ','Turnbull','Antwon '),('07835980471','Maria ','Sumner','Carlos'),('07839667646','Phil ','Marcus','Chavez'),('07840578807','Rachel ','White','Farrell'),('07845591267','Kareena ','Haris','Ali'),('07848306511','Bruce','Cowan','Santos '),('07850297637','Ashley ','Fitzer','Berry '),('07853460217','Alison ','Clayton','Hall'),('07856371662','Emmanuel ','Kirkham','Shane'),('07868739520','Stacy ','Harris','Callahan'),('07868969142','Andrea ','Lewsey','Cordova'),('07870248162','Sharron ','Marion','Michael'),('07879902468','Stanley ','Dion','Scott'),('07881335904','Kathryn ','Ashcroft','Berry '),('07886732968','Angie ','Howard','Love'),('07900105226','Kristina ','Mercer','Fuller'),('07908524491','Patricia ','Pearce','Alexios'),('07909445747','Mike','Owens','Jerald '),('07909974773','Moses','Prince','Waters'),('07912141660','Tessa ','Madden','Jamie'),('07915505024','Marcin ','Foley','Mccarty'),('07919355597','Jayne ','Clarkson','Rhett '),('07927657038','Elsie ','Hartley','Colon'),('07929746968','Arshad ','Malik','Khan'),('07931704473','Owen ','Fallon','Jake '),('07933447630','Michelle ','Scott','Rose'),('07941233909','Teddy','Maher','Waylon '),('07942474600','Alex','Middleton','Maddox'),('07949833404','Mervyn ','Jessie','Hamilton'),('07954046199','Derrick ','Woodward','Gavin '),('07956334457','Stella ','Hibbert','Franco'),('07957103227','Nisha ','Soorya','Aggarwal'),('07959260054','Ella ','Hamilton','Fuller'),('07968567919','Elena ','Lamar','Richard'),('07969374626','Nathalie ','Robins','Hannah'),('07970551286','Oliver','Mills','Mark'),('07975893412','Josh ','Heywood','Gilbert'),('07976965190','Jordan ','Howells','Rolland '),('07984288868','Kylie','Green','Gustavo '),('07985332467','Stefan ','Durrant','Alexios');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pub`
--

DROP TABLE IF EXISTS `pub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pub` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PHONE_NUMBER` varchar(11) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PUB_TYPE` varchar(30) NOT NULL,
  `POSTCODE` varchar(8) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`) /*!80000 INVISIBLE */,
  UNIQUE KEY `PHONE_NUMBER_UNIQUE` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pub`
--

LOCK TABLES `pub` WRITE;
/*!40000 ALTER TABLE `pub` DISABLE KEYS */;
INSERT INTO `pub` VALUES (10001,'McGinty\'s Meal An\' Ale','01224496114','mcginty_m&a67@gmail.com','Pub','AB10 1TT','504 Union Street, Aberdeen'),(10002,'Miller & Carter Steakhouse','01224531074','aberdeen@millerandcarter.co.uk','Restaurant','AB10 1BD','26-38 Union Street, Aberdeen'),(10003,'The Glentanar Bar','01224496653','the_gbar39holburn@gmail.com','Bar','AB10 6BS','39 Holburn Street, Aberdeen'),(10004,'Downstairs','01224496859','downstairs143@gmail.com','Bar','AB10 6BY','82 Holburn Street, Aberdeen'),(10005,'La Tasca','01224496642','la_tasca@gmail.com','Restaurant','AB11 6BT','367 Union Street, Aberdeen'),(10006,'Orchid Bar','01224496751','orchid_bar@gmail.com','Bar','AB11 6DJ','14 Bon Accord, Aberdeen'),(10007,'The Grill','01224496315','the_grill@gmail.com','Bar','AB11 6BA','213 Union Street, Aberdeen'),(10008,'Hatch','01224496467','hatch143@gmail.com','Restaurant','AB10 1LB','The Academy, 37 Belmont Street, Aberdeen'),(10009,'Rye and Soda','01224496683','rye_soda@gmail.com','Restaurant','AB10 1LB','Unit 17, The Academy, 37 Belmont Street, Aberdeen'),(10010,'Revolution','01224496923','revolution143@gmail.com','Bar','AB10 1JS','25 Belmont Street, Aberdeen'),(10011,'Siberia Vodka Bar','01224496616','siberia_vbar@gmail.com','Hotel','AB10 1JR','9 Belmont Street, Aberdeen'),(10012,'The Wild Boar','01224496982','the_wboar@gmail.com','Bar','AB10 1JR','19 Belmont Street, Aberdeen'),(10013,'Ma Cameron\'s','01224496078','ma_cameron\'s@gmail.com','Bar','AB10 1JG','6-8 Little Belmont Street, Aberdeen'),(10014,'The Tippling House','01224496604','the_thouse@gmail.com','Bar','AB10 1JE','4 Belmont Street, Aberdeen'),(10015,'Prince of Wales','01224496577','prince_wales@gmail.com','Bar','AB10 1HF','7 St Nicholas Lane, Aberdeen'),(10016,'Casc','01224496349','casc143@gmail.com','Bar','AB11 6ND','7 Stirling Street, Aberdeen'),(10017,'Spin','01224496171','spin143@gmail.com','Restaurant','AB10 1FG','10 Littlejohn Street, Aberdeen'),(10018,'BrewDog Aberdeen, Castlegate','01224496520','brewdog_b&c@gmail.com','Restaurant','AB11 5BU','5-9 Union Street, Aberdeen'),(10019,'Underdog','01224496573','underdog145@gmail.com','Restaurant','AB11 6BA','1 Union Street, Aberdeen'),(10020,'Old Blackfriars','01224496423','old_blackfriars@gmail.com','Bar','AB11 5BB','52 Castle Street, Aberdeen'),(10021,'Justice Mill - JD Wetherspoon','01224496521','justice_mill_jdws@gmail.com','Bar','AB11 6DA','423 Union Street, Aberdeen'),(10022,'The Stag','01224496968','the_stag@gmail.com','Bar','AB11 6HB','6 Crown Street, Aberdeen'),(10023,'The Archibald Simpson','01224496295','the_archsimpson@gmail.com','Bar','AB11 5BQ','5 Castle Street, Aberdeen'),(10024,'Vovem Meat & Liquor','01224496799','vover_m&l101@gmail.com','Restaurant','AB10 1TN','254 Union Street, Aberdeen'),(10025,'Café Andaluz','01224496789','café_andaluz@gmail.com','Restaurant','AB11 6FX','5 Bon Accord Street, Aberdeen');
/*!40000 ALTER TABLE `pub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `ID` int(11) NOT NULL,
  `PUB_ID` int(11) NOT NULL,
  `PHONE_NUMBER_ID` varchar(11) NOT NULL,
  `TIME_OF_ENTRY` datetime NOT NULL,
  `GROUP_YN` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_REGISTER_CUSTOMER1_idx` (`PHONE_NUMBER_ID`),
  KEY `fk_REGISTER_PUB` (`PUB_ID`),
  CONSTRAINT `fk_REGISTER_CUSTOMER1` FOREIGN KEY (`PHONE_NUMBER_ID`) REFERENCES `customer` (`PHONE_NUMBER`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_REGISTER_PUB` FOREIGN KEY (`PUB_ID`) REFERENCES `pub` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,10001,'07064849692','2021-10-30 11:15:05','NO'),(2,10002,'07848306511','2021-10-30 11:20:08','NO'),(3,10003,'07733916931','2021-10-30 11:25:11','NO'),(4,10004,'07704239250','2021-10-30 11:30:14','YES'),(5,10005,'07821368246','2021-10-30 11:35:17','YES'),(6,10006,'07734912327','2021-10-30 11:40:20','NO'),(7,10007,'07984288868','2021-10-30 11:45:23','YES'),(8,10008,'07830112277','2021-10-30 11:50:26','YES'),(9,10009,'07970551286','2021-10-30 11:55:29','YES'),(10,10010,'07715118040','2021-10-30 12:00:32','NO'),(11,10011,'07078156592','2021-10-30 12:05:35','NO'),(12,10012,'07780081793','2021-10-30 12:10:38','NO'),(13,10013,'07081364641','2021-10-30 12:15:41','YES'),(14,10014,'07736309867','2021-10-30 12:20:44','YES'),(15,10015,'07087058104','2021-10-30 12:25:47','NO'),(16,10016,'07815847600','2021-10-30 12:30:50','NO'),(17,10017,'07709789831','2021-10-30 12:35:53','YES'),(18,10018,'07059768371','2021-10-30 12:40:56','YES'),(19,10019,'07881335904','2021-10-30 12:45:59','NO'),(20,10020,'07720517087','2021-10-30 12:51:02','YES'),(21,10021,'07727651649','2021-10-30 12:56:05','YES'),(22,10022,'07931704473','2021-10-30 13:01:08','NO'),(23,10023,'07850297637','2021-10-30 13:06:11','NO'),(24,10024,'07083001514','2021-10-30 13:11:14','NO'),(25,10025,'07929746968','2021-10-30 13:16:17','NO'),(26,10001,'07957103227','2021-10-30 13:21:20','YES'),(27,10002,'07042600047','2021-10-30 13:26:23','NO'),(28,10003,'07968567919','2021-10-30 13:31:26','YES'),(29,10004,'07023483846','2021-10-30 13:36:29','NO'),(30,10005,'07766021615','2021-10-30 13:41:32','NO'),(31,10006,'07031478798','2021-10-30 13:46:35','NO'),(32,10007,'07909445747','2021-10-30 13:51:38','NO'),(33,10008,'07716156424','2021-10-30 13:56:41','NO'),(34,10009,'07042635260','2021-10-30 14:01:44','NO'),(35,10010,'07006198310','2021-10-30 14:06:47','NO'),(36,10011,'07949833404','2021-10-30 14:11:50','NO'),(37,10012,'07853460217','2021-10-30 14:16:53','YES'),(38,10013,'07879902468','2021-10-30 14:21:56','YES'),(39,10014,'07011535851','2021-10-30 14:26:59','YES'),(40,10015,'07721365931','2021-10-30 14:32:02','NO'),(41,10016,'07774710911','2021-10-30 14:37:05','YES'),(42,10017,'07908524491','2021-10-30 14:42:08','NO'),(43,10018,'07082731556','2021-10-30 14:47:11','NO'),(44,10019,'07822834740','2021-10-30 14:52:14','NO'),(45,10020,'07709224269','2021-10-30 14:57:17','NO'),(46,10021,'07870248162','2021-10-30 15:02:20','YES'),(47,10022,'07941233909','2021-10-30 15:07:23','NO'),(48,10023,'07927657038','2021-10-30 15:12:26','YES'),(49,10024,'07773046131','2021-10-30 15:17:29','YES'),(50,10025,'07785910068','2021-10-30 15:22:32','YES'),(51,10001,'07710969475','2021-10-30 15:27:35','YES'),(52,10002,'07886732968','2021-10-30 15:32:38','NO'),(53,10003,'07933447630','2021-10-30 15:37:41','YES'),(54,10004,'07703681808','2021-10-30 15:42:44','YES'),(55,10005,'07040514717','2021-10-30 15:47:47','NO'),(56,10006,'07840578807','2021-10-30 15:52:50','NO'),(57,10007,'07763294967','2021-10-30 15:57:53','NO'),(58,10008,'07868739520','2021-10-30 16:02:56','NO'),(59,10009,'07073515929','2021-10-30 16:07:59','NO'),(60,10010,'07845591267','2021-10-30 16:13:02','NO'),(61,10011,'07919355597','2021-10-30 16:18:05','NO'),(62,10012,'07085639317','2021-10-30 16:23:08','NO'),(63,10013,'07777410949','2021-10-30 16:28:11','YES'),(64,10014,'07715608361','2021-10-30 16:33:14','YES'),(65,10015,'07969374626','2021-10-30 16:38:17','NO'),(66,10016,'07089284599','2021-10-30 16:43:20','NO'),(67,10017,'07915505024','2021-10-30 16:48:23','YES'),(68,10018,'07037730167','2021-10-30 16:53:26','YES'),(69,10019,'07728431162','2021-10-30 16:58:29','YES'),(70,10020,'07868969142','2021-10-30 17:03:32','YES'),(71,10021,'07975893412','2021-10-30 17:08:35','NO'),(72,10022,'07026806172','2021-10-30 17:13:38','YES'),(73,10023,'07956334457','2021-10-30 17:18:41','NO'),(74,10024,'07070201314','2021-10-30 17:23:44','YES'),(75,10025,'07772765558','2021-10-30 17:28:47','NO'),(76,10001,'07909974773','2021-10-30 17:33:50','NO'),(77,10002,'07036426182','2021-10-30 17:38:53','NO'),(78,10003,'07769210904','2021-10-30 17:43:56','NO'),(79,10004,'07052226842','2021-10-30 17:48:59','YES'),(80,10005,'07076741035','2021-10-30 17:54:02','NO'),(81,10006,'07055392437','2021-10-30 17:59:05','NO'),(82,10007,'07818312853','2021-10-30 18:04:08','NO'),(83,10008,'07942474600','2021-10-30 18:09:11','YES'),(84,10009,'07827980270','2021-10-30 18:14:14','NO'),(85,10010,'07985332467','2021-10-30 18:19:17','YES'),(86,10011,'07029416947','2021-10-30 18:24:20','YES'),(87,10012,'07959260054','2021-10-30 18:29:23','NO'),(88,10013,'07900105226','2021-10-30 18:34:26','NO'),(89,10014,'07066457296','2021-10-30 18:39:29','YES'),(90,10015,'07049287410','2021-10-30 18:44:32','YES'),(91,10016,'07839667646','2021-10-30 18:49:35','YES'),(92,10017,'07954046199','2021-10-30 18:54:38','YES'),(93,10018,'07856371662','2021-10-30 18:59:41','YES'),(94,10019,'07024285341','2021-10-30 19:04:44','NO'),(95,10020,'07738956287','2021-10-30 19:09:47','YES'),(96,10021,'07912141660','2021-10-30 19:14:50','NO'),(97,10022,'07976965190','2021-10-30 19:19:53','NO'),(98,10023,'07835980471','2021-10-30 19:24:56','YES'),(99,10024,'07711803478','2021-10-30 19:29:59','NO'),(100,10025,'07776660119','2021-10-30 19:35:02','YES'),(101,10001,'07818312853','2021-10-30 19:40:05','NO'),(102,10001,'07942474600','2021-10-30 19:45:08','NO'),(103,10001,'07827980270','2021-10-30 19:50:11','NO'),(104,10001,'07985332467','2021-10-30 19:55:14','NO'),(105,10001,'07029416947','2021-10-30 20:00:17','NO'),(106,10001,'07959260054','2021-10-30 20:05:20','YES'),(107,10001,'07900105226','2021-10-30 20:05:20','YES'),(108,10001,'07715118040','2021-10-30 20:15:26','NO'),(109,10001,'07078156592','2021-10-30 20:20:29','NO'),(110,10001,'07780081793','2021-10-30 20:25:32','NO'),(111,10001,'07081364641','2021-10-30 20:30:35','NO'),(112,10001,'07821368246','2021-10-30 20:35:38','NO'),(113,10001,'07734912327','2021-10-30 20:40:41','NO'),(114,10001,'07984288868','2021-10-30 20:45:44','NO'),(115,10001,'07830112277','2021-10-30 20:50:47','NO'),(116,10001,'07845591267','2021-10-30 20:55:50','NO'),(117,10001,'07919355597','2021-10-30 21:00:53','NO'),(118,10001,'07085639317','2021-10-30 21:05:56','NO'),(119,10001,'07777410949','2021-10-30 21:10:59','NO'),(120,10001,'07715608361','2021-10-30 21:16:02','NO'),(121,10002,'07969374626','2021-10-30 21:21:05','NO'),(122,10002,'07089284599','2021-10-30 21:26:08','NO'),(123,10002,'07959260054','2021-10-30 21:31:11','YES'),(124,10002,'07900105226','2021-10-30 21:31:11','YES'),(125,10002,'07915505024','2021-10-30 21:41:17','NO'),(126,10002,'07037730167','2021-10-30 21:46:20','NO'),(127,10002,'07728431162','2021-10-30 21:51:23','NO'),(128,10002,'07868969142','2021-10-30 21:56:26','NO'),(129,10002,'07975893412','2021-10-30 22:01:29','NO'),(130,10002,'07026806172','2021-10-30 22:06:32','NO'),(131,10002,'07956334457','2021-10-30 22:11:35','NO'),(132,10002,'07070201314','2021-10-30 22:16:38','NO'),(133,10002,'07822834740','2021-10-30 22:21:41','NO'),(134,10002,'07709224269','2021-10-30 22:26:44','NO'),(135,10002,'07870248162','2021-10-30 22:31:47','NO'),(136,10018,'07941233909','2021-10-30 22:36:50','NO'),(137,10018,'07927657038','2021-10-30 22:41:53','NO'),(138,10018,'07710969475','2021-10-30 22:46:56','NO'),(139,10018,'07886732968','2021-10-30 22:51:59','NO'),(140,10018,'07933447630','2021-10-30 22:57:02','NO'),(141,10024,'07703681808','2021-10-30 23:02:05','NO'),(142,10024,'07040514717','2021-10-30 23:07:08','NO'),(143,10024,'07840578807','2021-10-30 23:12:11','NO'),(144,10024,'07763294967','2021-10-30 23:17:14','NO'),(145,10024,'07868739520','2021-10-30 23:22:17','NO'),(146,10024,'07073515929','2021-10-30 23:27:20','NO'),(147,10024,'07815847600','2021-10-30 23:32:23','NO'),(148,10024,'07709789831','2021-10-30 23:37:26','NO'),(149,10024,'07059768371','2021-10-30 23:42:29','NO'),(150,10024,'07881335904','2021-10-30 23:47:32','NO');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 16:45:45
