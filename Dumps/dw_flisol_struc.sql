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
-- Table structure for table `dim_municipios`
--

DROP TABLE IF EXISTS `dim_municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_municipios` (
  `key_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `cod_geo_munic` int(11) DEFAULT NULL,
  `nom_regiao` varchar(45) DEFAULT NULL,
  `red_regiao` varchar(15) DEFAULT NULL,
  `red_uf` char(2) DEFAULT NULL,
  `nom_uf` varchar(45) DEFAULT NULL,
  `nom_meso` varchar(75) DEFAULT NULL,
  `red_meso` varchar(75) DEFAULT NULL,
  `nom_micro` varchar(75) DEFAULT NULL,
  `red_micro` varchar(75) DEFAULT NULL,
  `nom_municipio` varchar(150) DEFAULT NULL,
  `nom_municipio_uf` varchar(155) DEFAULT NULL,
  `ind_fronteira` char(3) DEFAULT NULL,
  `ind_capital` char(3) DEFAULT NULL,
  `ind_semi_arido` char(3) DEFAULT NULL,
  `alt_municipio` int(11) DEFAULT NULL,
  `are_municipio` int(11) DEFAULT NULL,
  `num_versao` int(11) DEFAULT NULL,
  `dat_ini_versao` date DEFAULT NULL,
  `dat_fim_versao` date DEFAULT NULL,
  PRIMARY KEY (`key_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=5631 DEFAULT CHARSET=utf8 COMMENT='Municipios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_tempo_data`
--

DROP TABLE IF EXISTS `dim_tempo_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_tempo_data` (
  `key_tempo_data` int(11) NOT NULL AUTO_INCREMENT,
  `dat_referencia` date DEFAULT NULL,
  `dat_ano` int(11) DEFAULT NULL,
  `dat_semestre` int(11) DEFAULT NULL,
  `dat_trimestre` int(11) DEFAULT NULL,
  `dat_bimestre` int(11) DEFAULT NULL,
  `dat_mes` int(11) DEFAULT NULL,
  `dat_semana` int(11) DEFAULT NULL,
  `dat_dia` int(11) DEFAULT NULL,
  `dat_dia_semana` int(11) DEFAULT NULL,
  `dat_dia_ano` int(11) DEFAULT NULL,
  `dat_sem_nome` varchar(45) DEFAULT NULL,
  `dat_sem_reduz` varchar(10) DEFAULT NULL,
  `dat_trim_nome` varchar(45) DEFAULT NULL,
  `dat_trim_reduz` varchar(10) DEFAULT NULL,
  `dat_bim_nome` varchar(45) DEFAULT NULL,
  `dat_bim_reduz` varchar(10) DEFAULT NULL,
  `dat_mes_nome` varchar(25) DEFAULT NULL,
  `dat_mes_reduz` char(3) DEFAULT NULL,
  `dat_semana_nome` varchar(45) DEFAULT NULL,
  `dat_dia_sem_nome` varchar(25) DEFAULT NULL,
  `dat_dia_sem_reduz` varchar(3) DEFAULT NULL,
  `dat_periodo_nome` varchar(45) DEFAULT NULL,
  `dat_periodo_reduz` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`key_tempo_data`)
) ENGINE=InnoDB AUTO_INCREMENT=73415 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fato_flisol`
--

DROP TABLE IF EXISTS `fato_flisol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fato_flisol` (
  `idn_fato` int(11) NOT NULL AUTO_INCREMENT,
  `key_tempo_data` int(11) DEFAULT NULL,
  `key_municipio` int(11) DEFAULT NULL,
  `qtd_palestras` int(11) DEFAULT NULL,
  `qtd_workshops` int(11) DEFAULT NULL,
  `qtd_visitantes` int(11) DEFAULT NULL,
  `qtd_instalacao` int(11) DEFAULT NULL,
  `qtd_organizador` int(11) DEFAULT NULL,
  `qtd_palestrante` int(11) DEFAULT NULL,
  `qtd_palest_organiz` int(11) DEFAULT NULL,
  `qtd_distro_disp` int(11) DEFAULT NULL,
  `qtd_distro_instala` int(11) DEFAULT NULL,
  `qtd_soft_disp` int(11) DEFAULT NULL,
  `qtd_soft_instala` int(11) DEFAULT NULL,
  PRIMARY KEY (`idn_fato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-24 23:36:20
