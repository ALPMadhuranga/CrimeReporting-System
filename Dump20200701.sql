-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: crimereportingdb
-- ------------------------------------------------------
-- Server version	5.5.8-log

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
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(45) DEFAULT NULL,
  `AdminNIC` varchar(45) DEFAULT NULL,
  `AdminPassword` varchar(45) DEFAULT NULL,
  `AdminMail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'Madhuranga','970851518V','prasad123','prasad@gmail.com');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomplain`
--

DROP TABLE IF EXISTS `tblcomplain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcomplain` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ComplainSubject` varchar(300) DEFAULT NULL,
  `ComplainDec` varchar(2000) DEFAULT NULL,
  `ComplainDateTime` varchar(200) DEFAULT NULL,
  `ComplainPoliceStation` varchar(100) DEFAULT NULL,
  `UserNIC` varchar(100) DEFAULT NULL,
  `ComplainImage1` varchar(200) DEFAULT NULL,
  `ComplainImage2` varchar(200) DEFAULT NULL,
  `ComplainImage3` varchar(200) DEFAULT NULL,
  `ComplainVideo1` varchar(300) DEFAULT NULL,
  `complant_category` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomplain`
--

LOCK TABLES `tblcomplain` WRITE;
/*!40000 ALTER TABLE `tblcomplain` DISABLE KEYS */;
INSERT INTO `tblcomplain` VALUES (36,'attempted to break into the house','men invaded No. 6, Samson Ogunleye street, Omi Agagu, Olufoam Area in Akure this morning and attempted to break into the house but were confronted by dogs, they shot one of the dogs and ran away. An eye witness said they came in a police van.','2020-06-30 00:00:00','Anuradhapura','950682598V','ComplainVIA/EbQxig7XQAA4VMd.jpg','ComplainVIA/EbQxihDWkAQBp-v.jpg','ComplainVIA/EbQxihFWAAIUft_.jpg','https://drive.google.com/file/d/1BxUw6En0at2odGdhjbsgeX-7kq9INu0y/view?usp=sharing','personal complaint'),(37,'murder case','Someone this boy  in jesse town near sapele, leaving him to die.  I recorded this about 30 mins ago  and it happened before I arrived. This is getting out of hand\r\n','2020-06-30 00:00:00','Anuradhapura','975682568V','ComplainVIA/800px_COLOURBOX1020206.jpg','ComplainVIA/caution-tape-dead-man-lying-260nw-215150527.webp','ComplainVIA/download.jpg','https://drive.google.com/file/d/14Lrx7nmEplRzdALrNwu8ptimd9gayCSY/view?usp=sharing','murder '),(38,'A woman was assaulted','Early last month (April)  a case of an assault was reported in Adekunle Police Station. A woman was assaulted her life was threatened and the DPO is aware, suspect in their custody.','2020-06-30 00:00:00',' Galgamuwa','975682568V','ComplainVIA/EX2aIfiXYAwpTOa.jpg','ComplainVIA/EX2aKX2XQAADm17.jpg','ComplainVIA/EX2aIfiXYAwpTOa.jpg','','Abuse of women or children'),(39,'An unidentified vehicle has been parked in my space for several days','A Car has been parked here in my space in last 5days. The whereabouts of the rightful owner at this moment cannot be ascertained. If the car was stolen nobody can explain. the photo of that car is attached below.','2020-06-30 00:00:00',' Galgamuwa','980657852V','ComplainVIA/EaTYJ_aWoAEi6mB.jpg','ComplainVIA/EaTYJ_aWoAEi6mB.jpg','ComplainVIA/EaTYJ_aWoAEi6mB.jpg','','Other'),(40,'Assault','The two policemen, F/NO 41112 CPL Ozimende Aidonojie and F/NO 516384 PC Salubi Stephen in this  video have been identified, arrested and detained. They are currently undergoing internal disciplinary sanctions at the Edo State Police Command Headquarters.','2020-06-30 00:00:00',' Embilipitiya','980657852V','ComplainVIA/aggravated-assault-nj-300x199.jpg','ComplainVIA/download (1).jpg','ComplainVIA/images.jpg','https://drive.google.com/file/d/18KjqBeKvYXqoMOuG_vWZLtLzgGs0PiVW/view?usp=sharing','Assault '),(42,'Robbers came to Kubwa phase 3 and robbed some houses.','Robbers came to Kubwa phase 3 and robbed some houses. They left their car after challenge by vigilantes. We have made 3 different reports to the Kubwa division. No response from police yet.','2020-07-01 00:00:00',' Dehiwala','993203205V','ComplainVIA/EVzNi_zWsAEnQC0.jpg','ComplainVIA/EVzNmfRXkAAZyuz.jpg','ComplainVIA/EVzNkYAXYAEsToR.jpg','','Bribery and corruption');
/*!40000 ALTER TABLE `tblcomplain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmsg`
--

DROP TABLE IF EXISTS `tblmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmsg` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmsg`
--

LOCK TABLES `tblmsg` WRITE;
/*!40000 ALTER TABLE `tblmsg` DISABLE KEYS */;
INSERT INTO `tblmsg` VALUES (10,'prasad madhuranga','prasad@gmail.com','+947685645225','ruirfgheurhythergneriughiuehyghrgeughe'),(11,'janaka prasad','janaka@gmail.com','+94716585675','ttuytwtouebfhugeiyfgwifhbfrf');
/*!40000 ALTER TABLE `tblmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpolice`
--

DROP TABLE IF EXISTS `tblpolice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpolice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PoliceCode` varchar(45) DEFAULT NULL,
  `PoliceContactNo` varchar(45) DEFAULT NULL,
  `PoliceEmail` varchar(45) DEFAULT NULL,
  `PoliceAddress` varchar(500) DEFAULT NULL,
  `PoliceCity` varchar(100) DEFAULT NULL,
  `PolicePassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpolice`
--

LOCK TABLES `tblpolice` WRITE;
/*!40000 ALTER TABLE `tblpolice` DISABLE KEYS */;
INSERT INTO `tblpolice` VALUES (9,'0001','0259865352','anuradhapurapolice@gmail.com','Anuradhapura','Anuradhapura','QQBuAHUAMQAyADMA'),(10,' 0002','+94 658985563','borellapolice@gmail.com',' Borella',' Borella','QgBvAHIANAA1ADYA'),(11,' 0003',' +94 658623458',' chillaw@police.lk',' Chillaw',' Chillaw','QwBoAGkAOQA2ADMA'),(12,' 0004',' +94 659782565',' dehiwala@police.lk',' Dehiwala',' Dehiwala','RABlAGgAMwAyADEA'),(13,' 0005',' +94 856415645',' embilipitiya@gmail.com',' Embilipitiya',' Embilipitiya','RQBtAGIAMgA1ADgA'),(14,' 0006',' +94 256856545',' galgamuwapolice@gmail.com',' Galgamuwa',' Galgamuwa','RwBhAGwAZwA3ADQAMQA=');
/*!40000 ALTER TABLE `tblpolice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `UserNIC` varchar(45) DEFAULT NULL,
  `UserAddress` varchar(200) DEFAULT NULL,
  `UserCountry` varchar(45) DEFAULT NULL,
  `UserEmail` varchar(45) DEFAULT NULL,
  `UserGender` varchar(45) DEFAULT NULL,
  `UserContactNo` varchar(45) DEFAULT NULL,
  `UserPassword` varchar(45) DEFAULT NULL,
  `UserImage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (16,'Lahiru prasad','950682598V','256|G, Y junction ,Anuradhapura.',NULL,'lahiru50@gmail.com','Male','+94702865100','cAByAGEAcwA1ADYA','../UserImage/administrator (1).png'),(17,'Sasindu gihan','975682568V','preman rd, Anuradhapura.',NULL,'sasindugi@hotmail.com','Male','+94765025665','ZwBpAGgAMQAyADMA','../UserImage/User Purple.png'),(18,'Ishara lakshan','980657852V','galgamuwa',NULL,'lakshanishara@gmail.com','Male','+94785256502','aQBzAGgANQAwADAA','../UserImage/administrator.png'),(19,'Sashini kaveesha','993203205V','Dehiwala',NULL,'sashinik@gmail.com','Female','+94765305306','awBhAHYAZQBlADMAMgAxAA==','../UserImage/images.jpg');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-01  2:48:12
