-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 172.16.7.85    Database: polyakova
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `autoservice`
--

DROP TABLE IF EXISTS `autoservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autoservice` (
  `id_service` int NOT NULL AUTO_INCREMENT,
  `adress` mediumtext NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoservice`
--

LOCK TABLES `autoservice` WRITE;
/*!40000 ALTER TABLE `autoservice` DISABLE KEYS */;
INSERT INTO `autoservice` VALUES (21,'г. Москва, Верхняя Первомайская, 35А, стр. 1','333-66-89'),(22,'г. Москва, ул. Потешная, 6/2, стр. 18','666-99-88'),(23,'г. Москва, ул. Большая Семёновская, стр. 1','888-99-21'),(24,'г. Москва, ул. Прокатная, 7','633-45-55'),(25,'г. Москва, ул. Генерала Дорохова, стр. 4','787-88-99');
/*!40000 ALTER TABLE `autoservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `id_coach` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) NOT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `post_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_coach`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'Абрамов О. А.','1987-11-02','master'),(2,'Каштаев К. И.','1995-06-24','master'),(3,'Романюгин С. Р.','1998-04-11','personal'),(4,'Овсянникова А. Н.','2001-12-03','personal'),(5,'Логачев А. Б.','1983-05-24','elit');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `id_equipment` int NOT NULL AUTO_INCREMENT,
  `equipmenttype` varchar(45) NOT NULL,
  PRIMARY KEY (`id_equipment`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'мяч'),(2,'гантеля'),(3,'коврик'),(4,'сайкл байк'),(5,'гидрорайдер'),(6,'ласты'),(7,'скакалка'),(8,'гриф');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hall`
--

DROP TABLE IF EXISTS `hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hall` (
  `id_hall` int NOT NULL AUTO_INCREMENT,
  `hallname` varchar(45) NOT NULL,
  `hallarea` varchar(45) NOT NULL,
  PRIMARY KEY (`id_hall`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hall`
--

