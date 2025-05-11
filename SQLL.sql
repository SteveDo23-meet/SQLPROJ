-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: retail
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(100) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Want','When clearly type up.'),(2,'Protect','Wait education think similar particular before.'),(3,'All','Action economy several hit simple personal home.'),(4,'Up','Old great notice.'),(5,'Organization','Foreign agency list miss among.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `Address` text,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Megan','Chang','greenwilliam@yahoo.com','759-382-4219x4892','578 Michael Island, New Thomas, NC 34644'),(2,'Bryan','Sellers','cortezraymond@garrett.com','513.933.2871','714 Mann Plaza Suite 839, Seanfurt, OK 32234'),(3,'Kelly','Lopez','salazardiane@jones-shelton.com','(018)684-8339','477 Miller Ridge Apt. 795, East Allen, DE 92950'),(4,'Jeffrey','Norton','gcabrera@gmail.com','001-309-891-0139x916','90321 Clark Union, Lake Andrewchester, CT 34569'),(5,'Chad','Jones','ryan08@yahoo.com','9163457923','Unit 0225 Box 8419, DPO AA 87743'),(6,'Gregory','Ruiz','deborah64@gmail.com','+1-071-508-4237','599 Jennifer Loaf Suite 109, Lake Matthew, IN 84046'),(7,'Shane','Page','moralesjacqueline@yahoo.com','001-027-142-7878x90075','63812 Richard Springs Suite 503, Lake Karenhaven, CT 25464'),(8,'David','Banks','haley21@yahoo.com','(104)714-2851x2400','559 Meghan Squares Suite 765, East Nicholas, AL 18648'),(9,'Edward','Cook','morganchristine@gmail.com','229-456-8241x730','6546 Cory Orchard, Rogersmouth, NJ 15706'),(10,'Holly','Simmons','jessica22@hotmail.com','001-611-133-0601','7936 Micheal Green Apt. 635, North Lynntown, NC 59694'),(11,'Karen','Harris','pscott@gmail.com','921.376.5821','Unit 7296 Box 6875, DPO AA 65859'),(12,'Cynthia','Baxter','petersonsydney@meyers-johnson.com','926-947-1180x132','5227 Wagner Pines, New Christopherhaven, PA 10509'),(13,'Julie','Bullock','amanda96@bruce-compton.org','001-300-248-9451','6660 Danielle Crossroad Apt. 450, South Robertfort, PA 94504'),(14,'Christopher','Hale','djohnson@yahoo.com','017.200.9925x185','09795 Tara Station Suite 264, New Michelleborough, WY 51884'),(15,'Sean','Sherman','kristine10@gmail.com','408.993.3188x6841','16116 Jessica Burgs Suite 660, Calhounmouth, KS 10795'),(16,'Michael','Martinez','michael03@jones-barry.com','3104509322','4203 Rogers Highway Suite 852, North Amandaport, MS 19758'),(17,'Sonya','Brock','joelwhite@yahoo.com','(029)061-1264x86296','37580 Ortiz Mall Suite 735, Stephanieland, WY 14737'),(18,'Joshua','Grant','lhebert@reynolds-wright.info','825-717-3407x97034','926 Davis Parks Apt. 864, North Josephton, KS 52723'),(19,'Alicia','Perkins','qgarcia@yahoo.com','391-014-4851x8321','8298 Amanda Loop Suite 447, Ashleyberg, DE 91862'),(20,'David','Morales','anitaevans@hotmail.com','637.785.7074x2709','6081 Gina Streets Suite 050, New Adamview, SC 92210');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Kelly','Lester','james67@rivera.biz','(728)523-2756','Stocker'),(2,'Ronald','Vasquez','scottharris@williams.com','(502)394-9184','Stocker'),(3,'Kelsey','Andrade','sbrown@hotmail.com','+1-869-774-7354x00025','Manager'),(4,'Adam','Pena','buchananerin@sanders.com','+1-191-558-7540x803','Sales'),(5,'Miguel','Clark','maryking@hotmail.com','001-448-647-5304x8107','Support'),(6,'Tyler','Kim','hstevens@gmail.com','312-637-9168','Stocker'),(7,'Kari','Calderon','johnrobinson@michael-flores.biz','849-834-7897','Stocker'),(8,'Amanda','Green','wilsonkristen@thompson.com','408.860.1641','Sales'),(9,'Teresa','Cunningham','jeffrey31@parker.info','922-088-5590x2622','Stocker'),(10,'William','Jones','shudson@young.com','001-659-927-1908x95774','Sales'),(11,'Alexander','Robinson','vlamb@payne-padilla.com','296-354-6030x535','Support'),(12,'Michelle','Barnett','max24@kelly.com','001-250-700-3003x5105','Cashier'),(13,'Teresa','Henderson','wgraham@thompson-murphy.biz','(064)887-0916x6208','Support'),(14,'Devon','Melton','riveramary@wright.com','001-821-691-9729x9045','Cashier'),(15,'Linda','Oconnor','crawfordmichael@hernandez.biz','476-048-4870x89840','Sales'),(16,'Stephen','Griffith','tyler04@hotmail.com','4943885643','Cashier'),(17,'Darren','Holden','francisco25@wilkins.com','(544)576-9620x290','Manager'),(18,'Scott','Peterson','qbrowning@osborne.net','(428)212-9188x96644','Support'),(19,'Justin','Patterson','amanda85@yahoo.com','620.829.6570','Sales'),(20,'Anna','Jenkins','coxtina@frazier.com','+1-703-934-2619x7378','Support');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitems` (
  `OrderItemID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `UnitPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderItemID`),
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,2,19,5,64.20),(2,3,1,1,67.15),(3,20,19,1,45.21),(4,12,4,1,64.50),(5,7,6,1,53.13),(6,2,1,5,48.31),(7,4,9,1,29.87),(8,10,12,4,26.23),(9,17,15,1,63.68),(10,13,7,3,42.27),(11,16,19,2,72.79),(12,7,2,2,86.09),(13,11,17,3,20.55),(14,15,6,1,52.45),(15,14,19,5,92.58),(16,12,13,3,23.81),(17,1,15,1,40.23),(18,2,18,3,22.14),(19,16,12,5,35.91),(20,12,19,5,21.91);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `OrderStatus` enum('Pending','Shipped','Delivered','Cancelled') DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,17,'2025-03-15 03:29:09',499.03,'Cancelled'),(2,4,'2025-03-07 13:45:15',164.69,'Delivered'),(3,4,'2025-01-31 11:01:23',282.77,'Shipped'),(4,20,'2025-04-17 11:10:17',282.67,'Delivered'),(5,15,'2025-01-29 12:31:39',63.98,'Cancelled'),(6,11,'2025-02-01 04:15:20',296.31,'Delivered'),(7,6,'2025-02-03 21:45:41',110.91,'Shipped'),(8,2,'2025-01-31 20:52:41',314.13,'Delivered'),(9,16,'2025-05-05 07:10:32',53.16,'Shipped'),(10,5,'2025-02-17 02:30:40',463.22,'Pending'),(11,18,'2025-05-02 07:23:12',348.08,'Delivered'),(12,17,'2025-03-05 17:51:04',409.58,'Shipped'),(13,19,'2025-01-05 15:08:24',416.13,'Cancelled'),(14,19,'2025-04-04 18:33:19',152.10,'Cancelled'),(15,12,'2025-05-02 12:36:55',59.54,'Pending'),(16,16,'2025-03-19 07:18:01',301.80,'Delivered'),(17,7,'2025-01-09 13:50:25',136.66,'Delivered'),(18,4,'2025-02-13 23:13:10',358.56,'Delivered'),(19,6,'2025-02-16 15:50:05',179.62,'Pending'),(20,4,'2025-05-04 10:26:42',395.90,'Shipped');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `PaymentDate` datetime DEFAULT NULL,
  `PaymentAmount` decimal(10,2) DEFAULT NULL,
  `PaymentMethod` enum('Credit Card','Cash','PayPal') DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,10,'2025-02-24 16:14:28',206.25,'Cash'),(2,3,'2025-03-05 19:14:34',20.73,'Credit Card'),(3,11,'2025-02-03 00:20:06',96.84,'Credit Card'),(4,15,'2025-02-16 06:01:53',201.75,'PayPal'),(5,19,'2025-03-10 08:49:18',439.78,'Credit Card'),(6,13,'2025-02-13 21:25:24',438.41,'PayPal'),(7,14,'2025-02-01 18:31:50',390.65,'PayPal'),(8,2,'2025-03-23 16:49:36',99.52,'Credit Card'),(9,9,'2025-03-31 21:15:53',356.73,'Cash'),(10,17,'2025-03-12 13:02:15',444.77,'PayPal'),(11,20,'2025-04-20 18:51:55',382.63,'Credit Card'),(12,16,'2025-01-27 19:07:00',176.45,'Cash'),(13,2,'2025-03-17 01:16:02',408.34,'Cash'),(14,7,'2025-04-20 16:42:39',283.31,'PayPal'),(15,3,'2025-01-03 14:45:50',421.98,'Credit Card'),(16,1,'2025-02-01 11:37:52',212.87,'PayPal'),(17,14,'2025-04-24 08:00:47',171.77,'Credit Card'),(18,1,'2025-01-02 02:16:15',364.32,'Credit Card'),(19,17,'2025-03-17 17:06:04',313.79,'Credit Card'),(20,4,'2025-02-03 09:24:08',312.01,'Credit Card');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) DEFAULT NULL,
  `Description` text,
  `Price` decimal(8,2) DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Others','Guess attorney response provide likely fire.',196.64,5),(2,'Thought','Fire town worker.',180.92,3),(3,'Southern','Image central challenge term memory.',24.26,1),(4,'Commercial','Throughout treat relate respond.',180.27,3),(5,'Several','Role mind statement.',97.07,1),(6,'Rock','Hold conference son spend ball company enter son.',73.99,3),(7,'Generation','Site military lead travel series.',124.12,2),(8,'List','Check plan computer mention time firm water.',193.49,4),(9,'Data','Particularly speech mission remember tree care sign.',91.33,5),(10,'Art','Bar military able simple billion parent now.',55.80,5),(11,'Government','Mention would technology budget first age.',183.62,1),(12,'Similar','Affect though cover including.',145.34,4),(13,'Assume','Someone treatment over some collection.',143.50,1),(14,'Why','Impact key page per.',124.32,3),(15,'Especially','None sound include air sort.',52.56,3),(16,'Cut','Ask benefit ago again identify real.',142.21,1),(17,'Watch','Follow so second.',42.26,5),(18,'Run','Live teach movie I situation understand agree.',48.23,2),(19,'Name','Student bag grow better.',161.62,4),(20,'Alone','Training personal expert already.',22.79,3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ReviewID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Comment` text,
  `ReviewDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,10,9,2,'Affect station member although.','2025-01-22 17:30:10'),(2,4,16,4,'Particularly sing purpose here ago job trial.','2025-03-06 15:32:07'),(3,3,1,3,'Two hair describe hundred candidate.','2025-04-20 22:15:31'),(4,15,4,3,'Whom it job likely different house.','2025-05-06 07:09:05'),(5,5,17,3,'However ok structure your those head against.','2025-04-29 18:17:02'),(6,4,5,3,'Theory everybody particularly test hospital personal move.','2025-01-10 11:02:26'),(7,1,2,1,'Require agree inside thank.','2025-03-18 08:01:00'),(8,7,9,5,'Under require page claim future in.','2025-04-25 14:33:14'),(9,11,12,5,'Seven both happy central group.','2025-04-02 18:50:26'),(10,2,20,4,'Million approach theory election rich foot herself among.','2025-04-18 01:52:25'),(11,15,14,3,'Alone improve heart decade care book.','2025-03-11 07:34:17'),(12,18,6,2,'All office less politics.','2025-01-16 02:41:27'),(13,13,19,3,'Nation network college debate direction moment.','2025-04-06 17:44:33'),(14,1,5,2,'Tonight perhaps explain soldier range sort.','2025-03-21 09:27:46'),(15,9,11,3,'Tonight garden maybe forward reason.','2025-03-15 00:56:04'),(16,12,3,3,'Figure they yeah get we memory who.','2025-03-20 21:29:19'),(17,20,2,1,'Raise child above other.','2025-04-11 09:57:12'),(18,9,6,2,'Recent positive daughter popular.','2025-04-10 16:51:36'),(19,19,10,3,'Entire rule collection be.','2025-01-07 23:52:13'),(20,13,18,2,'Break gun reveal.','2025-03-03 19:38:08');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-11 13:50:07
