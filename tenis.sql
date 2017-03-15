-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: tenis
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `primer_ap` varchar(50) NOT NULL,
  `segundo_ap` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `id_domicilio` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_cliente_domicilio1_idx` (`id_domicilio`),
  CONSTRAINT `fk_cliente_domicilio1` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilio` (`id_domicilio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'HECTOR','DE HARO','CASTILLO','de.haro.revolver@hotmail.com',2),(2,'ALEJANDRO','FRANCO','ROJAS','chore_jas_mon@hotmail.com',4),(3,'ANA LAURA','GIL','MALDONADO','hannah_bloosom@hotmail.com',6),(4,'KAREN ADRIANA','HERMOSILLO','GARCIA','guerita_khg@hotmail.com',8),(5,'JOSE ROGELIO','HERNANDEZ','LOPEZ','j.rogelio.hdz.lpz@hotmail.com',10),(6,'JESUS ALEJANDRO','HERNANDEZ','MEJIA','j.alejandrohm@gmail.com',12),(7,'LUIS CARLOS','HERNANDEZ','MEJIA','lucas.bond@hotmail.com',14),(8,'OSCAR','JIMENEZ','GALLEGOS','b-goldberg@hotmail.com',16),(9,'JOSE DOMINGO','JOAQUIN','SANDOVAL','joaquinbu@live.com.mx',18),(10,'MAURICIO','LANDERO','REYES','roggers66@hotmail.com',20),(11,'JUAN ANTONIO','LINARES','CERON','cero-jalc@hotmail.com',22),(12,'NICOLAS','MARTINEZ','LUNA','demenstein@hotmail.com',24),(13,'JESUS ADRIAN','MARTINEZ','PENA','hakdrian@hotmail.com',26),(14,'MARIO EDUARDO','MORA','REYES','starguitar02@gmail.com',28),(15,'ADRIANA','MORALES','MACEDA','adriux9@hotmail.com',30),(16,'ABRAHAM','ORTEGA','GARCIA','aortega@usitio.com',31),(17,'JAIME','PACHECO','ESPINOSA','james009.7@hotmail.com',1),(18,'FRANCISCO XAVIER','PALMA','BELTRAN','churropalma@hotmail.com',3),(19,'RODRIGO ISRAEL','PEREZ','GONZALEZ','sagitarius_ilusion@hotmail.com',5),(20,'MIGUEL ANGEL','PIEDRAS','CARRILLO','mpiedras90@hotmail.com',7),(21,'JUAN ALFREDO','REYES','HERNANDEZ','alfred_politecnico@hotmail.com',9),(22,'LUIS EDUARDO','SALCEDO','VAZQUEZ','edusv88@hotmail.com',11),(23,'OLIVER CARLOS','STREVEL','PEREZ','carlos56_dal@hotmail.com',13),(24,'OMAR','VARGAS','BONILLA','omarva_16@hotmail.com',15),(25,'JORGE AARON','VAZQUEZ','FLORES','aazher64@hotmail.com',17),(26,'DANIEL AUGUSTO','VAZQUEZ','NIEVES','megadanx4@msn.com',19),(27,'DAYANA MARISOL','VAZQUEZ','RESENDIZ','anayad_03@hotmail.com',21);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `producto_sku` int(11) NOT NULL,
  `cliente_id_cliente` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`producto_sku`,`cliente_id_cliente`),
  KEY `fk_producto_has_cliente_cliente1_idx` (`cliente_id_cliente`),
  KEY `fk_producto_has_cliente_producto1_idx` (`producto_sku`),
  CONSTRAINT `fk_producto_has_cliente_cliente1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_has_cliente_producto1` FOREIGN KEY (`producto_sku`) REFERENCES `producto` (`sku`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,2,'2017-11-03',1),(1,4,'2017-11-03',1),(2,13,'2017-11-03',1),(3,4,'2017-11-03',1),(3,9,'2017-11-03',1),(8,12,'2017-11-03',1),(9,2,'2017-11-03',1),(10,20,'2017-11-03',1),(11,2,'2017-11-03',1),(11,20,'2017-11-03',1),(12,1,'2017-11-03',1),(12,8,'2017-11-03',1),(12,12,'2017-11-03',1),(13,27,'2017-11-03',1),(14,2,'2017-11-03',1),(15,7,'2017-11-03',1),(19,23,'2017-11-03',1),(21,3,'2017-11-03',1),(23,12,'2017-11-03',1),(30,3,'2017-11-03',1),(35,12,'2017-11-03',1),(39,12,'2017-11-03',1);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp`
--

DROP TABLE IF EXISTS `cp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp` (
  `cp` int(11) NOT NULL,
  `colonia` varchar(50) DEFAULT NULL,
  `ut` varchar(12) DEFAULT NULL,
  `id_delegacion` int(11) NOT NULL,
  PRIMARY KEY (`cp`),
  KEY `fk_cp_delegacion1_idx` (`id_delegacion`),
  CONSTRAINT `fk_cp_delegacion1` FOREIGN KEY (`id_delegacion`) REFERENCES `delegacion` (`id_delegacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp`
--

LOCK TABLES `cp` WRITE;
/*!40000 ALTER TABLE `cp` DISABLE KEYS */;
INSERT INTO `cp` VALUES (1540,'Providencia',NULL,1),(1700,'Tecalcapa',NULL,1),(2600,'Prohogar',NULL,2),(2640,'Obrero Popular',NULL,2),(2810,'Victoria Democracias',NULL,2),(3530,'Villa de Cortez',NULL,3),(3540,'Del Carmen',NULL,3),(4200,'Campestre Churubusco',NULL,4),(4239,'Ermita Churubusco',NULL,4),(5020,'Loma del Padre',NULL,5),(5030,'San Pedro',NULL,5),(5128,'Cumbres Reforma',NULL,5),(6030,'Tabacalera',NULL,6),(6050,'Centro',NULL,6),(6100,'Hipodromo',NULL,6),(6140,'Condesa',NULL,6),(7010,'Rosas Tepeyac',NULL,7),(7070,'Martin Carrera',NULL,7),(7140,'Forestal',NULL,7),(8040,'Talleres',NULL,8),(8610,'Zapotla',NULL,8),(8620,'Los Reyes',NULL,8),(8700,'Juventino Rosas',NULL,8),(8800,'Santiago Sur',NULL,8),(9080,'Xopa',NULL,9),(9430,'Apatlaco',NULL,9),(9470,'Sinatel',NULL,9),(10040,'Santa Teresa',NULL,10),(10810,'San Francisco',NULL,10),(11000,'Chapultepec',NULL,11);
/*!40000 ALTER TABLE `cp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delegacion`
--

DROP TABLE IF EXISTS `delegacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delegacion` (
  `id_delegacion` int(11) NOT NULL,
  `nombre_delegacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delegacion`
--

LOCK TABLES `delegacion` WRITE;
/*!40000 ALTER TABLE `delegacion` DISABLE KEYS */;
INSERT INTO `delegacion` VALUES (1,'Alvaro Obregon'),(2,'Azcapotzalco'),(3,'Benito Juarez'),(4,'Coyoacan'),(5,'Cuajimalpa de Morelos'),(6,'Cuahutemoc'),(7,'Gustavo A. Madero'),(8,'Iztacalco'),(9,'Iztapalapa'),(10,'Magdalena Contreras'),(11,'Miguel Hidalgo'),(12,'Milpa Alta'),(13,'Tlahuac'),(14,'Tlalpan'),(15,'Venustiano Carranza'),(16,'Xochimilco');
/*!40000 ALTER TABLE `delegacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domicilio` (
  `id_domicilio` int(11) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `num` varchar(15) NOT NULL,
  `cp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_domicilio`),
  KEY `fk_domicilio_cp1_idx` (`cp`),
  CONSTRAINT `fk_domicilio_cp1` FOREIGN KEY (`cp`) REFERENCES `cp` (`cp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
INSERT INTO `domicilio` VALUES (1,'Andares','100',7010),(2,'Lagos y rios','2A',10040),(3,'Naranjal','423',6050),(4,'Guadalupe Victoria','300',8700),(5,'Calle A23','300',6140),(6,'Transportistas','9823',9080),(7,'Minero Metalurgicos','183',6030),(8,'Arboledas','6140',6140),(9,'Cook','0192',5020),(10,'Hawaii','1234',1540),(11,'Esperanza','4200',5128),(12,'Lago Ness','500',2810),(13,'Reforma','2983a',6100),(14,'Isaac Newton','1823',7010),(15,'Calle Amanecer','1234',8040),(16,'Camino Serrano','192',6100),(17,'Diego Rivera','1123',5128),(18,'Asuncion','123',8620),(19,'Canal de cobre','12',5020),(20,'Europa','1123',8610),(21,'Jupiter','234',1700),(22,'Pinos','1203',6140),(23,'Concepcion','1293',6050),(24,'Cuba','113',6030),(25,'Albert Einstein','234',8040),(26,'Marte','12',3530),(27,'Libertad','123a',11000),(28,'Linares ','1123',9080),(29,'Benito Juarez','1123',6140),(30,'Las Aguilas','134',9470),(31,'Pozo 90','102',10040);
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `primer_ap` varchar(50) NOT NULL,
  `segundo_ap` varchar(50) DEFAULT NULL,
  `curp` varchar(18) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `id_domicilio` int(11) NOT NULL,
  `nivel_escolar` varchar(45) NOT NULL,
  `tipo` int(11) NOT NULL,
  `salario` float NOT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `fk_empleado_domicilio1_idx` (`id_domicilio`),
  CONSTRAINT `fk_empleado_domicilio1` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilio` (`id_domicilio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'NURIA','AVILA','COLIN','AQW131WSS12SD1','AQW131WSS','55341234',1,'Preparatoria',1,5000),(2,'BRENDA','BLANCO','ALVAREZ','AMJ182NA131AJQ','AMJ182NA1','12543678',2,'Secundaria',1,5000),(3,'ERICK','COLIN','CRUZ','EUWEUQ12NJS21J','EUWEUQ11','3459123',3,'Secundaria',1,4000),(4,'PEDRO','CRUZ','CABALLERO','PEWQWQW12QDCD1','PEWQWQW12','02931231',4,'Preparatoria',1,6000),(5,'YAMIL OMAR','DELGADO','GONZALEZ','YOWQ12WQDQWQD1','YOWQ12WQD','293488132',5,'Preparatoria',1,5000),(6,'BLANCA LISET','FLORES','RAMIREZ','BLQSDQ12SQSSAD','BLQSDQ12S','273626363',6,'Preparatoria',1,7000),(7,'LINDA ISABEL','FUENTES','ANGELES','LISQASQ12SQS1A','LISQASQ12','382712312',7,'Preparatoria',1,7500),(8,'VICTOR IVAN','OLVERA','PADILLA','VI12J1NJNQNJQN','VI12J1NJ','92913949',8,'Secundaria',1,7500),(9,'ARTURO','PACHECO','ANTONIO','AR192AJAN1N12JN1','AR192AJAN','9182831',9,'Secundaria',1,6000),(10,'LUIS EDUARDO','SALCEDO','VAZQUEZ','LU12JM1N2WJ1NJ1','LU12JM1N2W','19239192',10,'Secundaria',1,5500),(11,'OLIVER CARLOS','STREVEL','PEREZ','IL0181NBH1BJ2B1','IL0181NBH1','29172134',11,'Secundaria',1,5500),(12,'FERNANDO','GOMEZ','MENESES','FENJ1NJANJ1NJN12W','FENJ1NJANJ','29192123',12,'Preparatoria',1,7500),(13,'AGUSTIN URIEL','ARVIZU','MENDOZA','AAJANJQNJHWNQNJ11','FENJ1NJAN','291731712',13,'Secundaria',1,6500),(14,'JOSE ALEJANDRO','CRUZ','HERNANDEZ','JOQEMK12MKQMAKA','JOQEMK12','2312113213',14,'Secundaria',1,6500),(15,'LUIS ALBERTO','BAUTISTA','MORA','LUDNJQNQUJ12NJN','LUDNJQNQUJ','98238312',15,'Secundaria',1,7500),(16,'FRANCISCO JAVIER','DIAZ','HERNANDEZ','FRJNED1I2N2N1J','FRJNED1I','30986737',16,'Secundaria',1,8500),(17,'JOSE ANTONIO','ESTRADA','PAVIA','JO1JSSMKAMKASM9','JO1JSSMKA','22818381',17,'Preparatoria',1,6500),(18,'HUGO MICHELLE','FLORES','MONDRAGON','HUQIWI1N2IAMIAAQ2','HUQIWI1N','21292199',18,'Preparatoria',1,7500),(19,'JOSE EDUARDO','FRAGOSO','COLIN','JEDNAQNJI12JANJQ11','JEDNAQNJ','293199232',19,'Preparatoria',1,7500),(20,'MIGUEL SHAMID','GALVAN','ARCE','MIAQMKM1JM121J21J','MIAQMKM1','927371717',20,'Preparatoria',1,7500);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_status`
--

DROP TABLE IF EXISTS `empleado_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado_status` (
  `id_empleado` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `fecha_status` date DEFAULT NULL,
  PRIMARY KEY (`id_empleado`,`id_status`),
  KEY `fk_empleado_has_status_status1_idx` (`id_status`),
  KEY `fk_empleado_has_status_empleado1_idx` (`id_empleado`),
  CONSTRAINT `fk_empleado_has_status_empleado1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleado_has_status_status1` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_status`
--

LOCK TABLES `empleado_status` WRITE;
/*!40000 ALTER TABLE `empleado_status` DISABLE KEYS */;
INSERT INTO `empleado_status` VALUES (1,1,'2017-11-03'),(2,1,'2017-11-03'),(3,2,'2017-11-03'),(4,1,'2017-11-03'),(5,1,'2017-11-03'),(6,1,'2017-11-03'),(7,1,'2017-11-02'),(8,1,'2017-11-03'),(9,1,'2017-11-03'),(10,1,'2017-11-03'),(11,1,'2017-11-03'),(12,1,'2017-11-03'),(13,1,'2017-11-01'),(14,2,'2017-11-03'),(15,1,'2017-11-03'),(16,1,'2017-11-03'),(17,2,'2017-11-03'),(18,1,'2017-11-03'),(19,1,'2017-11-03'),(20,1,'2017-11-03');
/*!40000 ALTER TABLE `empleado_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `existencia`
--

DROP TABLE IF EXISTS `existencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `existencia` (
  `id_sucursal` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_existencia` date NOT NULL,
  PRIMARY KEY (`id_sucursal`,`id_producto`),
  KEY `fk_sucursal_has_producto_producto1_idx` (`id_producto`),
  KEY `fk_sucursal_has_producto_sucursal1_idx` (`id_sucursal`),
  CONSTRAINT `fk_sucursal_has_producto_producto1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`sku`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sucursal_has_producto_sucursal1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `existencia`
--

LOCK TABLES `existencia` WRITE;
/*!40000 ALTER TABLE `existencia` DISABLE KEYS */;
INSERT INTO `existencia` VALUES (1,1,'2017-11-03'),(1,2,'2017-11-03'),(1,3,'2017-11-03'),(1,4,'2017-11-03'),(1,5,'2017-11-03'),(1,6,'2017-11-03'),(1,7,'2017-11-03'),(1,8,'2017-11-03'),(1,9,'2017-11-03'),(1,10,'2017-11-03'),(1,11,'2017-11-03'),(1,12,'2017-11-03'),(1,13,'2017-11-03'),(1,14,'2017-11-03'),(1,15,'2017-11-03'),(1,16,'2017-11-03'),(1,17,'2017-11-03'),(1,18,'2017-11-03'),(1,19,'2017-11-03'),(1,20,'2017-11-03'),(1,21,'2017-11-03'),(1,22,'2017-11-03'),(1,23,'2017-11-03'),(1,24,'2017-11-03'),(1,25,'2017-11-03'),(1,26,'2017-11-03'),(1,27,'2017-11-03'),(1,28,'2017-11-03'),(1,29,'2017-11-03'),(1,30,'2017-11-03'),(1,31,'2017-11-03'),(1,32,'2017-11-03'),(1,33,'2017-11-03'),(1,34,'2017-11-03'),(1,35,'2017-11-03'),(1,36,'2017-11-03'),(1,37,'2017-11-03'),(1,38,'2017-11-03'),(1,39,'2017-11-03'),(2,1,'2017-11-03'),(2,2,'2017-11-03'),(2,3,'2017-11-03'),(2,4,'2017-11-03'),(2,5,'2017-11-03'),(2,6,'2017-11-03'),(2,7,'2017-11-03'),(2,8,'2017-11-03'),(2,9,'2017-11-03'),(2,10,'2017-11-03'),(2,11,'2017-11-03'),(2,12,'2017-11-03'),(2,13,'2017-11-03'),(2,14,'2017-11-03'),(2,15,'2017-11-03'),(2,16,'2017-11-03'),(2,17,'2017-11-03'),(2,18,'2017-11-03'),(2,19,'2017-11-03'),(2,20,'2017-11-03'),(2,21,'2017-11-03'),(2,22,'2017-11-03'),(2,23,'2017-11-03'),(2,24,'2017-11-03'),(2,25,'2017-11-03'),(2,26,'2017-11-03'),(2,27,'2017-11-03'),(2,28,'2017-11-03'),(2,29,'2017-11-03'),(2,30,'2017-11-03'),(2,31,'2017-11-03'),(2,32,'2017-11-03'),(2,33,'2017-11-03'),(2,34,'2017-11-03'),(2,35,'2017-11-03'),(2,36,'2017-11-03'),(2,37,'2017-11-03'),(2,38,'2017-11-03'),(2,39,'2017-11-03');
/*!40000 ALTER TABLE `existencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nombre_marca` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Nike'),(2,'ADIDAS'),(3,'Vans'),(4,'Supra'),(5,'Tiberland'),(6,'Converse'),(7,'DC'),(8,'Puma'),(9,'Jordan'),(10,'Under Armor'),(11,'Otro');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `sku` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(20) NOT NULL,
  `descripcion` varchar(140) DEFAULT NULL,
  `precio` float NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `seccion_idseccion` int(11) NOT NULL,
  `tipo_idtipo` int(11) NOT NULL,
  `marca_idmarca` int(11) NOT NULL,
  PRIMARY KEY (`sku`),
  KEY `fk_producto_seccion1_idx` (`seccion_idseccion`),
  KEY `fk_producto_tipo1_idx` (`tipo_idtipo`),
  KEY `fk_producto_marca1_idx` (`marca_idmarca`),
  CONSTRAINT `fk_producto_marca1` FOREIGN KEY (`marca_idmarca`) REFERENCES `marca` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_seccion1` FOREIGN KEY (`seccion_idseccion`) REFERENCES `seccion` (`id_seccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_tipo1` FOREIGN KEY (`tipo_idtipo`) REFERENCES `tipo` (`id_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Air Huarache','Azul,negro,bota',2399,NULL,1,2,1),(2,'Air Jordan XXXI','Negro, Bota',3699,NULL,1,2,9),(3,'Air Force 1','Camuflaje, Negro, gris',1699,NULL,1,2,1),(4,'Gorra True Red Label','Azul',699,NULL,1,1,1),(5,'Air Force 1','Camuflaje, Negro, gris',1699,NULL,1,2,1),(6,'Air Max 90 LRT','Negro,Blanco',1299,NULL,2,2,1),(7,'Air Max Thea','Negro, Blanco',999,NULL,2,2,1),(8,'Drose 7 Primeknit','Negro,Blanco',4499,NULL,1,2,2),(9,'Stan Smith boost','Blanco, Verde',2599,NULL,1,2,2),(10,'Super Star Boost','Negro,Blanco',2699,NULL,1,2,2),(11,'Gazele','Naranja,Azul',1799,NULL,1,2,2),(12,'Gazele','Rosa, Gris',1699,NULL,3,2,2),(13,'Legging Originals','Negro,Blanco',799,NULL,3,3,2),(14,'Stan Smith','Blanco, Rosa',649,NULL,2,2,2),(15,'SuperStar 3601','Estampado, Gris, Rojo',1199,NULL,2,2,2),(16,'Choclo negro Conv','Negro, Blanco',899,NULL,1,2,6),(17,'Choclo negro Conv','Negro, Blanco',699,NULL,3,2,6),(18,'Chuck Taylor Allst','Negro, Blanco',1699,NULL,1,2,6),(19,'Chuck Taylor Allst','Rojo',1699,NULL,1,2,6),(20,'Chuck Taylor Allst','Rojo',1699,NULL,3,2,6),(21,'Old Skool','Negro',999,NULL,1,2,3),(22,'Authentic','Negro,Gris',999,NULL,1,2,3),(23,'Old Skool Premium','Rojo,Blanco',1649,NULL,1,2,3),(24,'Classic Slip On','Negro,Gris',1299,NULL,3,2,3),(25,'Old Skool','Purpura',949,NULL,3,2,3),(26,'Authentic','Negro,Gris',999,NULL,1,2,3),(27,'Authentic LO PRO','Salmon,',749,NULL,3,2,3),(28,'Authentic','Negro,Gris',999,NULL,1,2,3),(29,'Vikky Platform','Azul',1499,NULL,1,2,8),(30,'Clyde Premium ','Negro',1899,NULL,3,2,8),(31,'Clyde','Rojo',1899,NULL,1,2,8),(32,'Rebel Mid','Gris',1499,NULL,1,2,8),(33,'Class Sport','Negro',899,NULL,1,4,2),(34,'Classic Camo','Camuflaje',699,NULL,1,4,2),(35,'Bp Tricolor','Negro',799,NULL,1,4,2),(36,'Natick-24 Liter','Rojo',1499,NULL,1,4,5),(37,'Right Pack','Rojo',799,NULL,1,4,5),(38,'Janspot Superbreak','Estampado',469,NULL,1,4,11),(39,'Cangurera Fifth','Negro',299,NULL,1,6,2);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion`
--

DROP TABLE IF EXISTS `seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seccion` (
  `id_seccion` int(11) NOT NULL,
  `nombre_seccion` varchar(25) NOT NULL,
  PRIMARY KEY (`id_seccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
INSERT INTO `seccion` VALUES (1,'Caballero'),(2,'Niño'),(3,'Dama');
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Activo'),(2,'Inactivo'),(3,'Dado de Alta');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `nombre_sucursal` varchar(30) NOT NULL,
  `id_domicilio` int(11) NOT NULL,
  `id_gerente` int(11) NOT NULL,
  PRIMARY KEY (`id_sucursal`),
  KEY `fk_sucursal_domicilio2_idx` (`id_domicilio`),
  KEY `fk_sucursal_empleado1_idx` (`id_gerente`),
  CONSTRAINT `fk_sucursal_domicilio2` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilio` (`id_domicilio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sucursal_empleado1` FOREIGN KEY (`id_gerente`) REFERENCES `empleado` (`id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'SneackerLand Nte.',21,4),(2,'SneackerLand pte.',13,9),(3,'SneackerLand centro',18,15);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talla`
--

DROP TABLE IF EXISTS `talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talla` (
  `id_talla` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_talla` varchar(45) NOT NULL,
  PRIMARY KEY (`id_talla`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talla`
--

LOCK TABLES `talla` WRITE;
/*!40000 ALTER TABLE `talla` DISABLE KEYS */;
INSERT INTO `talla` VALUES (1,'Chica'),(2,'Mediana'),(3,'Grande'),(4,'Unitalla'),(5,'15'),(6,'16'),(7,'17'),(8,'18'),(9,'19'),(10,'20'),(11,'21'),(12,'22'),(13,'23'),(14,'24'),(15,'25'),(16,'26'),(17,'27'),(18,'28'),(19,'29'),(20,'30'),(21,'31'),(22,'32'),(23,'33'),(24,'Otro');
/*!40000 ALTER TABLE `talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talla_producto`
--

DROP TABLE IF EXISTS `talla_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talla_producto` (
  `talla_num_talla` int(11) NOT NULL,
  `producto_sku` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`talla_num_talla`,`producto_sku`),
  KEY `fk_talla_has_producto_producto1_idx` (`producto_sku`),
  KEY `fk_talla_has_producto_talla1_idx` (`talla_num_talla`),
  CONSTRAINT `fk_talla_has_producto_producto1` FOREIGN KEY (`producto_sku`) REFERENCES `producto` (`sku`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_talla_has_producto_talla1` FOREIGN KEY (`talla_num_talla`) REFERENCES `talla` (`id_talla`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talla_producto`
--

LOCK TABLES `talla_producto` WRITE;
/*!40000 ALTER TABLE `talla_producto` DISABLE KEYS */;
INSERT INTO `talla_producto` VALUES (1,13,5),(2,13,5),(3,13,5),(4,4,300),(4,33,100),(4,34,100),(4,35,100),(4,36,100),(4,37,100),(4,38,100),(4,39,100),(11,3,5),(11,5,5),(11,6,5),(11,7,5),(11,8,5),(11,10,5),(11,11,5),(11,14,5),(11,15,5),(11,16,5),(11,17,5),(11,18,5),(11,19,5),(11,21,5),(12,3,5),(12,5,5),(12,6,5),(12,7,5),(12,8,5),(12,10,5),(12,11,5),(12,14,5),(12,15,5),(12,16,5),(12,17,5),(12,18,5),(12,19,5),(12,21,5),(13,3,5),(13,5,5),(13,6,5),(13,7,5),(13,8,5),(13,10,5),(13,11,5),(13,14,5),(13,15,5),(13,16,5),(13,17,5),(13,18,5),(13,19,5),(13,21,5),(14,3,5),(14,5,5),(14,6,5),(14,7,5),(14,8,5),(14,10,5),(14,11,5),(14,14,5),(14,15,5),(14,16,5),(14,17,5),(14,18,5),(14,19,5),(14,21,5),(15,3,5),(15,5,5),(15,6,5),(15,7,5),(15,8,5),(15,10,5),(15,11,5),(15,14,5),(15,15,5),(15,16,5),(15,17,5),(15,18,5),(15,19,5),(15,21,5),(16,1,5),(16,2,4),(16,3,5),(16,5,5),(16,6,5),(16,7,5),(16,8,5),(16,10,5),(16,12,5),(16,14,5),(16,15,5),(16,16,5),(16,17,5),(16,18,5),(16,20,5),(16,22,5),(16,23,5),(16,24,5),(16,25,5),(16,26,5),(16,27,5),(16,28,5),(16,29,5),(16,30,5),(16,31,5),(16,32,5),(17,1,5),(17,2,4),(17,3,5),(17,5,5),(17,6,5),(17,7,5),(17,8,5),(17,10,5),(17,12,5),(17,14,5),(17,15,5),(17,16,5),(17,17,5),(17,18,5),(17,20,5),(17,22,5),(17,23,5),(17,24,5),(17,25,5),(17,26,5),(17,27,5),(17,28,5),(17,29,5),(17,30,5),(17,31,5),(17,32,5),(18,1,5),(18,2,4),(18,3,5),(18,5,5),(18,6,5),(18,7,5),(18,8,5),(18,10,5),(18,12,5),(18,14,5),(18,15,5),(18,16,5),(18,17,5),(18,18,5),(18,20,5),(18,22,5),(18,23,5),(18,24,5),(18,25,5),(18,26,5),(18,27,5),(18,28,5),(18,29,5),(18,30,5),(18,31,5),(18,32,5),(19,1,5),(19,2,4),(19,3,5),(19,5,5),(19,6,5),(19,7,5),(19,8,5),(19,10,5),(19,12,5),(19,14,5),(19,15,5),(19,16,5),(19,17,5),(19,18,5),(19,20,5),(19,22,5),(19,23,5),(19,24,5),(19,25,5),(19,26,5),(19,27,5),(19,28,5),(19,29,5),(19,30,5),(19,31,5),(19,32,5),(20,1,5),(20,2,4),(20,3,5),(20,5,5),(20,6,5),(20,7,5),(20,8,5),(20,10,5),(20,12,5),(20,14,5),(20,15,5),(20,16,5),(20,17,5),(20,18,5),(20,20,5),(20,22,5),(20,23,5),(20,24,5),(20,25,5),(20,26,5),(20,27,5),(20,28,5),(20,29,5),(20,30,5),(20,31,5),(20,32,5),(21,1,5),(21,2,4),(21,3,5),(21,5,5),(21,6,5),(21,7,5),(21,8,5),(21,10,5),(21,12,5),(21,14,5),(21,15,5),(21,16,5),(21,17,5),(21,18,5),(21,20,5),(21,22,5),(21,23,5),(21,24,5),(21,25,5),(21,26,5),(21,27,5),(21,28,5),(21,29,5),(21,30,5),(21,31,5),(21,32,5);
/*!40000 ALTER TABLE `talla_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'Gorras'),(2,'Tenis'),(3,'Ropa'),(4,'Mochilas'),(5,'Accesorio'),(6,'Otros');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_nivel_usuario` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `empleado_id_empleado` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_usuario_usuario_nivel1_idx` (`id_nivel_usuario`),
  KEY `fk_usuario_empleado1_idx` (`empleado_id_empleado`),
  CONSTRAINT `fk_usuario_empleado1` FOREIGN KEY (`empleado_id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_usuario_nivel1` FOREIGN KEY (`id_nivel_usuario`) REFERENCES `usuario_nivel` (`id_nivel_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,2,'nuria_12314@hotmail.com','nuria1',1),(2,1,'brendaloka_1990@hotmail.com','bren1',2),(3,2,'erickson_1990@hotmail.com','erick1',3),(4,2,'pedro_cruz@hotmail.com','pedro1',4),(5,2,'yamil_odel@hotmail.com','yam1',5),(6,3,'blanca_lisf@gmail.com','blanc1',6),(7,2,'lind_fue1@hotmail.com','linda1',7),(8,2,'vico_12334@hotmail.com','victor2',8),(9,3,'arturopache@hotmail.com','arturo1',9),(10,2,'salsa_eduardo@hotmail.com','eduardo1',10),(11,3,'oliver_atom@gmailcom','oliver1',11),(12,2,'fer_gomez123@hotmail.com','fernando1',12),(13,3,'agus_uri_arv@hotmail.com','agusti1',13),(14,2,'jose_alejo@hotmail.com','jose1',14),(15,2,'albert_baut@hotmail.com','alberto1',15),(16,3,'pancho_xavi@hotmail.com','francisco1',16),(17,2,'jose_antony12@hotmail.com','antonio1',17),(18,2,'michelle_hugo1@hotmail.com','hugo1',18),(19,2,'eduardo_fragoso@gmail.com','eduardo1',19),(20,2,'shamid_miguel@hotmail.com','miguel1',20);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_nivel`
--

DROP TABLE IF EXISTS `usuario_nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_nivel` (
  `id_nivel_usuario` int(11) NOT NULL,
  `nivel_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_nivel_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_nivel`
--

LOCK TABLES `usuario_nivel` WRITE;
/*!40000 ALTER TABLE `usuario_nivel` DISABLE KEYS */;
INSERT INTO `usuario_nivel` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `usuario_nivel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-15  0:39:21
