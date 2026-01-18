/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: academia
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nivel` enum('principiante','intermedio','avanzado') NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES
(1,'Ana','Gómez','ana.gomez@example.com','2010-05-12','principiante',1,'600123456','Calle 1, Ciudad'),
(2,'Luis','Martínez','luis.martinez@example.com','2008-09-20','intermedio',1,'600234567','Calle 2, Ciudad'),
(3,'María','Pérez','maria.perez@example.com','2012-03-15','principiante',1,'600345678','Calle 3, Ciudad'),
(4,'Carlos','López','carlos.lopez@example.com','2005-11-30','avanzado',1,'600456789','Calle 4, Ciudad'),
(5,'Lucía','Sánchez','lucia.sanchez@example.com','2007-07-25','intermedio',1,'600567890','Calle 5, Ciudad'),
(6,'Javier','Ramírez','javier.ramirez@example.com','2011-01-10','principiante',1,'600678901','Calle 6, Ciudad'),
(7,'Sara','Torres','sara.torres@example.com','2009-04-18','intermedio',1,'600789012','Calle 7, Ciudad'),
(8,'Miguel','Flores','miguel.flores@example.com','2006-12-05','avanzado',1,'600890123','Calle 8, Ciudad'),
(9,'Elena','García','elena.garcia@example.com','2010-08-14','principiante',1,'600901234','Calle 9, Ciudad'),
(10,'David','Hernández','david.hernandez@example.com','2008-02-22','intermedio',1,'600012345','Calle 10, Ciudad'),
(11,'Laura','Jiménez','laura.jimenez@example.com','2011-06-11','principiante',1,'600123457','Calle 11, Ciudad'),
(12,'Fernando','Ruiz','fernando.ruiz@example.com','2005-09-01','avanzado',1,'600234568','Calle 12, Ciudad'),
(13,'Isabel','Morales','isabel.morales@example.com','2009-12-25','intermedio',1,'600345679','Calle 13, Ciudad'),
(14,'Raúl','Ortiz','raul.ortiz@example.com','2012-03-30','principiante',1,'600456780','Calle 14, Ciudad'),
(15,'Patricia','Vargas','patricia.vargas@example.com','2006-11-02','avanzado',1,'600567891','Calle 15, Ciudad'),
(16,'Sergio','Castro','sergio.castro@example.com','2008-05-17','intermedio',1,'600678902','Calle 16, Ciudad'),
(17,'Clara','Mendoza','clara.mendoza@example.com','2010-10-09','principiante',1,'600789013','Calle 17, Ciudad'),
(18,'Alberto','Rojas','alberto.rojas@example.com','2007-01-28','intermedio',1,'600890124','Calle 18, Ciudad'),
(19,'Beatriz','Navarro','beatriz.navarro@example.com','2011-04-20','principiante',1,'600901235','Calle 19, Ciudad'),
(20,'Ricardo','Vega','ricardo.vega@example.com','2005-08-12','avanzado',1,'600012346','Calle 20, Ciudad'),
(21,'Marta','Silva','marta.silva@example.com','2009-06-03','intermedio',1,'600123458','Calle 21, Ciudad'),
(22,'Diego','Molina','diego.molina@example.com','2010-02-14','principiante',1,'600234569','Calle 22, Ciudad'),
(23,'Paula','Cruz','paula.cruz@example.com','2006-09-29','avanzado',1,'600345670','Calle 23, Ciudad'),
(24,'Óscar','Guerrero','oscar.guerrero@example.com','2008-11-11','intermedio',1,'600456781','Calle 24, Ciudad'),
(25,'Natalia','Ramos','natalia.ramos@example.com','2011-07-07','principiante',1,'600567892','Calle 25, Ciudad'),
(26,'Hugo','Pardo','hugo.pardo@example.com','2005-03-21','avanzado',1,'600678903','Calle 26, Ciudad'),
(27,'Silvia','Campos','silvia.campos@example.com','2009-12-08','intermedio',1,'600789014','Calle 27, Ciudad'),
(28,'Iván','Fuentes','ivan.fuentes@example.com','2010-01-19','principiante',1,'600890125','Calle 28, Ciudad'),
(29,'Verónica','Blanco','veronica.blanco@example.com','2007-10-23','intermedio',1,'600901236','Calle 29, Ciudad'),
(30,'Tomás','Herrera','tomas.herrera@example.com','2012-05-05','principiante',1,'600012347','Calle 30, Ciudad'),
(31,'Adriana','Cabrera','adriana.cabrera@example.com','2006-12-15','avanzado',1,'600123459','Calle 31, Ciudad'),
(32,'Jorge','Reyes','jorge.reyes@example.com','2008-03-08','intermedio',1,'600234570','Calle 32, Ciudad'),
(33,'Carla','Lozano','carla.lozano@example.com','2010-07-21','principiante',1,'600345671','Calle 33, Ciudad'),
(34,'Manuel','Suárez','manuel.suarez@example.com','2005-11-18','avanzado',1,'600456782','Calle 34, Ciudad'),
(35,'Elisa','Vidal','elisa.vidal@example.com','2009-01-12','intermedio',1,'600567893','Calle 35, Ciudad'),
(36,'Andrés','Santos','andres.santos@example.com','2011-09-30','principiante',1,'600678904','Calle 36, Ciudad'),
(37,'Rosa','Marín','rosa.marin@example.com','2006-04-17','avanzado',1,'600789015','Calle 37, Ciudad'),
(38,'Víctor','Rubio','victor.rubio@example.com','2008-06-25','intermedio',1,'600890126','Calle 38, Ciudad'),
(39,'Inés','Delgado','ines.delgado@example.com','2010-03-02','principiante',1,'600901237','Calle 39, Ciudad'),
(40,'Rubén','Serrano','ruben.serrano@example.com','2007-08-14','intermedio',1,'600012348','Calle 40, Ciudad'),
(41,'Mónica','Vargas','monica.vargas@example.com','2011-11-11','principiante',1,'600123460','Calle 41, Ciudad'),
(42,'Raúl','Lara','raul.lara@example.com','2006-01-09','avanzado',1,'600234571','Calle 42, Ciudad'),
(43,'Cecilia','Ortega','cecilia.ortega@example.com','2008-05-28','intermedio',1,'600345672','Calle 43, Ciudad'),
(44,'Santiago','Márquez','santiago.marquez@example.com','2010-09-17','principiante',1,'600456783','Calle 44, Ciudad'),
(45,'Paloma','Ibáñez','paloma.ibanez@example.com','2007-02-02','intermedio',1,'600567894','Calle 45, Ciudad'),
(46,'Fabián','Cordero','fabian.cordero@example.com','2012-08-21','principiante',1,'600678905','Calle 46, Ciudad'),
(47,'Lorena','Vega','lorena.vega@example.com','2005-07-13','avanzado',1,'600789016','Calle 47, Ciudad'),
(48,'Alex','Peña','alex.pena@example.com','2009-11-29','intermedio',1,'600890127','Calle 48, Ciudad'),
(49,'Daniela','Castillo','daniela.castillo@example.com','2010-12-05','principiante',1,'600901238','Calle 49, Ciudad'),
(50,'Pablo','Campos','pablo.campos@example.com','2007-03-30','intermedio',1,'600012349','Calle 50, Ciudad');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo_manualidad` varchar(100) NOT NULL,
  `nivel` enum('basico','medio','avanzado') NOT NULL,
  `duracion_horas` int NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `id_profesor` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_profesor` (`id_profesor`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES
(1,'Pintura para Principiantes','Pintura','basico',20,150.00,'2023-09-01',1,1),
(2,'Modelado en Arcilla','Cerámica','medio',25,200.00,'2023-09-05',1,2),
(3,'Bordado Creativo','Costura','basico',15,120.00,'2023-09-10',1,3),
(4,'Pintura Avanzada','Pintura','avanzado',30,250.00,'2023-09-15',1,4),
(5,'Joyería Básica','Joyería','basico',18,180.00,'2023-09-20',1,5),
(6,'Carpintería Inicial','Carpintería','basico',35,300.00,'2023-09-25',1,6),
(7,'Cerámica Avanzada','Cerámica','avanzado',40,350.00,'2023-09-30',1,7),
(8,'Costura Avanzada','Costura','avanzado',20,200.00,'2023-10-01',1,8),
(9,'Pintura Creativa','Pintura','medio',22,180.00,'2023-10-05',1,9),
(10,'Carpintería Avanzada','Carpintería','avanzado',45,400.00,'2023-10-10',1,10),
(11,'Scrapbooking','Manualidades','basico',15,150.00,'2023-10-12',1,1),
(12,'Cerámica Infantil','Cerámica','basico',20,180.00,'2023-10-15',1,2),
(13,'Patchwork','Costura','medio',25,200.00,'2023-10-18',1,3),
(14,'Bisutería Avanzada','Joyería','avanzado',30,250.00,'2023-10-20',1,5),
(15,'Escultura en Madera','Carpintería','avanzado',40,350.00,'2023-10-22',1,6),
(16,'Dibujo Creativo','Manualidades','medio',18,170.00,'2023-10-25',1,1),
(17,'Costura Infantil','Costura','basico',15,120.00,'2023-10-28',1,8),
(18,'Cerámica Avanzada II','Cerámica','avanzado',35,320.00,'2023-10-30',1,14),
(19,'Pintura Digital','Pintura','medio',25,220.00,'2023-11-01',1,13),
(20,'Carpintería Infantil','Carpintería','basico',20,180.00,'2023-11-05',1,15);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `presupuesto` decimal(10,2) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `aula` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES
(1,'Manualidades Creativas','Cursos de pintura, scrapbooking y dibujo',5000.00,'2023-01-10',1,'Aula 1','creativas@academia.com'),
(2,'Taller de Cerámica','Cursos de cerámica, arcilla y modelado',3000.00,'2023-02-15',1,'Aula 2','ceramica@academia.com'),
(3,'Taller de Costura','Clases de costura, bordado y patchwork',4000.00,'2023-03-01',1,'Aula 3','costura@academia.com'),
(4,'Taller de Joyería','Cursos de bisutería y joyería artesanal',3500.00,'2023-04-05',1,'Aula 4','joyeria@academia.com'),
(5,'Taller de Carpintería','Cursos de carpintería básica y avanzada',6000.00,'2023-05-10',1,'Aula 5','carpinteria@academia.com');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fecha_matricula` date NOT NULL,
  `estado` enum('activa','cancelada','finalizada') NOT NULL,
  `pagado` tinyint(1) NOT NULL DEFAULT '0',
  `nota_final` decimal(4,2) DEFAULT NULL,
  `importe_total` decimal(8,2) NOT NULL,
  `metodo_pago` enum('efectivo','tarjeta','transferencia') NOT NULL,
  `fecha_baja` date DEFAULT NULL,
  `id_alumno` int unsigned DEFAULT NULL,
  `id_curso` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_alumno` (`id_alumno`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`),
  CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES
