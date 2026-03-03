-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) unsigned DEFAULT NULL,
  `totalaulas` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT 2026,
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Algoritmos','Lógica de programação. Você aprenderá sobre o desenvolvimento de soluções com aplicação da lógica de programação, que permite a criação de softwares amigáveis, seguros e funcionais.',40,10,2026),(2,'Excel Essencial','Você aprenderá a criar planilhas e tabelas, fazer gráficos simples, além de salvar arquivos em nuvem e realizar cálculos usando fórmulas e funções de Excel básico.',40,10,2026),(3,'Excel avançado I','Você aprofundará conhecimentos em funções do Excel avançado para otimizar cálculos e facilitar a construção de planilhas, banco de dados, relatórios e gráficos.',24,6,2026),(4,'Excel Avançado II','Você saberá mais sobre ferramentas avançadas e em recursos de banco de dados no Excel para automatizar tarefas e aprimorar consultas, relatórios, gráficos e cálculos.',24,6,2027),(5,'Forma Excel: do básico ao avançado','Você aprenderá a inserir informações em planilhas, usando recursos, funções e ferramentas avançadas do Excel 365 para criar gráficos, fazer cálculos e manipular dados.',72,18,2027),(6,'Desenvvidor Web Front-end 1','Você aprenderá a planejar e desenvolver sites responsivos com imagens.',60,15,2025),(7,'Desenvolvedor GeWeb Front-end 2: JavaScript','Você aprenderá como utilizar a codificação JavaScript para criar e usar recursos básicos de interatividade em um site.',40,12,2025),(8,'PHP co MySQL','Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP e do gerenciador de banco de dados MySQL.',40,12,2026),(9,'Lógica de Programação Direcionada a PHP','Você aprenderá a criar algoritmos e desenvolver aplicações e sistemas web com a linguagem de programação PHP.',40,12,2026),(10,'PHP','Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',24,6,2027),(11,'PHP4','Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',32,8,2027),(12,'Photoshop','Você aprenderá como tratar, manipular e editar imagens, utilizando filtros, cores, efeitos de camada e demais recursos do Adobe Photoshop.',36,9,2025),(13,'Phot para Mídias Sociais','Você aprenderá técnicas de criação, edição, composição e exportação de conteúdo gráfico para mídias sociais, utilizando recursos e ferramentas do Adobe Photoshop.',36,9,2025),(14,'Pthon','Você aprenderá a desenvolver programação web por meio da linguagem Python.',32,8,2026),(15,'Python I - fundamentos','Você aprenderá a desenvolver programação web por meio da linguagem Python, que possibilita a pesquisa e a extração de dados de páginas da internet.',2,11,2026),(16,'Python II - desenvolvendo aplicações web','Você aprenderá a desenvolver soluções para a web aplicando linguagem Python em framework de projetos de software e a manipular banco de dados.',3,15,2027),(17,'Introdução à Linem Java','Você aprenderá a prog aplicações básicas com a linguagem Java.',440,10,2026),(18,'Fação Front-end','Você aprenderá a planejar e produzir site com imagens, linguagem HTML5, CSS3 e Web Semântica usando codificação JavaScript.',108,27,2026),(19,'Desenvolvedor Web Back-end: NodeJs','Você aprenderá a configurar ambiente Node.js, desenvolvendo código JavaScript e executando no back-end. Também criará APTI Rest para acessar banco de dados e atender requisições HTTPs.',48,12,2026),(20,'POO','Curso de Programação Orientada ao Objeto',60,15,2027),(21,'C++','Curso de C++',40,10,2025),(22,'C#','Curso de C#',24,6,2025),(23,'PowerPoint','Curso completo de PowerPoint',24,6,2025),(24,'Word','Curso completo de Word',24,6,2026),(25,'Pacote Office','Curso de Word, PowerPoint e Excel',60,15,2027),(26,'Hardware','Curso de Montagem e Manutenção de Computadores',36,9,2027),(27,'Redes','Curso de Redes para Iniciantes',40,10,2027),(28,'Segurança da Informação','Curso de Segurança',16,4,2026);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duplicata`
--

