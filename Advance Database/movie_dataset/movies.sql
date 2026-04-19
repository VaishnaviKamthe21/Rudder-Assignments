-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movies_test
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actor` (
  `index` bigint(20) DEFAULT NULL,
  `act_id` bigint(20) DEFAULT NULL,
  `act_fname` text,
  `act_lname` text,
  `act_gender` text,
  KEY `ix_actor_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (0,101,'James','Stewart','M'),(1,102,'Deborah','Kerr','F'),(2,103,'Peter','OToole','M'),(3,104,'Robert','De Niro','M'),(4,105,'F. Murray','Abraham','M'),(5,106,'Harrison','Ford','M'),(6,107,'Nicole','Kidman','F'),(7,108,'Stephen','Baldwin','M'),(8,109,'Jack','Nicholson','M'),(9,110,'Mark','Wahlberg','M'),(10,111,'Woody','Allen','M'),(11,112,'Claire','Danes','F'),(12,113,'Tim','Robbins','M'),(13,114,'Kevin','Spacey','M'),(14,115,'Kate','Winslet','F'),(15,116,'Robin','Williams','M'),(16,117,'Jon','Voight','M'),(17,118,'Ewan','McGregor','M'),(18,119,'Christian','Bale','M'),(19,120,'Maggie','Gyllenhaal','F'),(20,121,'Dev','Patel','M'),(21,122,'Sigourney','Weaver','F'),(22,123,'David','Aston','M'),(23,124,'Ali','Astin','F');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `director` (
  `index` bigint(20) DEFAULT NULL,
  `dir_id` bigint(20) DEFAULT NULL,
  `dir_fname` text,
  `dir_lname` text,
  KEY `ix_director_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (0,201,'Alfred','Hitchcock'),(1,202,'Jack','Clayton'),(2,203,'David','Lean'),(3,204,'Michael','Cimino'),(4,205,'Milos',' Forman'),(5,206,'Ridley','Scott'),(6,207,'Stanley',' Kubrick'),(7,208,'Bryan','Singer'),(8,209,'Roman','Polanski'),(9,210,'Paul','Thomas Anderson'),(10,211,' Woody',' Allen'),(11,212,'Hayao','Miyazaki'),(12,213,'Frank','Darabont'),(13,214,'Sam','Mendes'),(14,215,'James','Cameron'),(15,216,'Gus','Van Sant'),(16,217,'John',' Boorman'),(17,218,'Danny','Boyle'),(18,219,'Christopher','Nolan'),(19,220,'Richard','Kelly'),(20,221,'Kevin','Spacey'),(21,222,'Andrei','Tarkovsky'),(22,223,'Peter','Jackson');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genres` (
  `index` bigint(20) DEFAULT NULL,
  `gen_id` bigint(20) DEFAULT NULL,
  `gen_title` text,
  KEY `ix_genres_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (0,1001,' Action'),(1,1002,' Adventure'),(2,1003,' Animation'),(3,1004,' Biography'),(4,1005,' Comedy'),(5,1006,' Crime'),(6,1007,' Drama'),(7,1008,' Horror'),(8,1009,' Music'),(9,1010,' Mystery'),(10,1011,' Romance'),(11,1012,' Thriller'),(12,1013,' War');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie` (
  `index` bigint(20) DEFAULT NULL,
  `mov_id` bigint(20) DEFAULT NULL,
  `mov_title` text,
  `mov_year` bigint(20) DEFAULT NULL,
  `mov_time` bigint(20) DEFAULT NULL,
  `mov_lang` text,
  `mov_dt_rel` text,
  `mov_rel_country` text,
  KEY `ix_movie_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (0,901,'Vertigo',1958,128,'English','1958-08-24','UK'),(1,902,'The Innocents',1961,100,'English','1962-02-19','SW'),(2,903,'Lawrence of Arabia',1962,216,'English','1962-12-11','UK'),(3,904,'The Deer Hunter',1978,183,'English','1979-03-08','UK'),(4,905,'Amadeus',1984,160,'English','1985-01-07','UK'),(5,906,'Blade Runner',1982,117,'English','1982-09-09','UK'),(6,907,'Eyes Wide Shut',1999,159,'English',NULL,'UK'),(7,908,'The Usual Suspects',1995,106,'English','1995-08-25','UK'),(8,909,'Chinatown',1974,130,'English','1974-08-09','UK'),(9,910,'Boogie Nights',1997,155,'English','1998-02-16','UK'),(10,911,'Annie Hall',1977,93,'English','1977-04-20','USA'),(11,912,'Princess Mononoke',1997,134,'Japanese','2001-10-19','UK'),(12,913,'The Shawshank Redemption',1994,142,'English','1995-02-17','UK'),(13,914,'American Beauty',1999,122,'English',NULL,'UK'),(14,915,'Titanic',1997,194,'English','1998-01-23','UK'),(15,916,'Good Will Hunting',1997,126,'English','1998-06-03','UK'),(16,917,'Deliverance',1972,109,'English','1982-10-05','UK'),(17,918,'Trainspotting',1996,94,'English','1996-02-23','UK'),(18,919,'The Prestige',2006,130,'English','2006-11-10','UK'),(19,920,'Donnie Darko',2001,113,'English',NULL,'UK'),(20,921,'Slumdog Millionaire',2008,120,'English','2009-01-09','UK'),(21,922,'Aliens',1986,137,'English','1986-08-29','UK'),(22,923,' Beyond the Sea',2004,118,'English','2004-11-26','UK'),(23,924,'Avatar',2009,162,'English','2009-12-17','UK'),(24,925,'Braveheart',1995,178,'English','1995-09-08','UK'),(25,926,'Seven Samurai',1954,207,'Japanese','1954-04-26','JP'),(26,927,'Spirited Away',2001,125,'Japanese','2003-09-12','UK'),(27,928,' Back to the Future',1985,116,' English','1985-12-04','UK');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_cast` (
  `index` bigint(20) DEFAULT NULL,
  `act_id` bigint(20) DEFAULT NULL,
  `mov_id` bigint(20) DEFAULT NULL,
  `role` text,
  KEY `ix_movie_cast_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_cast`
--

LOCK TABLES `movie_cast` WRITE;
/*!40000 ALTER TABLE `movie_cast` DISABLE KEYS */;
INSERT INTO `movie_cast` VALUES (0,101,901,'John Scottie Ferguson'),(1,102,902,'Miss Giddens'),(2,103,903,'T.E. Lawrence'),(3,104,904,'Michael'),(4,105,905,' Antonio Salieri'),(5,106,906,'Rick Deckard'),(6,107,907,'Alice Harford'),(7,108,908,'McManus'),(8,110,910,'Eddie Adams'),(9,111,911,'Alvy Singer'),(10,112,912,'San'),(11,113,913,'Andy Dufresne'),(12,114,914,'Lester Burnham'),(13,115,915,'Rose DeWitt Bukater'),(14,116,916,'Sean Maguire'),(15,117,917,'Ed'),(16,118,918,'Renton'),(17,120,920,'Elizabeth Darko'),(18,121,921,'Older Jamal'),(19,122,922,'Ripley'),(20,114,923,'Bobby Darin'),(21,109,909,'J.J. Gittes'),(22,119,919,'Alfred Borden');
/*!40000 ALTER TABLE `movie_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_direction`
--

DROP TABLE IF EXISTS `movie_direction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_direction` (
  `index` bigint(20) DEFAULT NULL,
  `dir_id` bigint(20) DEFAULT NULL,
  `mov_id` bigint(20) DEFAULT NULL,
  KEY `ix_movie_direction_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_direction`
--

LOCK TABLES `movie_direction` WRITE;
/*!40000 ALTER TABLE `movie_direction` DISABLE KEYS */;
INSERT INTO `movie_direction` VALUES (0,201,901),(1,202,902),(2,203,903),(3,204,904),(4,205,905),(5,206,906),(6,207,907),(7,208,908),(8,209,909),(9,210,910),(10,211,911),(11,212,912),(12,213,913),(13,214,914),(14,215,915),(15,216,916),(16,217,917),(17,218,918),(18,219,919),(19,220,920),(20,218,921),(21,215,922),(22,221,923);
/*!40000 ALTER TABLE `movie_direction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_genres` (
  `index` bigint(20) DEFAULT NULL,
  `mov_id` bigint(20) DEFAULT NULL,
  `gen_id` bigint(20) DEFAULT NULL,
  KEY `ix_movie_genres_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (0,922,1001),(1,917,1002),(2,903,1002),(3,912,1003),(4,911,1005),(5,908,1006),(6,913,1006),(7,926,1007),(8,928,1007),(9,918,1007),(10,921,1007),(11,902,1008),(12,923,1009),(13,907,1010),(14,927,1010),(15,901,1010),(16,914,1011),(17,906,1012),(18,904,1013);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ratings` (
  `index` bigint(20) DEFAULT NULL,
  `mov_id` bigint(20) DEFAULT NULL,
  `rev_id` bigint(20) DEFAULT NULL,
  `rev_stars` text,
  `num_of_ratings` double DEFAULT NULL,
  KEY `ix_ratings_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (0,901,9001,'8.4',263575),(1,902,9002,'7.9',20207),(2,903,9003,'8.3',202778),(3,906,9005,'8.2',484746),(4,924,9006,'7.3',NULL),(5,908,9007,'8.6',779489),(6,909,9008,NULL,227235),(7,910,9009,'3',195961),(8,911,9010,'8.1',203875),(9,912,9011,'8.4',NULL),(10,914,9013,'7',862618),(11,915,9001,'7.7',830095),(12,916,9014,'4',642132),(13,925,9015,'7.7',81328),(14,918,9016,NULL,580301),(15,920,9017,'8.1',609451),(16,921,9018,'8',667758),(17,922,9019,'8.4',511613),(18,923,9020,'6.7',13091);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reviewer` (
  `index` bigint(20) DEFAULT NULL,
  `rev_id` bigint(20) DEFAULT NULL,
  `rev_name` text,
  KEY `ix_reviewer_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewer`
--

LOCK TABLES `reviewer` WRITE;
/*!40000 ALTER TABLE `reviewer` DISABLE KEYS */;
INSERT INTO `reviewer` VALUES (0,9001,'Righty Sock'),(1,9002,'Jack Malvern'),(2,9003,'Flagrant Baronessa'),(3,9004,'Alec Shaw'),(4,9005,NULL),(5,9006,' Victor Woeltjen'),(6,9007,'Simon Wright'),(7,9008,'Neal Wruck'),(8,9009,'Paul Monks'),(9,9010,'Mike Salvati'),(10,9011,NULL),(11,9012,'Wesley S. Walker'),(12,9013,'Sasha Goldshtein'),(13,9014,'Josh Cates'),(14,9015,'Krug Stillo'),(15,9016,'Scott LeBrun'),(16,9017,'Hannah Steele'),(17,9018,'Vincent Cadena'),(18,9019,'Brandt Sponseller'),(19,9020,'Richard Adams');
/*!40000 ALTER TABLE `reviewer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-21 17:44:18
