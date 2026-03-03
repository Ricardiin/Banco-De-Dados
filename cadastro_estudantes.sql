-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cadastro
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `estudantes`
--

DROP TABLE IF EXISTS `estudantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(50) DEFAULT NULL,
  `profissao` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudantes`
--

LOCK TABLES `estudantes` WRITE;
/*!40000 ALTER TABLE `estudantes` DISABLE KEYS */;
INSERT INTO `estudantes` VALUES (1,'Ana Beatriz Almeida Souza','1998-03-15','F',58.00,1.65,'Brasileira','Professora'),(2,'Carlos Eduardo Pereira Lima','1995-07-22','M',82.00,1.78,'Português','Engenheiro'),(3,'Mariana Oliveira Santos','2001-11-09','F',64.00,1.70,'Brasileira','Atriz'),(4,'João Victor Rodrigues Costa','1997-01-30','M',85.00,1.80,'Angolano','Cantor'),(5,'Fernanda Martins Ribeiro','1999-05-18','F',55.00,1.62,'Brasileira','Do JOB'),(6,'Lucas Henrique Alves Rocha','1996-12-03','M',76.00,1.75,'Argentino','Ator'),(7,'Juliana Ferreira Gomes','2000-08-27','F',60.00,1.68,'Brasileira','Engenheira Civil'),(8,'Pedro Henrique Barbosa Silva','1994-04-14','M',88.00,1.82,'Chileno','Pedreiro'),(9,'Camila Dias Carvalho','2002-09-06','F',52.00,1.60,'Colombiana','Artista'),(10,'Rafael Moreira Araújo','1993-02-25','M',79.00,1.77,'Brasileiro','Jogador de Futebol'),(11,'Bruna Cardoso Monteiro','1998-10-12','F',59.00,1.66,'Portuguesa','Segurança'),(12,'Felipe Nascimento Teixeira','1997-06-19','M',90.00,1.83,'Brasileiro','Medico'),(13,'Larissa Batista Correia','2001-03-08','F',63.00,1.69,'Mexicana','Profeta'),(14,'Gabriel Mendes Lopes','1995-11-21','M',74.00,1.74,'Brasileiro','Ator'),(15,'Isabela Ramos Fernandes','1999-07-02','F',57.00,1.63,'Espanhola','Cantora'),(16,'Thiago Gonçalves Vieira','1996-01-17','M',84.00,1.79,'Brasileiro','Engenheiro Eletrico'),(17,'Amanda Castro Moura','2000-12-29','F',61.00,1.67,'Italiana','Dona de casa'),(18,'Daniel Freitas Andrade','1994-05-10','M',87.00,1.81,'Brasileiro','Youtuber'),(19,'Letícia Coutinho Duarte','2002-02-13','F',56.00,1.64,'Francesa','Streamer'),(20,'Vinícius Pires Machado','1993-09-24','M',78.00,1.76,'Brasileiro','Analista de dados'),(21,'Bianca Figueiredo Barros','1998-04-07','F',65.00,1.71,'Alemã','Barbeira'),(22,'Gustavo Campos Tavares','1997-08-16','M',92.00,1.84,'Brasileiro','Açougueiro'),(23,'Natália Rezende Melo','2001-06-05','F',50.00,1.59,'Canadense','Astronauta'),(24,'Eduardo Siqueira Matos','1995-10-28','M',80.00,1.77,'Brasileiro','Vagabundo'),(25,'Patricia Azevedo Brandão','1999-01-11','F',62.00,1.68,'Uruguaia','Dono de loja'),(26,'Rodrigo Peixoto Neves','1996-03-26','M',75.00,1.73,'Brasileiro','Padre'),(27,'Caroline Antunes Borges','2000-07-14','F',66.00,1.72,'Peruana','Dono de Padaria'),(28,'Marcelo Cavalcante Torres','1994-12-20','M',95.00,1.85,'Brasileiro','Padeiro'),(29,'Beatriz Sales Pinto','2002-05-03','F',54.00,1.61,'Venezuelana','Jogador de futebol'),(30,'André Luiz Nogueira','1993-11-15','M',83.00,1.78,'Brasileiro','Streamer'),(31,'Sabrina Rocha Albuquerque','1998-02-22','F',58.00,1.65,'Japonesa','Do JOB'),(32,'Henrique Paiva Santana','1997-09-09','M',89.00,1.82,'Brasileiro','Video Maker'),(33,'Vanessa Moraes Delgado','2001-04-18','F',60.00,1.66,'Chinesa','Psicologia'),(34,'Caio César Martins','1995-06-30','M',81.00,1.79,'Brasileiro','Medico'),(35,'Débora Cristina Lopes','1999-08-12','F',57.00,1.64,'Coreana','Pediatra'),(36,'Leonardo Franco Bastos','1996-10-04','M',91.00,1.83,'Brasileiro','Atendente'),(37,'Aline Cristina Cardoso','2000-01-27','F',63.00,1.70,'Australiana','Frentista'),(38,'Bruno Henrique Farias','1994-03-19','M',98.00,1.86,'Brasileiro','Porteiro'),(39,'Tatiane Lopes Guimarães','2002-07-08','F',55.00,1.62,'Indiana','Analista de dados'),(40,'Igor Almeida Brito','1993-12-01','M',77.00,1.75,'Brasileiro','Telemarketing'),(41,'Renata Vieira de Souza','1998-05-23','F',62.00,1.69,'Sul-africana','Gerente'),(42,'Murilo Fernandes Castro','1997-11-14','M',86.00,1.80,'Brasileiro','Policial'),(43,'Priscila Andrade Lima','2001-02-06','F',56.00,1.63,'Argentina','Psicologo'),(44,'Alexandre Rodrigues Moreira','1995-09-17','M',93.00,1.84,'Brasileiro','Analista de Segurança da Informação'),(45,'Yasmin Silva Couto','1999-04-29','F',49.00,1.58,'Marroquina','Analista de Big Data'),(46,'Jonathan Pereira Duarte','1996-08-21','M',79.00,1.77,'Brasileiro','Full Stack'),(47,'Elaine dos Santos Lima','2000-10-10','F',61.00,1.67,'Egípcia','Gestor de E-commerce'),(48,'Mateus Ribeiro da Costa','1994-06-02','M',88.00,1.81,'Brasileiro','Contador'),(49,'Raquel Martins Nunes','2002-03-25','F',53.00,1.60,'Holandesa','Gerente de Projetos'),(50,'Diego Alves Teixeira','1993-07-13','M',84.00,1.78,'Brasileiro','Customer Success'),(51,'Cristiane Rocha Mendes','1998-12-07','F',59.00,1.65,'Sueca','Consultor de Inteligência Artificial'),(52,'Otávio Barbosa Freitas','1997-05-16','M',90.00,1.82,'Brasileiro','Engenheiro Civil'),(53,'Simone Carvalho Dias','2001-01-05','F',60.00,1.66,'Suíça','Arquiteto'),(54,'Wellington Araújo Pinto','1995-04-22','M',83.00,1.79,'Brasileiro','Tradutor'),(55,'Jéssica Fernandes Ramos','1999-09-30','F',57.00,1.64,'Russa','Editor de Video'),(56,'Fábio Gonçalves Ribeiro','1996-02-18','M',96.00,1.85,'Brasileiro','Cozinheiro'),(57,'Karina Batista Lopes','2000-06-11','F',62.00,1.68,'Turca','Motorista de Aplicativo'),(58,'Leandro Moreira Campos','1994-08-28','M',92.00,1.83,'Brasileiro','Flanelinha'),(59,'Talita Nogueira Santos','2002-11-19','F',54.00,1.61,'Estadunidense','Jornalista'),(60,'Márcio Henrique Oliveira','1993-10-09','M',87.00,1.80,'Brasileiro','Engenheiro'),(61,'Geovana Cosmo da Silva','2004-08-05','F',60.00,1.60,'Brasileira','Barbeira'),(62,'Silvana souza','1998-03-15','F',60.00,1.80,'Brasileira','JOB'),(64,'Getulio Vargas','2004-03-15','M',88.00,1.65,'Brasileiro','Analista de Dados');
/*!40000 ALTER TABLE `estudantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-02 21:33:59
