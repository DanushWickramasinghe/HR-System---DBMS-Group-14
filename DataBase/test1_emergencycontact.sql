-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: test1
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
-- Table structure for table `emergencycontact`
--

DROP TABLE IF EXISTS `emergencycontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emergencycontact` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `phone_number` char(10) NOT NULL,
  `Relationship` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergencycontact`
--

LOCK TABLES `emergencycontact` WRITE;
/*!40000 ALTER TABLE `emergencycontact` DISABLE KEYS */;
INSERT INTO `emergencycontact` VALUES (1,'Ruth Martin','0793526013','Wife'),(2,'Joe Kowalski','0778283333','Sister'),(3,'Herman Dunford','0735246735','Wife'),(4,'Barbara Ellington','0735990466','Uncle'),(5,'Jessica Cahill','0786198573','Brother'),(6,'Gregory Lee','0741561047','Wife'),(7,'Barbara Derosso','0762315038','Mother'),(8,'Norberto Bailey','0779135610','Wife'),(9,'Walter Lewis','0786144183','Father'),(10,'Arthur Kim','0748440174','Spouse'),(11,'Peggy Cola','0702956737','Brother'),(12,'Randy Altobell','0772859862','Wife'),(13,'Rafael Sanchez','0754762553','Husband'),(14,'Jessica Cagle','0794513178','Husband'),(15,'Maria Hanover','0706502913','Sibling'),(16,'Casey Mueller','0743587023','Brother'),(17,'Joe Gomez','0731429891','Wife'),(18,'Wanda Swan','0798659938','Father'),(19,'Anthony Santos','0748137009','Sibling'),(20,'Susan Garcia','0761845496','Mother'),(21,'Marty Keith','0733390077','Father'),(22,'David Spader','0786505844','Father'),(23,'Fred Reyes','0771207271','Husband'),(24,'Shirley Staples','0783005755','Uncle'),(25,'Michael Rooney','0778037722','Spouse'),(26,'Jason Brunetto','0732000657','Father'),(27,'Gary Flowers','0772122729','Uncle'),(28,'Jon Pabon','0733652179','Brother'),(29,'Rhea Ross','0754204229','Father'),(30,'Gary Castillo','0749899428','Sibling'),(31,'Kandy Adams','0794576444','Wife'),(32,'Edmund Martinek','0763400352','Sister'),(33,'Blanca Brown','0733359425','Brother'),(34,'Leta Grant','0737032380','Sister'),(35,'Doris Silver','0707674803','Father'),(36,'Shellie Monro','0715768057','Uncle'),(37,'Andrew Tillman','0722716169','Father'),(38,'Matthew Kintzer','0712942261','Husband'),(39,'Raul Labadie','0745273589','Uncle'),(40,'Marie Muraski','0755788673','Brother'),(41,'Debra Sisto','0784704086','Sister'),(42,'Ruth Harvey','0732574404','Brother'),(43,'Kenneth Nottage','0730160523','Spouse'),(44,'Samuel Carrier','0744389769','Wife'),(45,'Sheila Macmillan','0744849728','Uncle'),(46,'Maxine Hortin','0785775813','Sister'),(47,'Joe Stanton','0734951821','Wife'),(48,'Delores Lee','0746333736','Wife'),(49,'Jeffery Foreman','0770640121','Sibling'),(50,'Juan Nicholas','0755173924','Husband'),(51,'Richard Hunter','0782818020','Father'),(52,'Christine Currin','0782171692','Wife'),(53,'Bruce Robb','0718052670','Uncle'),(54,'Kristin Vang','0769627016','Mother'),(55,'Howard Shock','0779126489','Wife'),(56,'Franklin Moncada','0709516049','Brother'),(57,'Merrill Rosenthal','0757248089','Sibling'),(58,'Bethany Reynolds','0784170024','Wife'),(59,'Jamie Kennedy','0738124990','Wife'),(60,'Sara Smith','0772790640','Husband'),(61,'Anna Tripp','0729113624','Father'),(62,'Donald Hawkins','0756977140','Uncle'),(63,'Michael Everly','0762803954','Uncle'),(64,'Linda Rinks','0764583859','Sibling'),(65,'Felix Heavener','0798622696','Brother'),(66,'Christopher Dougal','0732189693','Mother'),(67,'Jonathan Flaherty','0737124310','Husband'),(68,'Ernest Gilmore','0700359708','Brother'),(69,'Mazie Kuhl','0775392985','Husband'),(70,'Johnny Cruz','0722220705','Uncle'),(71,'Tyler Branch','0782712162','Wife'),(72,'Marie Haas','0781818754','Brother'),(73,'Irene Burcham','0743067335','Uncle'),(74,'Charlene Midgley','0789958750','Wife'),(75,'Patricia Cole','0758291285','Wife'),(76,'Harold Humes','0767140791','Spouse'),(77,'Marta Edens','0767066016','Uncle'),(78,'Corey Picard','0700655352','Spouse'),(79,'Susan West','0777050031','Wife'),(80,'Joseph Dixon','0788443950','Sibling'),(81,'Amber Gilbert','0771650133','Spouse'),(82,'Vicky Harman','0796253156','Father'),(83,'Latoya Minelli','0711419183','Sibling'),(84,'Helen Baker','0778721467','Brother'),(85,'Susan Roberts','0711723304','Husband'),(86,'James Warnock','0734160743','Husband'),(87,'Calvin Hoagland','0791005253','Father'),(88,'Michelle Quan','0792495964','Brother'),(89,'Michael Jordan','0782512119','Sibling'),(90,'Billy Hubenthal','0738647522','Uncle'),(91,'Everett Chamberlin','0728780783','Brother'),(92,'James Lee','0752716890','Brother'),(93,'Latricia Cooper','0718000686','Wife'),(94,'Steve Ruda','0737014571','Husband'),(95,'Debra Streicher','0797288533','Husband'),(96,'Michael Gusler','0744489201','Spouse'),(97,'Gina Whitten','0702009987','Husband'),(98,'Betty Mccartt','0769302840','Husband'),(99,'David Aguilera','0786791837','Husband'),(100,'Esther Akers','0773144340','Sister'),(101,'Kimberly Sembler','0730443235','Mother'),(102,'Michael Shafer','0766396277','Mother'),(103,'George Choate','0772025180','Brother'),(104,'Mary Fullbright','0703813629','Brother'),(105,'Nancy Moynihan','0718726154','Husband'),(106,'Karl Smith','0715460843','Mother'),(107,'Zaida Babin','0710212173','Sibling'),(108,'Lois Ford','0725936915','Father'),(109,'Judy Ferreira','0738390921','Father'),(110,'Dustin Miller','0719864278','Spouse'),(111,'Daniel Bartz','0728788424','Father'),(112,'James Harmon','0738651752','Spouse'),(113,'Teresa Bustad','0764223954','Father'),(114,'Dan Shah','0719817993','Brother'),(115,'Sarah Jones','0738227948','Mother'),(116,'Maria Rodriguez','0776537665','Brother'),(117,'Julia Edwards','0791992888','Brother'),(118,'Edna Johnson','0743905783','Wife'),(119,'Cheryl Knaff','0758758079','Brother'),(120,'Kermit Lanier','0745227994','Sibling'),(121,'Emma Curry','0749952814','Husband'),(122,'Maria Serrato','0773882802','Mother'),(123,'Eva Hamel','0731100684','Father'),(124,'Jerry Speed','0764323626','Sister'),(125,'Marina Ma','0787376761','Father'),(126,'Johnnie Michel','0736135977','Father'),(127,'Joseph Lawson','0799165763','Husband'),(128,'Shirley Klock','0721593216','Sister'),(129,'Kenneth Brown','0749256860','Sibling'),(130,'James Frazier','0781362164','Wife'),(131,'Mary Wu','0763122708','Mother'),(132,'Leah Olive','0711210914','Husband'),(133,'Joi Franks','0746419460','Uncle'),(134,'German Colvin','0739417038','Uncle'),(135,'Ariane Snyder','0776263670','Brother'),(136,'Leo Joiner','0708167724','Sister'),(137,'Chad Lemon','0757888821','Husband'),(138,'Charles Shiring','0736072184','Spouse'),(139,'Evelyn Edwards','0744685737','Uncle'),(140,'George Larsen','0758592122','Husband'),(141,'Bernard Mcdonald','0717892382','Wife'),(142,'Kathryn Kalinowski','0795798423','Father'),(143,'Beatrice Brown','0783044120','Father'),(144,'Melodee Carruth','0721926144','Sibling'),(145,'Juan Rivas','0743429475','Spouse'),(146,'Meghan Godwin','0735114640','Wife'),(147,'James Carney','0748753932','Wife'),(148,'Dorothy Rutherford','0745964930','Sibling'),(149,'Helen Diaz','0735812858','Sibling'),(150,'James Hampton','0707158471','Husband'),(151,'Regina Siebert','0740599703','Wife'),(152,'Alexis Drew','0711997438','Husband'),(153,'Dolores Mcdermott','0794248876','Uncle'),(154,'Elizabeth Cunningham','0738922402','Wife'),(155,'Nellie Norris','0765753862','Uncle'),(156,'Erin Peco','0718804423','Uncle'),(157,'Rosemarie Barber','0702124078','Brother'),(158,'Sarah Tanimoto','0734965094','Husband'),(159,'Glenn Reynolds','0789743964','Spouse'),(160,'Robert Corliss','0789654922','Sibling'),(161,'Rochelle Benitez','0791820769','Father'),(162,'Joshua Johnson','0781680631','Uncle'),(163,'Patricia Mcferren','0784527131','Mother'),(164,'Betty Chapman','0773486619','Brother'),(165,'Andrew Boudreaux','0723709115','Wife'),(166,'Gloria Hodge','0782683903','Wife'),(167,'Jean Kleck','0799737029','Mother'),(168,'Tara Arredondo','0729987339','Uncle'),(169,'Carmen Bates','0729242612','Husband'),(170,'Rebekah Wand','0765378732','Wife'),(171,'William Fehrle','0743754456','Mother'),(172,'Gregory Miller','0759563388','Uncle'),(173,'Jessica Chapman','0779029894','Mother'),(174,'Sybil Irvin','0767498027','Sibling'),(175,'Pauline Ruff','0779480527','Husband'),(176,'Deborah Gibson','0744343590','Sister'),(177,'Glenn Korsak','0738334434','Spouse'),(178,'Leonardo Hirst','0729384329','Sister'),(179,'Clarence Devries','0736659772','Sibling'),(180,'David Scott','0705947386','Mother'),(181,'Jeffrey Mortimer','0785180498','Brother'),(182,'Perry Foss','0787126113','Father'),(183,'Margret Harris','0778186670','Spouse'),(184,'Mary Fleming','0776393386','Spouse'),(185,'Therese Cahill','0731902687','Sibling'),(186,'Evelyn Orabuena','0737619140','Sister'),(187,'Steven Dobson','0707303407','Husband'),(188,'Viola Winslow','0778589538','Sister'),(189,'Jerry Portsche','0721564754','Husband'),(190,'Viola Rodriguez','0701614169','Mother'),(191,'Beth Smith','0753200677','Wife'),(192,'Margarita Hernandez','0702161553','Brother'),(193,'Alberta Moses','0775547359','Brother'),(194,'Ernest Hoy','0738392700','Sister'),(195,'Henrietta Johnson','0788954303','Sibling'),(196,'Donald Gardner','0738395693','Sibling'),(197,'Dorian Stratton','0723091317','Brother'),(198,'Elinor Fischer','0733878382','Spouse'),(199,'Sonja Mullins','0721580740','Mother'),(200,'George Green','0729641650','Husband'),(202,'kamal','0765432123','Brother'),(203,'sunil','0765432122','Brother');
/*!40000 ALTER TABLE `emergencycontact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 12:40:56
