CREATE DATABASE  IF NOT EXISTS `enrollment` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `enrollment`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: enrollment
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `course_num` int(11) NOT NULL,
  `course_code` varchar(45) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `section` varchar(45) NOT NULL,
  `sched_day` varchar(45) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `room_num` varchar(45) NOT NULL,
  `capacity` int(11) NOT NULL,
  `enrolled` int(11) NOT NULL,
  PRIMARY KEY (`course_num`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (313,'INTRODB','Introduction to Databases',10001,'S17','MW','09:15:00','10:45:00','G306',45,44),(2069,'DIGIDES','Digital Design',10003,'S18','TH','14:30:00','16:00:00','G208',45,43),(2101,'CCSCAL2','Calculus 2',40001,'S11','TH','12:45:00','14:15:00','G210',45,34),(3510,'INTESYS','Introduction to Intelligent Systems',10002,'S17','MW','11:00:00','12:30:00','G207',45,41),(3732,'FTTEAMS','Team Sports',50001,'S15','M','13:00:00','15:00:00','ER101',45,43);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `dept_num` varchar(45) NOT NULL,
  `dept_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dept_num`),
  UNIQUE KEY `dept_num_UNIQUE` (`dept_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES ('D001','Software Technology'),('D002','Network Engineering'),('D003','Inforrmation Systems'),('D004','Mathematics'),('D005','Physical Education');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `dept_num` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `email_add` varchar(45) NOT NULL,
  `hire_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`faculty_id`),
  UNIQUE KEY `faculty_id_UNIQUE` (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (10001,'D001','Ong','Ethel','ethel.ong@dlsu.edu.ph','2009-03-05','9999-01-01'),(10002,'D001','Caronongan','Arturo','atruro.caronongan@dlsu.edu.ph','2012-10-25','9999-01-01'),(10003,'D001','Iloa','Joel','joel.ilao@dlsu.edu.ph','2012-04-12','9999-01-01'),(40001,'D004','Reyes','Tristan','tristan.reyes@dlsu.edu.ph','2007-03-31','9999-01-01'),(50001,'D005','Mendrado','Benjie','benjie.mendrado@dlsu.edu.ph','2009-05-22','9999-01-01');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `birth_date` varchar(45) NOT NULL,
  `email_add` varchar(45) NOT NULL,
  `course` varchar(45) NOT NULL,
  `enroll_date` date NOT NULL,
  `to_date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (10725635,'Marley','Bob','1945-02-06','bobsthename@hotmail.com','BS-IST','2007-03-29','2014-10-25','graduate'),(11124345,'Connor','Jon','1985-02-28','jonsdabomb@gmail.com','CS-CSE','2011-01-13','2014-10-25','graduate'),(11313803,'Choy','Matthew Seaver','1996-01-28','homenycablue@yahoo.com','CS-ST','2013-05-09','9999-01-01','undergraduate'),(11327278,'Hade','Alden Luc','1996-12-04','aldstm@gmail.com','CS-ST','2013-04-15','9999-01-01','undergraduate'),(11337974,'Aquino','Kurt Neil','1996-09-28','kurtaquino28@yahoo.com','CS-ST','2013-05-20','9999-01-01','undergraduate');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `transaction_id` varchar(45) NOT NULL,
  `date_stamp` date NOT NULL,
  `time_stamp` time NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_num` int(11) NOT NULL,
  `transaction_type` varchar(45) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('0000-0000-0001','2014-03-20','09:45:00',11337974,313,'add'),('0000-0000-0002','2014-03-12','14:00:00',11313803,3510,'add'),('0000-0000-0003','2014-03-10','12:00:00',11327278,2069,'swap'),('0000-0000-0004','2012-03-01','16:00:00',11124345,2101,'drop'),('0000-0000-0005','2010-03-11','23:00:00',10725635,3732,'drop');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-07 20:36:35
