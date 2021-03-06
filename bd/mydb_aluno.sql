-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `CPF` varchar(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `idade` tinyint NOT NULL,
  `email` varchar(50) NOT NULL,
  `media` float DEFAULT NULL,
  `historico` longtext,
  `id_turma` varchar(20) NOT NULL,
  PRIMARY KEY (`CPF`),
  KEY `fk_aluno_turma_idx` (`id_turma`),
  CONSTRAINT `fk_aluno_turma` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES ('11111111111','Giovanna',14,'giovanna@email.com',7.5,'oioioio','1_ma'),('11111111112','Marcela',12,'marcela@email.com',7.6,'','1_ma'),('11111111113','Beatriz',11,'bia@email.com',4.5,'','1_ma'),('11111111114','Bruno',11,'bruno@email.com',9.2,'','1_ma'),('11111111115','Fabio',12,'fabio@email.com',3.5,'','1_ma'),('11111111116','Bruna',15,'bruna@email.com',9.9,'','1_ma'),('11111111117','Carolina',13,'Carol@email.com',9.9,'','1_ma'),('11111111118','Bob',10,'bob@email.com',0,'','1_ma'),('11111111119','Marcia',10,'m@email.com',2,'','1_ma'),('11111111120','Flavio',11,'fla@email.com',10,'','1_ma'),('11111111123','Ariane',13,'ariane@email.com',5.3,NULL,'1_ma'),('11111111222','Maria',12,'jshhs',5.3,NULL,'1_ma'),('11111111333','Jo??o',15,'jshhs',5.3,NULL,'1_ma'),('11111111444','Leonardo',12,'jshhs',5.3,NULL,'1_ma'),('12345678910','Renata',13,'jshhssnsj',NULL,NULL,'1_ma');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 18:34:18
