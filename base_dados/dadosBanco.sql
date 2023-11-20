-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: rodaviva
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `candidato`
--

DROP TABLE IF EXISTS `candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidato` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cargo` varchar(40) DEFAULT NULL,
  `idEmpresa` bigint DEFAULT NULL,
  `idTalento` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Candidato_2` (`idEmpresa`),
  KEY `FK_Candidato_3` (`idTalento`),
  CONSTRAINT `FK_Candidato_2` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_Candidato_3` FOREIGN KEY (`idTalento`) REFERENCES `talento` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidato`
--

LOCK TABLES `candidato` WRITE;
/*!40000 ALTER TABLE `candidato` DISABLE KEYS */;
INSERT INTO `candidato` VALUES (2,'atendente',3,4),(3,'atendente',2,3),(4,'atendente',3,2),(5,'atendente',2,4);
/*!40000 ALTER TABLE `candidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `endereco` varchar(40) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `vagas` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (2,'Mc Donalds ','15315331251961','mcdonalds@mecmec.com.br','61992090318','72887-496','Quadra Quadra 31A','Cidade Ocidental','GO','atendente, coordenador, instrutor, gerente'),(3,'Habibs','15611320351668','habibs@habahb.com','15356544949','72887-496','Quadra Quadra, 31A','Cidade Ocidental','GO','atendente, coordenador, instrutor, gerente'),(4,'Sollo','15315331251961','funcionario@gmail.com','61982128895','72887-496','Quadra Quadra, 31A','Cidade Ocidental','GO','atendente, coordenador, instrutor, gerente'),(5,'C&A','41651561615165','cascas@gmail.com','61992090318','72887-496','Quadra Quadra 31A','Cidade Ocidental','GO','atendente, coordenador, instrutor, gerente');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talento`
--

DROP TABLE IF EXISTS `talento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `formacao` varchar(1000) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talento`
--

LOCK TABLES `talento` WRITE;
/*!40000 ALTER TABLE `talento` DISABLE KEYS */;
INSERT INTO `talento` VALUES (2,'Sebastiana Batista dos reis','99999999999','1973-07-10','sebastiana@gmail.com','ti','61992090318','72887-496','QUADRA 31A','CIDADE OCIDENTAL','GO'),(3,'Thaise Miguel','03945441102','1993-04-15','thaisemiguel@recomecar.org','FullStack , Java, TI','61991434692','72887-497','Quadra Quadra, 31A','Cidade Ocidental','GO'),(4,'Waschington Rodrigo','04244310177','1990-12-14','chitonbispocaua@gmail.com','FullStack , Java, TI','61992090318','72887-496','Quadra Quadra 31A','Cidade Ocidental','GO'),(5,'Waschington Rodrigo','04244310187','1989-12-15','chitonbispocaua@gmail.com','nenhuma','61992090318','72887-496','Quadra Quadra 31A','Cidade Ocidental','GO'),(6,'Sebastiana Batista dos reis','99999999999','1973-07-10','sebastiana@gmail.com','ti','61992090318','72887-496','QUADRA 31A','CIDADE OCIDENTAL','GO'),(7,'Waschington Rodrigo','16215418977','1990-12-14','funcionario@gmail.com','nenhuma','61982128895','72887-496','Quadra Quadra, 31A','Cidade Ocidental','GO');
/*!40000 ALTER TABLE `talento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rodaviva'
--

--
-- Dumping routines for database 'rodaviva'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 18:00:38
