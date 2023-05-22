CREATE DATABASE  IF NOT EXISTS `bdproyecto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdproyecto`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bdproyecto
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
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `Ciudad_ID` int NOT NULL AUTO_INCREMENT,
  `Estado_ID` int NOT NULL,
  `Ciudad_Nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`Ciudad_ID`),
  KEY `FK_Estado_Cod` (`Estado_ID`),
  CONSTRAINT `FK_Estado_Cod` FOREIGN KEY (`Estado_ID`) REFERENCES `estado` (`Estado_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,1,'MONGUI'),(2,2,'AGUA DE DIOS'),(3,3,'FRANCISCO PIZARRO'),(4,3,'CALI'),(5,3,'YUMBO'),(6,4,'SOLEDAD'),(7,3,'BUENAVISTA'),(8,3,'JAMBALO'),(9,5,'IBAGUE'),(10,6,'GARZON'),(11,3,'CALIMA'),(12,3,'BUGALAGRANDE'),(13,3,'TULUA'),(14,3,'CAPITANEJO'),(15,7,'BARRANCABERMEJA'),(16,4,'BARRANQUILLA'),(17,3,'BUCARASICA'),(18,3,'PALMIRA'),(19,2,'ENCISO'),(20,3,'GUADALAJARA DE BUGA'),(21,2,'LA CEJA'),(22,2,'BELALCAZAR'),(23,8,'SOACHA'),(24,2,'GOMEZ PLATA'),(25,2,'MEDELLIN'),(26,3,'FLANDES'),(27,3,'RIOBLANCO'),(28,1,'PUERTO LIBERTADOR'),(29,3,'GUACA'),(30,2,'RIONEGRO'),(31,11,'POPAYAN'),(32,5,'CHAGUANI'),(33,5,'ARMERO'),(34,3,'ANCUYA'),(35,3,'ZAPATOCA'),(36,1,'SABANAS DE SAN ANGEL'),(37,3,'SARAVENA'),(38,3,'EL CERRITO'),(39,2,'SABANETA'),(40,14,'CORTES'),(41,3,'BUENAVENTURA'),(42,3,'ROLDANILLO'),(43,3,'LA JAGUA DE IBIRICO'),(44,3,'TOLU VIEJO'),(45,5,'CAPARRAPI'),(46,8,'MORALES'),(47,6,'NEIVA'),(48,3,'CARTAGO'),(49,3,'YOLOMBO'),(50,5,'EL PEÃ‘ON'),(51,9,'BOGOTA, D.C.'),(52,2,'BELLO'),(53,8,'NILO'),(54,5,'PUERTO NARE'),(55,5,'GUADALUPE'),(56,5,'LIBANO'),(57,16,'SAN MARTIN'),(58,17,'QUETAME'),(59,2,'ITAGUI'),(60,2,'SAN JOSE DE LA MONTAÃ‘A'),(61,3,'PRADERA'),(62,3,'CAJIBIO'),(63,2,'SAN JUANITO'),(64,8,'RICAURTE'),(65,3,'JAMUNDI'),(66,5,'LERIDA'),(67,2,'ENVIGADO'),(68,19,'CHIBOLO'),(69,3,'ZARZAL'),(70,7,'SAN GIL'),(71,10,'CARTAGENA'),(72,2,'BARBACOAS'),(73,3,'GUACARI'),(74,5,'HELICONIA'),(75,17,'CIMITARRA'),(76,4,'PUERTO COLOMBIA'),(77,3,'CAJICA'),(78,21,'SIGUATEPEQUE'),(79,1,'SAHAGUN'),(80,14,'SAN PEDRO SULA'),(81,10,'MARIA LA BAJA'),(82,5,'MANAURE'),(83,3,'CANDELARIA'),(84,5,'MELGAR'),(85,2,'COPACABANA'),(86,19,'APIA'),(87,3,'REPELON'),(88,11,'SUAREZ'),(89,3,'CAICEDONIA'),(90,5,'SAN ANTONIO'),(91,7,'PIEDECUESTA'),(92,5,'COELLO'),(93,11,'PURACE'),(94,18,'VILLAMARIA'),(95,2,'RETIRO'),(96,6,'LA PLATA'),(97,2,'DON MATIAS'),(98,23,'Bagaces'),(99,3,'YOTOCO'),(100,7,'BUCARAMANGA'),(101,5,'HOBO'),(102,7,'GIRON'),(103,19,'SAN JOAQUIN'),(104,3,'LABATECA'),(105,5,'CABUYARO'),(106,1,'MONTELIBANO'),(107,6,'YAGUARA'),(108,5,'ICONONZO'),(109,11,'PUERTO TEJADA'),(110,5,'HONDA'),(111,11,'SANTANDER DE QUILICHAO'),(112,18,'VIGIA DEL FUERTE'),(113,2,'CAUCASIA'),(114,3,'OBANDO'),(115,11,'LEGUIZAMO'),(116,11,'ROSAS'),(117,2,'EL CARMEN DE VIBORAL'),(118,8,'ZIPAQUIRA'),(119,2,'JERICO'),(120,2,'LA CAPILLA'),(121,3,'ALCALA'),(122,3,'ALBANIA'),(123,2,'PUERTO RONDON'),(124,8,'CHIA'),(125,3,'SAN PEDRO'),(126,2,'CALDAS'),(127,4,'GALAPA'),(128,2,'SAN ANDRES DE CUERQUIA'),(129,5,'SALDAÃ‘A'),(130,5,'FRESNO'),(131,3,'DAGUA'),(132,8,'FUNZA'),(133,10,'TURBACO'),(134,5,'PRADO'),(135,1,'MONTERIA'),(136,3,'SAMPUES'),(137,8,'GIRARDOT'),(138,24,'MAICAO'),(139,3,'ANSERMANUEVO'),(140,5,'MARIQUITA'),(141,3,'SEVILLA'),(142,17,'ARMENIA'),(143,3,'LA CUMBRE'),(144,3,'LA UVITA'),(145,2,'SAN LUIS DE GACENO'),(146,8,'MADRID'),(147,4,'MALAMBO'),(148,5,'CARMEN DE APICALA'),(149,2,'PANA PANA'),(150,15,'SOGAMOSO'),(151,3,'ANDALUCIA'),(152,7,'FLORESTA'),(153,6,'GAMBITA'),(154,5,'ESPINAL'),(155,5,'RONCESVALLES'),(156,2,'URRAO'),(157,6,'PITALITO'),(158,2,'SAN LUIS'),(159,8,'ARACATACA'),(160,2,'SAN ROQUE');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 17:16:36