LOCK TABLES `hall` WRITE;
/*!40000 ALTER TABLE `hall` DISABLE KEYS */;
INSERT INTO `hall` VALUES (1,'GP№1','40'),(2,'GP№2','28'),(3,'children\'s hall','15'),(4,'pilates','20'),(5,'cycle','20'),(6,'pool','60'),(7,'gym','60');
/*!40000 ALTER TABLE `hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type of training`
--

DROP TABLE IF EXISTS `type of training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type of training` (
  `id_type_of_training` int NOT NULL AUTO_INCREMENT,
  `typeoftrainingname` varchar(45) NOT NULL,
  PRIMARY KEY (`id_type_of_training`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type of training`
--

LOCK TABLES `type of training` WRITE;
/*!40000 ALTER TABLE `type of training` DISABLE KEYS */;
INSERT INTO `type of training` VALUES (1,'персональная тренировка'),(2,'групповая тренировка'),(3,'мини-группа'),(4,'дополнительный урок');
/*!40000 ALTER TABLE `type of training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type of training_has_equipment`
--

DROP TABLE IF EXISTS `type of training_has_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type of training_has_equipment` (
  `type of training_id_type_of_training` int NOT NULL,
  `equipment_id_equipment` int NOT NULL,
  PRIMARY KEY (`type of training_id_type_of_training`,`equipment_id_equipment`),
  KEY `fk_type of training_has_equipment_equipment1_idx` (`equipment_id_equipment`),
  KEY `fk_type of training_has_equipment_type of training1_idx` (`type of training_id_type_of_training`),
  CONSTRAINT `fk_type of training_has_equipment_equipment1` FOREIGN KEY (`equipment_id_equipment`) REFERENCES `equipment` (`id_equipment`),
  CONSTRAINT `fk_type of training_has_equipment_type of training1` FOREIGN KEY (`type of training_id_type_of_training`) REFERENCES `type of training` (`id_type_of_training`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type of training_has_equipment`
--

LOCK TABLES `type of training_has_equipment` WRITE;
/*!40000 ALTER TABLE `type of training_has_equipment` DISABLE KEYS */;
INSERT INTO `type of training_has_equipment` VALUES (1,1),(4,1),(1,2),(3,2),(1,3),(2,3),(3,3),(4,3),(2,4),(3,4),(2,5),(3,5),(4,5),(1,6),(1,7),(2,7),(1,8),(2,8),(3,8);
/*!40000 ALTER TABLE `type of training_has_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `сlient`
--

DROP TABLE IF EXISTS `сlient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `сlient` (
  `id_сlient` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) NOT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id_сlient`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `сlient`
--

LOCK TABLES `сlient` WRITE;
/*!40000 ALTER TABLE `сlient` DISABLE KEYS */;
INSERT INTO `сlient` VALUES (1,'Абрамова А. Ю.','1996-02-15'),(2,'Акулов В. А.','1985-06-04'),(3,'Воронин М. Г.','1991-11-23'),(4,'Праско О. Н.','1979-10-20'),(5,'Праско В. И.','2008-09-06'),(6,'Копытов Н. С.','1989-01-14'),(7,'Криволапова К. В.','2010-08-16'),(8,'Верба Ю. А.','1969-10-09'),(9,'Молчанова Ю. С.','1999-07-26'),(10,'Филенко А. Л.','1992-05-23');
/*!40000 ALTER TABLE `сlient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `сlient_has_coach`
--

DROP TABLE IF EXISTS `сlient_has_coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `сlient_has_coach` (
  `сlient_id_сlient` int NOT NULL,
  `coach_id_coach` int NOT NULL,
  `type of training_id_type_of_training` int NOT NULL,
  `hall_id_hall` int NOT NULL,
  `сlient_has_training_date` date NOT NULL,
  `сlient_has_training_time` time NOT NULL,
  PRIMARY KEY (`сlient_id_сlient`,`coach_id_coach`,`type of training_id_type_of_training`,`hall_id_hall`),
  KEY `fk_сlient_has_coach_coach1_idx` (`coach_id_coach`),
  KEY `fk_сlient_has_coach_сlient_idx` (`сlient_id_сlient`),
  KEY `fk_сlient_has_coach_type of training1_idx` (`type of training_id_type_of_training`),
  KEY `fk_сlient_has_coach_hall1_idx` (`hall_id_hall`),
  CONSTRAINT `fk_сlient_has_coach_coach1` FOREIGN KEY (`coach_id_coach`) REFERENCES `coach` (`id_coach`),
  CONSTRAINT `fk_сlient_has_coach_hall1` FOREIGN KEY (`hall_id_hall`) REFERENCES `hall` (`id_hall`),
  CONSTRAINT `fk_сlient_has_coach_type of training1` FOREIGN KEY (`type of training_id_type_of_training`) REFERENCES `type of training` (`id_type_of_training`),
  CONSTRAINT `fk_сlient_has_coach_сlient` FOREIGN KEY (`сlient_id_сlient`) REFERENCES `сlient` (`id_сlient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `сlient_has_coach`
--

LOCK TABLES `сlient_has_coach` WRITE;
/*!40000 ALTER TABLE `сlient_has_coach` DISABLE KEYS */;
INSERT INTO `сlient_has_coach` VALUES (1,2,4,6,'2024-09-30','11:30:00'),(2,2,1,7,'2024-09-28','17:00:00'),(3,1,1,1,'2024-09-28','11:00:00'),(4,5,1,1,'2024-09-29','18:00:00'),(5,3,1,2,'2024-09-28','12:00:00'),(6,1,3,2,'2024-09-29','14:00:00'),(7,3,3,3,'2024-10-01','12:30:00'),(8,4,1,4,'2024-10-01','14:45:00'),(9,5,3,4,'2024-09-29','10:00:00'),(10,4,3,5,'2024-09-30','16:00:00');
/*!40000 ALTER TABLE `сlient_has_coach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-28 17:30:33
