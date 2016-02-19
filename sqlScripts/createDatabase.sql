-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                10.0.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Versie:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Databasestructuur van dbscore wordt geschreven
CREATE DATABASE IF NOT EXISTS `full_application` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `full_application`;


-- Structuur van  tabel dbscore.activiteiten wordt geschreven
CREATE TABLE IF NOT EXISTS `users` (
  `sk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(150) DEFAULT NULL,
  `password` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `authentication` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `adress` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `rizivNumber` bigint(150) DEFAULT 0,
  PRIMARY KEY (`sk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;