(1,'2025-12-18','cancelada',0,6.80,229.23,'transferencia','2026-01-08',9,12),
(2,'2025-09-27','activa',1,NULL,216.71,'tarjeta',NULL,11,5),
(3,'2025-09-11','finalizada',1,9.40,340.97,'tarjeta',NULL,7,16),
(4,'2025-10-06','cancelada',0,9.50,215.22,'tarjeta','2025-10-19',12,3),
(5,'2026-01-09','finalizada',1,7.00,208.18,'transferencia',NULL,6,1),
(6,'2025-11-03','cancelada',0,5.10,373.21,'tarjeta','2025-11-08',28,5),
(7,'2025-11-18','activa',0,NULL,185.71,'efectivo',NULL,48,6),
(8,'2025-11-25','finalizada',0,8.30,346.60,'transferencia',NULL,1,2),
(9,'2025-11-01','activa',0,NULL,193.10,'transferencia',NULL,3,13),
(10,'2025-10-06','finalizada',1,9.10,333.29,'tarjeta',NULL,41,7),
(11,'2025-11-12','finalizada',0,6.10,139.61,'tarjeta',NULL,20,16),
(12,'2025-10-01','finalizada',0,9.40,324.20,'tarjeta',NULL,3,18),
(13,'2025-12-10','finalizada',1,7.90,169.50,'efectivo',NULL,24,14),
(14,'2025-09-17','cancelada',1,9.80,137.26,'efectivo','2025-09-20',49,9),
(15,'2026-01-13','cancelada',1,9.50,131.75,'transferencia','2026-01-24',17,12),
(16,'2026-01-17','cancelada',0,8.20,293.49,'transferencia','2026-02-01',24,13),
(17,'2025-10-27','cancelada',0,5.20,157.28,'tarjeta','2025-11-18',7,12),
(18,'2025-10-04','cancelada',0,5.90,157.42,'efectivo','2025-11-02',48,14),
(19,'2025-11-26','activa',0,NULL,310.94,'efectivo',NULL,29,13),
(20,'2025-09-19','finalizada',1,5.10,257.46,'efectivo',NULL,15,19),
(21,'2025-12-18','finalizada',0,8.90,290.45,'efectivo',NULL,16,2),
(22,'2025-08-31','activa',0,NULL,181.92,'transferencia',NULL,42,14),
(23,'2026-01-06','finalizada',1,5.60,130.26,'transferencia',NULL,1,10),
(24,'2025-08-09','finalizada',0,7.80,221.11,'tarjeta',NULL,33,8),
(25,'2025-12-30','activa',1,NULL,199.45,'efectivo',NULL,11,6),
(26,'2025-09-20','cancelada',1,6.70,177.88,'transferencia','2025-10-05',7,3),
(27,'2025-10-15','activa',1,NULL,310.33,'tarjeta',NULL,28,5),
(28,'2025-11-08','finalizada',0,8.10,199.77,'efectivo',NULL,14,12),
(29,'2025-12-05','activa',0,NULL,215.99,'transferencia',NULL,5,7),
(30,'2025-12-22','cancelada',1,9.20,180.44,'tarjeta','2026-01-10',30,4),
(31,'2025-09-28','finalizada',0,6.50,240.12,'efectivo',NULL,19,9),
(32,'2025-11-20','activa',1,NULL,333.21,'tarjeta',NULL,6,2),
(33,'2025-10-02','cancelada',0,7.10,298.55,'efectivo','2025-10-25',8,11),
(34,'2025-12-11','activa',1,NULL,184.92,'transferencia',NULL,22,1),
(35,'2025-08-25','finalizada',1,9.00,245.67,'tarjeta',NULL,17,14),
(36,'2025-12-15','activa',0,NULL,212.44,'efectivo',NULL,12,8),
(37,'2025-11-29','cancelada',1,8.70,267.33,'transferencia','2025-12-10',4,13),
(38,'2025-09-12','activa',0,NULL,198.66,'tarjeta',NULL,21,5),
(39,'2025-10-23','finalizada',1,7.40,214.55,'efectivo',NULL,9,17),
(40,'2025-11-03','cancelada',0,6.80,230.99,'tarjeta','2025-11-15',15,6),
(41,'2025-12-02','activa',1,NULL,199.88,'transferencia',NULL,10,3),
(42,'2025-09-19','finalizada',0,8.20,310.44,'efectivo',NULL,23,12),
(43,'2025-11-26','cancelada',1,7.10,245.33,'tarjeta','2025-12-10',31,9),
(44,'2025-10-14','activa',0,NULL,180.77,'transferencia',NULL,18,16),
(45,'2025-12-10','finalizada',1,9.00,210.22,'tarjeta',NULL,25,7),
(46,'2025-11-01','activa',1,NULL,235.55,'efectivo',NULL,12,1),
(47,'2025-10-28','cancelada',0,6.90,198.44,'transferencia','2025-11-10',7,4),
(48,'2025-09-05','activa',1,NULL,321.88,'tarjeta',NULL,14,2),
(49,'2025-12-17','finalizada',0,7.80,290.11,'efectivo',NULL,20,13),
(50,'2025-11-12','cancelada',1,8.50,215.66,'transferencia','2025-12-02',4,5),
(51,'2025-12-21','activa',1,NULL,190.33,'tarjeta',NULL,1,8),
(52,'2025-09-15','finalizada',0,7.40,250.77,'efectivo',NULL,33,10),
(53,'2025-10-08','cancelada',1,9.20,270.11,'transferencia','2025-10-20',29,12),
(54,'2025-11-18','activa',0,NULL,185.44,'tarjeta',NULL,16,14),
(55,'2025-12-04','finalizada',1,8.90,312.22,'efectivo',NULL,5,6),
(56,'2025-10-30','cancelada',0,7.00,221.88,'transferencia','2025-11-15',30,11),
(57,'2025-09-27','activa',1,NULL,198.33,'tarjeta',NULL,11,9),
(58,'2025-12-06','finalizada',0,6.50,234.77,'efectivo',NULL,22,13),
(59,'2025-11-23','cancelada',1,8.10,310.55,'transferencia','2025-12-05',9,16),
(60,'2025-12-14','activa',1,NULL,197.44,'tarjeta',NULL,21,7),
(61,'2025-11-05','activa',1,NULL,210.22,'tarjeta',NULL,13,3),
(62,'2025-10-12','finalizada',0,7.80,295.44,'efectivo',NULL,19,12),
(63,'2025-12-01','cancelada',1,8.50,242.33,'transferencia','2025-12-20',2,7),
(64,'2025-09-25','activa',1,NULL,198.77,'tarjeta',NULL,24,6),
(65,'2025-10-20','finalizada',1,9.10,310.55,'efectivo',NULL,28,5),
(66,'2025-12-08','activa',0,NULL,187.66,'transferencia',NULL,6,14),
(67,'2025-11-14','cancelada',1,7.70,220.88,'tarjeta','2025-11-29',8,9),
(68,'2025-12-11','activa',1,NULL,199.44,'efectivo',NULL,17,8),
(69,'2025-09-18','finalizada',0,6.90,275.33,'transferencia',NULL,31,10),
(70,'2025-12-03','cancelada',1,9.00,245.77,'tarjeta','2025-12-20',9,16),
(71,'2025-11-09','activa',0,NULL,198.88,'efectivo',NULL,4,4),
(72,'2025-12-05','finalizada',1,7.40,312.33,'transferencia',NULL,23,11),
(73,'2025-10-17','cancelada',0,8.20,220.44,'tarjeta','2025-11-01',12,13),
(74,'2025-12-12','activa',1,NULL,199.55,'efectivo',NULL,7,1),
(75,'2025-09-30','finalizada',1,7.90,310.11,'transferencia',NULL,16,6),
(76,'2025-11-21','activa',1,NULL,180.22,'tarjeta',NULL,1,2),
(77,'2025-12-16','cancelada',0,6.80,230.33,'efectivo','2025-12-29',18,5),
(78,'2025-10-03','activa',1,NULL,199.44,'transferencia',NULL,14,12),
(79,'2025-11-27','finalizada',1,8.70,280.55,'tarjeta',NULL,25,13),
(80,'2025-12-09','activa',0,NULL,190.66,'efectivo',NULL,22,9),
(81,'2025-12-01','activa',1,NULL,210.44,'transferencia',NULL,5,1),
(82,'2025-10-18','finalizada',0,7.50,275.33,'efectivo',NULL,20,14),
(83,'2025-11-02','cancelada',1,8.80,245.22,'tarjeta','2025-11-15',6,6),
(84,'2025-12-06','activa',1,NULL,199.77,'efectivo',NULL,9,2),
(85,'2025-10-25','finalizada',1,9.00,310.11,'transferencia',NULL,16,3),
(86,'2025-11-19','activa',0,NULL,180.88,'tarjeta',NULL,12,7),
(87,'2025-12-08','cancelada',1,7.60,220.55,'efectivo','2025-12-20',24,8),
(88,'2025-09-29','activa',1,NULL,199.33,'transferencia',NULL,28,5),
(89,'2025-11-11','finalizada',0,8.10,310.44,'tarjeta',NULL,3,6),
(90,'2025-12-15','cancelada',1,9.20,245.66,'efectivo','2025-12-28',11,10),
(91,'2025-10-09','activa',1,NULL,198.44,'transferencia',NULL,1,12),
(92,'2025-11-23','finalizada',1,7.30,275.22,'tarjeta',NULL,19,9),
(93,'2025-12-13','cancelada',0,8.50,230.77,'efectivo','2025-12-30',21,13),
(94,'2025-09-21','activa',1,NULL,199.88,'transferencia',NULL,7,11),
(95,'2025-12-16','finalizada',1,7.90,310.55,'tarjeta',NULL,14,4),
(96,'2025-10-07','activa',0,NULL,180.22,'efectivo',NULL,17,6),
(97,'2025-11-28','cancelada',1,6.70,230.44,'transferencia','2025-12-10',6,8),
(98,'2025-12-05','activa',1,NULL,199.66,'tarjeta',NULL,25,3),
(99,'2025-09-26','finalizada',0,7.80,275.55,'efectivo',NULL,9,2),
(100,'2025-12-18','activa',1,NULL,210.33,'transferencia',NULL,12,1);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `especialidad` varchar(100) NOT NULL,
  `fecha_contratacion` date NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `id_departamento` int unsigned DEFAULT NULL,
  `id_supervisor` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `id_departamento` (`id_departamento`),
  KEY `id_supervisor` (`id_supervisor`),
  CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`),
  CONSTRAINT `profesor_ibfk_2` FOREIGN KEY (`id_supervisor`) REFERENCES `profesor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES
(1,'Ana','García','ana@academia.com','Pintura','2023-01-15',1200.00,1,1,NULL),
(2,'Luis','Martínez','luis@academia.com','Cerámica','2023-02-10',1300.00,1,2,1),
(3,'Elena','Rodríguez','elena@academia.com','Costura','2023-03-05',1250.00,1,3,1),
(4,'Carlos','López','carlos@academia.com','Pintura','2023-03-20',1100.00,1,1,1),
(5,'Marta','Sánchez','marta@academia.com','Joyería','2023-04-15',1400.00,1,4,2),
(6,'Pedro','Gómez','pedro@academia.com','Carpintería','2023-05-10',1500.00,1,5,2),
(7,'Lucía','Fernández','lucia@academia.com','Cerámica','2023-06-01',1250.00,1,2,2),
(8,'Jorge','Ramírez','jorge@academia.com','Costura','2023-06-15',1150.00,1,3,3),
(9,'Sofía','Gómez','sofia@academia.com','Pintura','2023-07-01',1200.00,1,1,4),
(10,'Diego','Vargas','diego@academia.com','Carpintería','2023-07-10',1450.00,1,5,6),
(11,'Laura','Castillo','laura@academia.com','Joyería','2023-08-01',1300.00,1,4,5),
(12,'Iván','Moreno','ivan@academia.com','Costura','2023-08-05',1200.00,1,3,3),
(13,'Patricia','Ruiz','patricia@academia.com','Pintura','2023-08-10',1250.00,1,1,4),
(14,'Fernando','Díaz','fernando@academia.com','Cerámica','2023-08-15',1300.00,1,2,7),
(15,'Natalia','Vega','natalia@academia.com','Carpintería','2023-08-20',1400.00,1,5,6);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'academia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-01-18 22:18:40