DROP TABLE IF EXISTS `duplicata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duplicata` (
  `Número` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Papelaria` varchar(75) DEFAULT NULL,
  `Banco` varchar(75) DEFAULT NULL,
  `Vencimento` date DEFAULT NULL,
  `Preço` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Número`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duplicata`
--

LOCK TABLES `duplicata` WRITE;
/*!40000 ALTER TABLE `duplicata` DISABLE KEYS */;
INSERT INTO `duplicata` VALUES (1,'Senac','Itaú','2026-05-30',750.00),(2,'Agata','Will Bank','2026-10-30',990.00),(3,'Papelaria Pepel','NuBank','2025-05-30',150.00),(4,'Silvas','PicPay','0200-02-25',100.00),(5,'Expedição 33','Bradesco','2024-05-10',170.00),(6,'KZAS','Sicredi','2024-05-02',175.00);
/*!40000 ALTER TABLE `duplicata` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudantes`
--

LOCK TABLES `estudantes` WRITE;
/*!40000 ALTER TABLE `estudantes` DISABLE KEYS */;
INSERT INTO `estudantes` VALUES (1,'Ana Beatriz Almeida Souza','1998-03-15','F',58.00,1.65,'Brasileira','Professora'),(2,'Carlos Eduardo Pereira Lima','1995-07-22','M',82.00,1.78,'Português','Engenheiro'),(3,'Mariana Oliveira Santos','2001-11-09','F',64.00,1.70,'Brasileira','Atriz'),(4,'João Victor Rodrigues Costa','1997-01-30','M',85.00,1.80,'Angolano','Cantor'),(5,'Fernanda Martins Ribeiro','1999-05-18','F',55.00,1.62,'Brasileira','Do JOB'),(6,'Lucas Henrique Alves Rocha','1996-12-03','M',76.00,1.75,'Argentino','Ator'),(7,'Juliana Ferreira Gomes','2000-08-27','F',60.00,1.68,'Brasileira','Engenheira Civil'),(8,'Pedro Henrique Barbosa Silva','1994-04-14','M',88.00,1.82,'Chileno','Pedreiro'),(9,'Camila Dias Carvalho','2002-09-06','F',52.00,1.60,'Colombiana','Artista'),(10,'Rafael Moreira Araújo','1993-02-25','M',79.00,1.77,'Brasileiro','Jogador de Futebol'),(11,'Bruna Cardoso Monteiro','1998-10-12','F',59.00,1.66,'Portuguesa','Segurança'),(12,'Felipe Nascimento Teixeira','1997-06-19','M',90.00,1.83,'Brasileiro','Medico'),(13,'Larissa Batista Correia','2001-03-08','F',63.00,1.69,'Mexicana','Profeta'),(14,'Gabriel Mendes Lopes','1995-11-21','M',74.00,1.74,'Brasileiro','Ator'),(15,'Isabela Ramos Fernandes','1999-07-02','F',57.00,1.63,'Espanhola','Cantora'),(16,'Thiago Gonçalves Vieira','1996-01-17','M',84.00,1.79,'Brasileiro','Engenheiro Eletrico'),(17,'Amanda Castro Moura','2000-12-29','F',61.00,1.67,'Italiana','Dona de casa'),(18,'Daniel Freitas Andrade','1994-05-10','M',87.00,1.81,'Brasileiro','Youtuber'),(19,'Letícia Coutinho Duarte','2002-02-13','F',56.00,1.64,'Francesa','Streamer'),(20,'Vinícius Pires Machado','1993-09-24','M',78.00,1.76,'Brasileiro','Analista de dados'),(21,'Bianca Figueiredo Barros','1998-04-07','F',65.00,1.71,'Alemã','Barbeira'),(22,'Gustavo Campos Tavares','1997-08-16','M',92.00,1.84,'Brasileiro','Açougueiro'),(23,'Natália Rezende Melo','2001-06-05','F',50.00,1.59,'Canadense','Astronauta'),(24,'Eduardo Siqueira Matos','1995-10-28','M',80.00,1.77,'Brasileiro','Vagabundo'),(25,'Patricia Azevedo Brandão','1999-01-11','F',62.00,1.68,'Uruguaia','Dono de loja'),(26,'Rodrigo Peixoto Neves','1996-03-26','M',75.00,1.73,'Brasileiro','Padre'),(27,'Caroline Antunes Borges','2000-07-14','F',66.00,1.72,'Peruana','Dono de Padaria'),(28,'Marcelo Cavalcante Torres','1994-12-20','M',95.00,1.85,'Brasileiro','Padeiro'),(29,'Beatriz Sales Pinto','2002-05-03','F',54.00,1.61,'Venezuelana','Jogador de futebol'),(30,'André Luiz Nogueira','1993-11-15','M',83.00,1.78,'Brasileiro','Streamer'),(31,'Sabrina Rocha Albuquerque','1998-02-22','F',58.00,1.65,'Japonesa','Do JOB'),(32,'Henrique Paiva Santana','1997-09-09','M',89.00,1.82,'Brasileiro','Video Maker'),(33,'Vanessa Moraes Delgado','2001-04-18','F',60.00,1.66,'Chinesa','Psicologia'),(34,'Caio César Martins','1995-06-30','M',81.00,1.79,'Brasileiro','Medico'),(35,'Débora Cristina Lopes','1999-08-12','F',57.00,1.64,'Coreana','Pediatra'),(36,'Leonardo Franco Bastos','1996-10-04','M',91.00,1.83,'Brasileiro','Atendente'),(37,'Aline Cristina Cardoso','2000-01-27','F',63.00,1.70,'Australiana','Frentista'),(38,'Bruno Henrique Farias','1994-03-19','M',98.00,1.86,'Brasileiro','Porteiro'),(39,'Tatiane Lopes Guimarães','2002-07-08','F',55.00,1.62,'Indiana','Analista de dados'),(40,'Igor Almeida Brito','1993-12-01','M',77.00,1.75,'Brasileiro','Telemarketing'),(41,'Renata Vieira de Souza','1998-05-23','F',62.00,1.69,'Sul-africana','Gerente'),(42,'Murilo Fernandes Castro','1997-11-14','M',86.00,1.80,'Brasileiro','Policial'),(43,'Priscila Andrade Lima','2001-02-06','F',56.00,1.63,'Argentina','Psicologo'),(44,'Alexandre Rodrigues Moreira','1995-09-17','M',93.00,1.84,'Brasileiro','Analista de Segurança da Informação'),(45,'Yasmin Silva Couto','1999-04-29','F',49.00,1.58,'Marroquina','Analista de Big Data'),(46,'Jonathan Pereira Duarte','1996-08-21','M',79.00,1.77,'Brasileiro','Full Stack'),(47,'Elaine dos Santos Lima','2000-10-10','F',61.00,1.67,'Egípcia','Gestor de E-commerce'),(48,'Mateus Ribeiro da Costa','1994-06-02','M',88.00,1.81,'Brasileiro','Contador'),(49,'Raquel Martins Nunes','2002-03-25','F',53.00,1.60,'Holandesa','Gerente de Projetos'),(50,'Diego Alves Teixeira','1993-07-13','M',84.00,1.78,'Brasileiro','Customer Success'),(51,'Cristiane Rocha Mendes','1998-12-07','F',59.00,1.65,'Sueca','Consultor de Inteligência Artificial'),(52,'Otávio Barbosa Freitas','1997-05-16','M',90.00,1.82,'Brasileiro','Engenheiro Civil'),(53,'Simone Carvalho Dias','2001-01-05','F',60.00,1.66,'Suíça','Arquiteto'),(54,'Wellington Araújo Pinto','1995-04-22','M',83.00,1.79,'Brasileiro','Tradutor'),(55,'Jéssica Fernandes Ramos','1999-09-30','F',57.00,1.64,'Russa','Editor de Video'),(56,'Fábio Gonçalves Ribeiro','1996-02-18','M',96.00,1.85,'Brasileiro','Cozinheiro'),(57,'Karina Batista Lopes','2000-06-11','F',62.00,1.68,'Turca','Motorista de Aplicativo'),(58,'Leandro Moreira Campos','1994-08-28','M',92.00,1.83,'Brasileiro','Flanelinha'),(59,'Talita Nogueira Santos','2002-11-19','F',54.00,1.61,'Estadunidense','Jornalista'),(60,'Márcio Henrique Oliveira','1993-10-09','M',87.00,1.80,'Brasileiro','Fotógrafo'),(61,'Geovana Cosmo da Silva','2004-08-05','F',60.00,1.60,'Brasileira','Barbeira'),(62,'Silvana souza','1998-03-15','F',60.00,1.80,'Brasileira','JOB'),(63,'Getulio Vargas','2004-03-15','M',88.00,1.65,'Brasileiro','Analista de Dados');
/*!40000 ALTER TABLE `estudantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('F','M','G') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,'Rafael Kersting','1998-04-15','G',90.00,1.78,'Amazonia');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Caderno Inteligente',100.00),(2,'Caderno 1 matéria',9.80),(3,'Borracha',0.30),(4,'Pistola De Cola Quente Pequena Bivolt',19.99),(5,'Grampeador sem Grampo',24.00),(6,'Fitas Decorativas',5.50),(7,'Carimbo de Segurança',10.00),(8,'Canetas de Bambu/Sustentáveis',15.00),(9,'Kit 15 Itens Papelaria Criativa',30.50),(10,'250 Etiquetas Adesivas',10.43),(11,'Apontador com Depósito/Segurança',5.50),(12,'Estojo',14.75),(13,'Caderno 10M',18.99),(14,'Kit 10 Canetas Esferográficas Wow',15.99),(15,'Grafite',7.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-03 16:30:29
