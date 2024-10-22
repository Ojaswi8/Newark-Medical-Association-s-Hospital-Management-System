-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: newarkma
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `allergy`
--

DROP TABLE IF EXISTS `allergy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergy` (
  `allergy_code` int NOT NULL,
  `allergy_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`allergy_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergy`
--

LOCK TABLES `allergy` WRITE;
/*!40000 ALTER TABLE `allergy` DISABLE KEYS */;
INSERT INTO `allergy` VALUES (1,'Insect'),(2,'Food'),(3,'Pollen'),(4,'Mold'),(5,'Pet');
/*!40000 ALTER TABLE `allergy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergy_in_report`
--

DROP TABLE IF EXISTS `allergy_in_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergy_in_report` (
  `allergy_code` int DEFAULT NULL,
  `report_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergy_in_report`
--

LOCK TABLES `allergy_in_report` WRITE;
/*!40000 ALTER TABLE `allergy_in_report` DISABLE KEYS */;
INSERT INTO `allergy_in_report` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `allergy_in_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointment_code` int NOT NULL,
  `grade` char(1) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appoinmtment_time` time DEFAULT NULL,
  PRIMARY KEY (`appointment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'A','2022-12-20','11:00:00'),(2,'A','2022-12-20','11:30:00'),(3,'A','2022-12-20','12:30:00'),(4,'A','2022-12-20','12:00:00'),(5,'A','2022-12-21','12:00:00');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_number` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) DEFAULT NULL,
  `emp_type` varchar(20) DEFAULT NULL,
  `ssn` char(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(15) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`emp_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Dr. Andrew Pole','Physician','135-158','Male',10000,'MJ Road','Hongkong lane','NW','NJ','12345','USA'),(2,'Dr. Lissy Jose','Physician','135-158','Female',10000,'FC Road','Hongkong lane','NW','NJ','12345','USA'),(3,'Ms. Rose Pole','Nurse','135-158','Female',5000,'XZ Road','ABC street','NW','NJ','12344','USA'),(4,'Ms. Jenny Thomas','Surgeon','135-159','Female',0,'Irwin Road','AMG lane','JC','NJ','12355','USA'),(5,'Mr. Lauren Graham','Staff-Nurse','135-158','Male',3000,'BF Road','ABC street','NW','NJ','12344','USA');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_appointment`
--

DROP TABLE IF EXISTS `employee_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_appointment` (
  `emp_number` int DEFAULT NULL,
  `appointment_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_appointment`
--

LOCK TABLES `employee_appointment` WRITE;
/*!40000 ALTER TABLE `employee_appointment` DISABLE KEYS */;
INSERT INTO `employee_appointment` VALUES (1,4),(4,4),(4,4),(1,1),(2,2),(1,2),(2,2),(1,5);
/*!40000 ALTER TABLE `employee_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_nurse`
--

DROP TABLE IF EXISTS `employee_nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_nurse` (
  `emp_number` int DEFAULT NULL,
  `nurse_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_nurse`
--

LOCK TABLES `employee_nurse` WRITE;
/*!40000 ALTER TABLE `employee_nurse` DISABLE KEYS */;
INSERT INTO `employee_nurse` VALUES (3,103);
/*!40000 ALTER TABLE `employee_nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_physician`
--

DROP TABLE IF EXISTS `employee_physician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_physician` (
  `emp_number` int DEFAULT NULL,
  `physician_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_physician`
--

LOCK TABLES `employee_physician` WRITE;
/*!40000 ALTER TABLE `employee_physician` DISABLE KEYS */;
INSERT INTO `employee_physician` VALUES (1,201),(1,201),(1,201),(1,201),(1,201),(2,202),(1,201),(2,202);
/*!40000 ALTER TABLE `employee_physician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_surgeon`
--

DROP TABLE IF EXISTS `employee_surgeon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_surgeon` (
  `emp_number` int DEFAULT NULL,
  `surgeon_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_surgeon`
--

LOCK TABLES `employee_surgeon` WRITE;
/*!40000 ALTER TABLE `employee_surgeon` DISABLE KEYS */;
INSERT INTO `employee_surgeon` VALUES (6,1);
/*!40000 ALTER TABLE `employee_surgeon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `illness`
--

DROP TABLE IF EXISTS `illness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `illness` (
  `illness_code` int NOT NULL,
  `illness_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`illness_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `illness`
--

LOCK TABLES `illness` WRITE;
/*!40000 ALTER TABLE `illness` DISABLE KEYS */;
INSERT INTO `illness` VALUES (1,'Fever'),(2,'Headache'),(3,'Dizziness ');
/*!40000 ALTER TABLE `illness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `medication_code` int NOT NULL,
  `medication_name` varchar(255) DEFAULT NULL,
  `unit_cost` float DEFAULT NULL,
  `quantity_on_hand` int DEFAULT NULL,
  `quantity_on_order` int DEFAULT NULL,
  `year_to_date_usage` int DEFAULT NULL,
  PRIMARY KEY (`medication_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication_priscription`
--

DROP TABLE IF EXISTS `medication_priscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication_priscription` (
  `medication_code` int DEFAULT NULL,
  `prescreption_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication_priscription`
--

LOCK TABLES `medication_priscription` WRITE;
/*!40000 ALTER TABLE `medication_priscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `medication_priscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `need_surgery_skill`
--

DROP TABLE IF EXISTS `need_surgery_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `need_surgery_skill` (
  `surgery_code` int DEFAULT NULL,
  `skill_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `need_surgery_skill`
--

LOCK TABLES `need_surgery_skill` WRITE;
/*!40000 ALTER TABLE `need_surgery_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `need_surgery_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `nurse_code` int NOT NULL,
  `grade` char(1) DEFAULT NULL,
  `years_of_experience` int DEFAULT NULL,
  PRIMARY KEY (`nurse_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (101,'B',4);
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_surgery`
--

DROP TABLE IF EXISTS `nurse_surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse_surgery` (
  `surgery_code` int DEFAULT NULL,
  `nurse_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_surgery`
--

LOCK TABLES `nurse_surgery` WRITE;
/*!40000 ALTER TABLE `nurse_surgery` DISABLE KEYS */;
/*!40000 ALTER TABLE `nurse_surgery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `owner_code` int NOT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `owner_type` varchar(50) DEFAULT NULL,
  `owner_percentage` float DEFAULT NULL,
  `headquarter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`owner_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_number` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `ssn` char(11) DEFAULT NULL,
  `blood_type` varchar(10) DEFAULT NULL,
  `surgery_required` char(1) DEFAULT NULL,
  `stay_required` char(1) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(15) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`patient_number`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Mr.Dinesh','1990-10-22','Male','135-158-1','O-','Y','Y','ABC lane','Old city','TN','NJ','08536','USA'),(2,'Ms.Ojaswi','1991-10-20','Female','135-158-2','A+','N','N','FC Road','New city','NW','NJ','86081','USA'),(3,'Mr.Pankaj','1985-01-05','Male','135-158-3','B-','N','N','MJ Road','Hongkong lane','PL','NJ','08088','USA'),(4,'Mr.Samir','1992-10-10','Male','135-158-4','O+','N','N','ZP Road','New city','NW','NJ','86081','USA'),(5,'Ms.Kathy','1987-02-15','Female','135-158-5','AB+','Y','Y','BD street','Camp','JC','NJ','00978','USA'),(6,'Mr.John','1989-10-03','Male','135-158-6','B+','Y','Y','BQ Road','Camp','JC','NJ','00978','USA');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_appointment`
--

DROP TABLE IF EXISTS `patient_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_appointment` (
  `patient_number` int DEFAULT NULL,
  `appointment_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_appointment`
--

LOCK TABLES `patient_appointment` WRITE;
/*!40000 ALTER TABLE `patient_appointment` DISABLE KEYS */;
INSERT INTO `patient_appointment` VALUES (7,4),(8,3),(16,4),(1,1),(2,2),(4,2),(5,2),(3,5);
/*!40000 ALTER TABLE `patient_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_illness`
--

DROP TABLE IF EXISTS `patient_illness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_illness` (
  `patient_number` int DEFAULT NULL,
  `illness_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_illness`
--

LOCK TABLES `patient_illness` WRITE;
/*!40000 ALTER TABLE `patient_illness` DISABLE KEYS */;
INSERT INTO `patient_illness` VALUES (7,1),(7,2);
/*!40000 ALTER TABLE `patient_illness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_nurse`
--

DROP TABLE IF EXISTS `patient_nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_nurse` (
  `patient_number` int DEFAULT NULL,
  `nurse_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_nurse`
--

LOCK TABLES `patient_nurse` WRITE;
/*!40000 ALTER TABLE `patient_nurse` DISABLE KEYS */;
INSERT INTO `patient_nurse` VALUES (7,3);
/*!40000 ALTER TABLE `patient_nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_physician`
--

DROP TABLE IF EXISTS `patient_physician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_physician` (
  `patient_number` int DEFAULT NULL,
  `physician_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_physician`
--

LOCK TABLES `patient_physician` WRITE;
/*!40000 ALTER TABLE `patient_physician` DISABLE KEYS */;
INSERT INTO `patient_physician` VALUES (16,1);
/*!40000 ALTER TABLE `patient_physician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_priscription`
--

DROP TABLE IF EXISTS `patient_priscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_priscription` (
  `patient_number` int DEFAULT NULL,
  `prescription_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_priscription`
--

LOCK TABLES `patient_priscription` WRITE;
/*!40000 ALTER TABLE `patient_priscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_priscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_report`
--

DROP TABLE IF EXISTS `patient_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_report` (
  `patient_number` int DEFAULT NULL,
  `report_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_report`
--

LOCK TABLES `patient_report` WRITE;
/*!40000 ALTER TABLE `patient_report` DISABLE KEYS */;
INSERT INTO `patient_report` VALUES (7,1);
/*!40000 ALTER TABLE `patient_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_room`
--

DROP TABLE IF EXISTS `patient_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_room` (
  `room_code` int DEFAULT NULL,
  `patient_number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_room`
--

LOCK TABLES `patient_room` WRITE;
/*!40000 ALTER TABLE `patient_room` DISABLE KEYS */;
INSERT INTO `patient_room` VALUES (7,1),(1,4);
/*!40000 ALTER TABLE `patient_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_surgery`
--

DROP TABLE IF EXISTS `patient_surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_surgery` (
  `patient_number` int DEFAULT NULL,
  `surgery_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_surgery`
--

LOCK TABLES `patient_surgery` WRITE;
/*!40000 ALTER TABLE `patient_surgery` DISABLE KEYS */;
INSERT INTO `patient_surgery` VALUES (7,1),(7,3),(16,2);
/*!40000 ALTER TABLE `patient_surgery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physician`
--

DROP TABLE IF EXISTS `physician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physician` (
  `physician_code` int NOT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`physician_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physician`
--

LOCK TABLES `physician` WRITE;
/*!40000 ALTER TABLE `physician` DISABLE KEYS */;
INSERT INTO `physician` VALUES (201,'Internal Medicine'),(202,'Dermatology,Pediatric');
/*!40000 ALTER TABLE `physician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physician_prescription`
--

DROP TABLE IF EXISTS `physician_prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physician_prescription` (
  `physician_code` int DEFAULT NULL,
  `prescription_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physician_prescription`
--

LOCK TABLES `physician_prescription` WRITE;
/*!40000 ALTER TABLE `physician_prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `physician_prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priscription`
--

DROP TABLE IF EXISTS `priscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priscription` (
  `priscription_code` int NOT NULL,
  `severity` char(1) DEFAULT NULL,
  PRIMARY KEY (`priscription_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priscription`
--

LOCK TABLES `priscription` WRITE;
/*!40000 ALTER TABLE `priscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `priscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `report_code` int NOT NULL,
  `allergy_name` varchar(255) DEFAULT NULL,
  `bood_suger` varchar(50) DEFAULT NULL,
  `HDL` varchar(50) DEFAULT NULL,
  `LDL` varchar(50) DEFAULT NULL,
  `triglycerides` varchar(50) DEFAULT NULL,
  `risk` char(1) DEFAULT NULL,
  PRIMARY KEY (`report_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'Insect','120','120','120','120','M');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_code` int NOT NULL,
  `wing` varchar(5) DEFAULT NULL,
  `nursing_unit` int DEFAULT NULL,
  `bed` char(1) DEFAULT NULL,
  PRIMARY KEY (`room_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'BLUE',1,'A'),(2,'BLUE',1,'B'),(3,'BLUE',2,'A'),(4,'BLUE',2,'B'),(5,'BLUE',3,'A'),(6,'BLUE',3,'B'),(7,'BLUE',4,'A'),(8,'BLUE',4,'B'),(9,'BLUE',5,'A'),(10,'BLUE',5,'B'),(11,'BLUE',6,'A'),(12,'BLUE',6,'B'),(13,'BLUE',7,'A'),(14,'BLUE',7,'B');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_shifts`
--

DROP TABLE IF EXISTS `staff_shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_shifts` (
  `emp_number` int DEFAULT NULL,
  `shift_date` date DEFAULT NULL,
  `shift_time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_shifts`
--

LOCK TABLES `staff_shifts` WRITE;
/*!40000 ALTER TABLE `staff_shifts` DISABLE KEYS */;
INSERT INTO `staff_shifts` VALUES (1,'2022-12-05','08:00 AM - 04:00 PM'),(8,'2022-12-20','04:00 PM - 12:00 AM');
/*!40000 ALTER TABLE `staff_shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surgeon`
--

DROP TABLE IF EXISTS `surgeon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgeon` (
  `surgeon_code` int NOT NULL,
  `number_of_surgeries` int DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `contract_start_date` date DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  PRIMARY KEY (`surgeon_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgeon`
--

LOCK TABLES `surgeon` WRITE;
/*!40000 ALTER TABLE `surgeon` DISABLE KEYS */;
INSERT INTO `surgeon` VALUES (1,10,'General Surgery','2016-01-01','2026-01-01');
/*!40000 ALTER TABLE `surgeon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surgeon_surgery`
--

DROP TABLE IF EXISTS `surgeon_surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgeon_surgery` (
  `surgeon_code` int DEFAULT NULL,
  `surgery_code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgeon_surgery`
--

LOCK TABLES `surgeon_surgery` WRITE;
/*!40000 ALTER TABLE `surgeon_surgery` DISABLE KEYS */;
INSERT INTO `surgeon_surgery` VALUES (1,1);
/*!40000 ALTER TABLE `surgeon_surgery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surgery`
--

DROP TABLE IF EXISTS `surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgery` (
  `surgery_code` int NOT NULL,
  `surgery_name` varchar(255) DEFAULT NULL,
  `surgery_type` varchar(50) DEFAULT NULL,
  `surgery_time` datetime DEFAULT NULL,
  `anatomical_location` varchar(255) DEFAULT NULL,
  `special_need` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `operation_theater_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`surgery_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgery`
--

LOCK TABLES `surgery` WRITE;
/*!40000 ALTER TABLE `surgery` DISABLE KEYS */;
INSERT INTO `surgery` VALUES (1,'General Surgery','General','2022-12-01 14:00:00','Foot','Full time Nurse','H','OT1'),(2,'Leg Surgery','LEG','2022-12-02 14:00:00','Leg','External Surgeon','H','OT2'),(3,'Stomach Surgery','Stomach','2022-12-01 10:00:00','Stomach','24 hours fasting','O','OT1');
/*!40000 ALTER TABLE `surgery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surgery_skills`
--

DROP TABLE IF EXISTS `surgery_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgery_skills` (
  `skill_code` int NOT NULL,
  `skill_name` varchar(255) DEFAULT NULL,
  `skill_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`skill_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgery_skills`
--

LOCK TABLES `surgery_skills` WRITE;
/*!40000 ALTER TABLE `surgery_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `surgery_skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-03 12:00:36
