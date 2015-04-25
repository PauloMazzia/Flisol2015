CREATE DATABASE  IF NOT EXISTS `dw_flisol` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dw_flisol`;
-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: dw_flisol
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `origem_fato`
--

DROP TABLE IF EXISTS `origem_fato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `origem_fato` (
  `idorigem_fato` int(11) NOT NULL AUTO_INCREMENT,
  `dat_evento` date DEFAULT NULL,
  `nom_cidade` varchar(150) DEFAULT NULL,
  `red_estado` char(2) DEFAULT NULL,
  `num_palestras` int(11) DEFAULT NULL,
  `num_workshops` int(11) DEFAULT NULL,
  `num_visitantes` int(11) DEFAULT NULL,
  `num_macro_install` int(11) DEFAULT NULL,
  `num_organizador` int(11) DEFAULT NULL,
  `num_palestrante` int(11) DEFAULT NULL,
  `num_palestrante_organizador` int(11) DEFAULT NULL,
  `num_distro_disp` int(11) DEFAULT NULL,
  `num_distro_install` int(11) DEFAULT NULL,
  `num_soft_disp` int(11) DEFAULT NULL,
  `num_soft_install` int(11) DEFAULT NULL,
  PRIMARY KEY (`idorigem_fato`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estat_compl`
--

DROP TABLE IF EXISTS `estat_compl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estat_compl` (
  `idn_estat_compl` int(11) NOT NULL AUTO_INCREMENT,
  `ano_estat_compl` int(11) NOT NULL,
  `nom_cidade` varchar(150) NOT NULL,
  `red_estado` varchar(2) NOT NULL,
  `qtd_organiza` int(11) DEFAULT NULL,
  `qtd_distro_disp` int(11) DEFAULT NULL,
  `qtd_distro_inst` int(11) DEFAULT NULL,
  `qtd_soft_disp` int(11) DEFAULT NULL,
  `qtd_soft_inst` int(11) DEFAULT NULL,
  `qtd_palestrantes` int(11) DEFAULT NULL,
  `qtd_palest_organ` int(11) DEFAULT NULL,
  PRIMARY KEY (`idn_estat_compl`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='Estatiscas Complementares';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estat_macro`
--

DROP TABLE IF EXISTS `estat_macro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estat_macro` (
  `idn_estat_macro` int(11) NOT NULL AUTO_INCREMENT,
  `ano_estat` int(11) NOT NULL,
  `nom_cidade` varchar(150) NOT NULL,
  `red_estado` varchar(2) DEFAULT NULL,
  `qtd_visitantes` int(11) DEFAULT NULL,
  `qtd_palestras` int(11) DEFAULT NULL,
  `qtd_workshops` int(11) DEFAULT NULL,
  `qtd_instala` int(11) DEFAULT NULL,
  PRIMARY KEY (`idn_estat_macro`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='Estatísticas - Macro por ano';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoio_datas_evento`
--

DROP TABLE IF EXISTS `apoio_datas_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoio_datas_evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ano` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `apoio_municipios`
--

DROP TABLE IF EXISTS `apoio_municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoio_municipios` (
  `idn_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `cod_municipio` int(11) NOT NULL,
  `cod_geo_munic` int(11) NOT NULL,
  `idn_regiao` int(11) NOT NULL,
  `nom_regiao` varchar(45) NOT NULL,
  `nom_ex_regiao` varchar(45) NOT NULL,
  `red_regiao` varchar(15) NOT NULL,
  `idn_uf` int(11) NOT NULL,
  `red_uf` char(2) NOT NULL,
  `nom_uf` varchar(45) NOT NULL,
  `nom_ex_uf` varchar(45) NOT NULL,
  `idn_meso` int(11) NOT NULL,
  `nom_meso` varchar(75) NOT NULL,
  `nom_ex_meso` varchar(75) NOT NULL,
  `red_meso` varchar(75) NOT NULL,
  `idn_micro` int(11) NOT NULL,
  `nom_micro` varchar(75) NOT NULL,
  `nom_ex_micro` varchar(75) NOT NULL,
  `red_micro` varchar(75) NOT NULL,
  `idn_reg_metro` int(11) NOT NULL,
  `nom_reg_metro` varchar(150) NOT NULL,
  `nom_ex_reg_metro` varchar(150) NOT NULL,
  `red_reg_metro` varchar(75) NOT NULL,
  `idn_agl_urbano` int(11) NOT NULL,
  `nom_agl_urbano` varchar(150) NOT NULL,
  `nom_ex_agl_urbano` varchar(150) NOT NULL,
  `nom_municipio` varchar(150) NOT NULL,
  `nom_ex_municipio` varchar(150) NOT NULL,
  `sit_municipio` varchar(15) NOT NULL,
  `ind_amazonia_legal` char(3) NOT NULL,
  `ind_fronteira` char(3) NOT NULL,
  `ind_capital` char(3) NOT NULL,
  `ind_semi_arido` char(3) NOT NULL,
  `lat_municipio` double(15,6) DEFAULT NULL,
  `lon_municipio` double(15,6) DEFAULT NULL,
  `alt_municipio` int(11) NOT NULL,
  `are_municipio` int(11) NOT NULL,
  `url_municipio` varchar(250) NOT NULL,
  PRIMARY KEY (`idn_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=5636 DEFAULT CHARSET=utf8 COMMENT='Municipios';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-25  9:41:01
