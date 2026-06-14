CREATE DATABASE  IF NOT EXISTS `catalogo_filmes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `catalogo_filmes`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: catalogo_filmes
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `diretor`
--

DROP TABLE IF EXISTS `diretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diretor` (
  `id_diretor` int NOT NULL AUTO_INCREMENT,
  `nome_diretor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_diretor`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretor`
--

LOCK TABLES `diretor` WRITE;
/*!40000 ALTER TABLE `diretor` DISABLE KEYS */;
INSERT INTO `diretor` VALUES (1,'Steven Spielberg'),(2,'Martin Scorsese'),(3,'Quentin Tarantino'),(4,'Christopher Nolan'),(5,'James Cameron'),(6,'Pedro Almodóvar'),(7,'Bong Joon Ho'),(8,'Alfred Hitchcock'),(9,'Stanley Kubrick'),(10,'Fernando Meirelles'),(11,'Guillermo del Toro'),(12,'Wes Anderson'),(13,'Denis Villeneuve'),(14,'Sofia Coppola'),(15,'Greta Gerwig'),(16,'Ridley Scott'),(17,'David Fincher'),(18,'Peter Jackson'),(19,'George Lucas'),(20,'Tim Burton'),(21,'Akira Kurosawa'),(22,'Hayao Miyazaki'),(23,'David Lynch'),(24,'Francis Ford Coppola'),(25,'Martin McDonagh'),(26,'Jordan Peele'),(27,'Ari Aster'),(28,'Robert Eggers'),(29,'James Gunn'),(30,'Taika Waititi'),(31,'Edgar Wright'),(32,'Sam Raimi'),(33,'Zack Snyder'),(34,'Todd Phillips'),(35,'Darren Aronofsky'),(36,'Spike Lee'),(37,'Coen Brothers'),(38,'Lana Wachowski'),(39,'Alfonso Cuarón'),(40,'Alejandro González Iñárritu'),(41,'Chloé Zhao'),(42,'Ava DuVernay'),(43,'Lulu Wang'),(44,'Celine Song'),(45,'Kathryn Bigelow'),(46,'Jane Campion'),(47,'Patty Jenkins'),(48,'Emerald Fennell'),(49,'Olivia Wilde'),(50,'Nia DaCosta'),(51,'Anna Muylaert'),(52,'Laís Bodanzky'),(53,'Park Chan-wook'),(54,'David Cronenberg'),(55,'Richard Linklater'),(56,'Paul Thomas Anderson'),(57,'Robert Rodriguez'),(58,'Jon Favreau'),(59,'Marc Webb'),(60,'James Mangold');
/*!40000 ALTER TABLE `diretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elenco`
--

DROP TABLE IF EXISTS `elenco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elenco` (
  `id_ator` int NOT NULL AUTO_INCREMENT,
  `nome_ator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_ator`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elenco`
--

LOCK TABLES `elenco` WRITE;
/*!40000 ALTER TABLE `elenco` DISABLE KEYS */;
INSERT INTO `elenco` VALUES (1,'Wagner Moura'),(2,'Fernanda Montenegro'),(3,'Robert De Niro'),(4,'Al Pacino'),(5,'Meryl Streep'),(6,'Leonardo DiCaprio'),(7,'Brad Pitt'),(8,'Scarlett Johansson'),(9,'Tom Hanks'),(10,'Denzel Washington'),(11,'Morgan Freeman'),(12,'Natalie Portman'),(13,'Christian Bale'),(14,'Johnny Depp'),(15,'Samuel L. Jackson'),(16,'Anne Hathaway'),(17,'Will Smith'),(18,'Tom Cruise'),(19,'Keanu Reeves'),(20,'Jennifer Lawrence'),(21,'Selton Mello'),(22,'Alice Braga'),(23,'Rodrigo Santoro'),(24,'Lázaro Ramos'),(25,'Taís Araújo'),(26,'Matheus Nachtergaele'),(27,'Joaquin Phoenix'),(28,'Cillian Murphy'),(29,'Heath Ledger'),(30,'Gary Oldman'),(31,'Anthony Hopkins'),(32,'MadMikkelsen'),(33,'Pedro Pascal'),(34,'Oscar Isaac'),(35,'Timothée Chalamet'),(36,'Zendaya'),(37,'Emma Stone'),(38,'Margot Robbie'),(39,'Florence Pugh'),(40,'Anya Taylor-Joy'),(41,'Viola Davis'),(42,'Cate Blanchett'),(43,'Olivia Colman'),(44,'Jessica Chastain'),(45,'Amy Adams'),(46,'Saoirse Ronan'),(47,' Lupita Nyong\'o'),(48,'Helena Bonham Carter'),(49,'Emily Blunt'),(50,'Tilda Swinton'),(51,'Leandra Leal'),(52,'Camila Pitanga'),(53,'Giovanna Antonelli'),(54,'Adriana Esteves'),(55,'Marieta Severo'),(56,'Letitia Wright'),(57,'Florence Pugh'),(58,'Michelle Yeoh'),(59,'Sandra Oh'),(60,'Sigourney Weaver');
/*!40000 ALTER TABLE `elenco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elenco_filme`
--

DROP TABLE IF EXISTS `elenco_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elenco_filme` (
  `id_filme` int DEFAULT NULL,
  `id_ator` int DEFAULT NULL,
  KEY `id_filme` (`id_filme`),
  KEY `id_ator` (`id_ator`),
  CONSTRAINT `elenco_filme_ibfk_1` FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id_filme`) ON DELETE CASCADE,
  CONSTRAINT `elenco_filme_ibfk_2` FOREIGN KEY (`id_ator`) REFERENCES `elenco` (`id_ator`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elenco_filme`
--

LOCK TABLES `elenco_filme` WRITE;
/*!40000 ALTER TABLE `elenco_filme` DISABLE KEYS */;
INSERT INTO `elenco_filme` VALUES (1,15),(1,20),(2,3),(2,4),(3,4),(3,15),(4,6),(4,35),(5,8),(5,43),(6,42),(7,48),(8,23),(8,50),(9,24),(10,1),(10,2),(11,40),(12,14),(13,35),(13,36),(14,8),(15,38),(15,16),(16,13),(17,7),(17,13),(18,24),(19,15),(20,14),(20,37),(21,3),(22,7),(22,47),(23,6),(23,16),(24,19),(25,39),(26,10),(27,40),(28,34),(29,38),(30,33),(31,7),(31,11),(32,12),(33,46),(34,24),(35,19),(35,47),(36,38),(37,6),(38,37),(39,36),(40,50),(41,41),(42,6),(42,3),(43,7),(43,15),(44,13),(44,23),(45,6),(45,16),(46,42),(47,50),(48,14),(49,2),(49,1),(50,42),(51,34),(51,35),(52,24),(53,14),(54,21),(55,22),(56,23),(57,3),(57,4),(58,41),(59,40),(60,33);
/*!40000 ALTER TABLE `elenco_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmes` (
  `id_filme` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `lancamento` date DEFAULT NULL,
  `classificacao` varchar(5) DEFAULT NULL,
  `duracao_min` int NOT NULL,
  `id_diretor` int DEFAULT NULL,
  PRIMARY KEY (`id_filme`),
  KEY `id_diretor` (`id_diretor`),
  CONSTRAINT `filmes_ibfk_1` FOREIGN KEY (`id_diretor`) REFERENCES `diretor` (`id_diretor`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'Jurassic Park','1993-06-11','12',127,1),(2,'O Poderoso Chefão','1972-03-24','14',175,24),(3,'Pulp Fiction','1994-10-14','18',154,3),(4,'A Origem','2010-07-16','14',148,4),(5,'Avatar','2009-12-18','12',162,5),(6,'Tudo Sobre Minha Mãe','1999-04-16','16',101,6),(7,'Parasita','2019-05-30','16',132,7),(8,'Psicose','1960-09-08','14',109,8),(9,'O Iluminado','1980-05-23','16',146,9),(10,'Cidade de Deus','2002-08-30','18',130,10),(11,'O Labirinto do Fauno','2006-10-11','16',118,11),(12,'O Grande Hotel Budapeste','2014-03-07','14',99,12),(13,'Duna','2021-10-22','14',155,13),(14,'Encontros e Desencontros','2003-10-03','14',101,14),(15,'Barbie','2023-07-20','12',114,15),(16,'Gladiador','2000-05-05','14',155,16),(17,'Clube da Luta','1999-10-15','18',139,17),(18,'O Senhor dos Anéis: A Sociedade do Anel','2001-12-19','12',178,18),(19,'Star Wars: Uma Nova Esperança','1977-05-25','L',121,19),(20,'Edward Mãos de Tesoura','1990-12-07','L',105,20),(21,'Os Bons Companheiros','1990-09-19','16',146,2),(22,'Bastardos Inglórios','2009-10-09','18',153,3),(23,'Interstellar','2014-11-06','10',169,4),(24,'O Exterminador do Futuro 2','1991-08-30','14',137,5),(25,'A Viagem de Chihiro','2001-07-20','L',125,22),(26,'Corra!','2017-05-18','14',104,26),(27,'Hereditário','2018-06-21','16',127,27),(28,'O Farol','2019-10-31','16',109,28),(29,'Guardiões da Galáxia','2014-07-31','12',121,29),(30,'Baby Driver','2017-07-27','14',113,31),(31,'Seven: Os Sete Crimes Capitais','1995-12-15','16',127,17),(32,'O Despertar da Mente','2004-03-19','14',108,35),(33,'Faça a Coisa Certa','1989-07-21','14',120,36),(34,'Onde os Fracos Não Têm Vez','2007-11-09','16',122,37),(35,'Matrix','1999-05-21','12',136,38),(36,'Gravidade','2013-10-11','12',91,39),(37,'O Regresso','2015-12-25','16',156,40),(38,'Nomadland','2021-04-29','12',107,41),(39,'Vidas Passadas','2023-06-02','12',105,44),(40,'Guerra ao Terror','2008-09-04','16',131,45),(41,'A Cor Púrpura','1985-12-18','14',154,1),(42,'Os Infiltrados','2006-10-06','16',151,2),(43,'Django Livre','2013-01-18','16',165,3),(44,'Batman: O Cavaleiro das Trevas','2008-07-18','12',152,4),(45,'Titanic','1997-12-19','12',194,5),(46,'Volver','2006-05-19','14',121,6),(47,'Janela Indiscreta','1954-09-01','14',112,8),(48,'De Olhos Bem Fechados','1999-07-16','18',159,9),(49,'Ensaio Sobre a Cegueira','2008-09-12','16',121,10),(50,'A Forma da Água','2017-12-01','16',123,11),(51,'Blade Runner 2049','2017-10-05','14',164,13),(52,'O Senhor dos Anéis: O Retorno do Rei','2003-12-25','12',201,18),(53,'Batman','1989-06-23','12',126,20),(54,'Ran','1985-06-01','16',162,21),(55,'Meu Amigo Totoro','1988-04-16','L',86,22),(56,'Veludo Azul','1986-09-19','18',120,23),(57,'O Poderoso Chefão 2','1974-12-20','14',202,24),(58,'Nós','2019-03-21','16',116,26),(59,'Midsommar','2019-07-03','18',148,27),(60,'Homem-Aranha: No Aranhaverso','2018-12-14','L',117,29);
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id_genero` int NOT NULL AUTO_INCREMENT,
  `nome_genero` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Ação'),(2,'Comédia'),(3,'Drama'),(4,'Terror'),(5,'Ficção Científica'),(6,'Romance'),(7,'Documentário'),(8,'Animação'),(9,'Suspense'),(10,'Fantasia'),(11,'Musical'),(12,'Mistério'),(13,'Faroeste'),(14,'Aventura'),(15,'Policial'),(16,'Biografia'),(17,'Guerra'),(18,'Esporte'),(19,'História'),(20,'Família'),(21,'Animes'),(22,'Noir'),(23,'Neo-noir'),(24,'Terror Psicológico'),(25,'Gore'),(26,'Comédia Romântica'),(27,'Comédia Negra'),(28,'Slasher'),(29,'Épico'),(30,'Artes Marciais'),(31,'Musical Teatral'),(32,'Espionagem'),(33,'Cyberpunk'),(34,'Steampunk'),(35,'Pós-apocalíptico'),(36,'Melodrama'),(37,'Antologia'),(38,'Curta-metragem'),(39,'Sobrenatural'),(40,'História Real'),(41,'Drama Médico'),(42,'Ficção Científica Social'),(43,'Drama de Tribunal'),(44,'Filme de Monstro'),(45,'Sátira'),(46,'Espacial'),(47,'Sobrevivência'),(48,'Realismo Mágico'),(49,'Terror Antológico'),(50,'Paródia'),(51,'Ficção Especulativa'),(52,'Comédia Pastelão'),(53,'Drama de Época'),(54,'Super-heróis'),(55,'Fantasia Sombria'),(56,'Slasher Sobrenatural'),(57,'Policial de Mistério'),(58,'Thriller Psicológico'),(59,'Suspense Policial'),(60,'Cinema de Arte');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero_filme`
--

DROP TABLE IF EXISTS `genero_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero_filme` (
  `id_filme` int DEFAULT NULL,
  `id_genero` int DEFAULT NULL,
  KEY `id_filme` (`id_filme`),
  KEY `id_genero` (`id_genero`),
  CONSTRAINT `genero_filme_ibfk_1` FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id_filme`) ON DELETE CASCADE,
  CONSTRAINT `genero_filme_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero_filme`
--

LOCK TABLES `genero_filme` WRITE;
/*!40000 ALTER TABLE `genero_filme` DISABLE KEYS */;
INSERT INTO `genero_filme` VALUES (1,5),(1,14),(2,3),(2,15),(3,15),(3,9),(4,5),(4,9),(5,5),(5,14),(6,3),(7,3),(7,25),(8,4),(8,24),(9,4),(9,24),(10,3),(10,15),(11,10),(11,55),(12,2),(12,12),(13,5),(13,10),(14,3),(14,6),(15,2),(15,26),(16,1),(16,19),(17,3),(17,38),(18,10),(18,14),(19,5),(19,14),(20,10),(20,6),(21,3),(21,15),(22,1),(22,17),(23,5),(23,30),(24,1),(24,5),(25,8),(25,21),(26,9),(26,24),(27,4),(27,24),(28,9),(28,24),(29,1),(29,5),(30,1),(30,15),(31,15),(31,9),(32,3),(32,6),(33,3),(34,15),(34,9),(35,1),(35,5),(36,5),(36,30),(37,3),(37,31),(38,3),(39,3),(39,6),(40,17),(40,31),(41,3),(41,19),(42,15),(42,9),(43,1),(43,13),(44,1),(44,54),(45,3),(45,6),(46,3),(47,9),(47,12),(48,3),(48,9),(49,3),(49,5),(50,6),(50,10),(51,5),(51,13),(52,10),(52,14),(53,1),(53,54),(54,3),(54,19),(55,8),(55,22),(56,9),(56,12),(57,3),(57,15),(58,4),(58,24),(59,4),(59,24),(60,8),(60,54);
/*!40000 ALTER TABLE `genero_filme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-14 14:30:59
