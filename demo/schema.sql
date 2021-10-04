-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.24 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sign-up
DROP DATABASE IF EXISTS `sign-up`;
CREATE DATABASE IF NOT EXISTS `sign-up` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sign-up`;

-- Dumping structure for table sign-up.sign
DROP TABLE IF EXISTS `sign`;
CREATE TABLE IF NOT EXISTS `sign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `confirmpassword` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sign-up.sign: ~0 rows (approximately)
DELETE FROM `sign`;
/*!40000 ALTER TABLE `sign` DISABLE KEYS */;
INSERT INTO `sign` (`id`, `firstname`, `lastname`, `email`, `password`, `confirmpassword`, `number`) VALUES
	(1, 'Gopinath', 'Periyasamy', 'gopinathperiyasamy035@gmail.com', 'Gopinath@035', 'Gopinath@035', '7639147521'),
	(2, 'optimus', 'Gopinath', 'optimusgopinath035@gmail.com', 'Gopi@035', 'Gopi@035', '+917639147521'),
	(3, 'Sara', 'Sathish', 'sara@gmail.com', 'Gopi@035', 'Gopi@035', '+919629555378'),
	(4, 'sathish', 'sowmi', 'sathish@gmail.com', 'Gopinath@035', '@CrossOrigin(origins = "http://localhost:4200")', '+911234567890'),
	(6, 'sowmi', 'sowmi', 'sowmi@gmail.com', 'Gopi@035', 'Gopi@35', '+917639147521'),
	(7, 'Gopinath', 'agadfgdfg', 'gopi@gmail.com', 'Gopi@035', 'Gopi@035', '+917639147521'),
	(8, 'Gopinath', 'Gopinath', 'Gopinath@gmail.com', 'Gopinath@035', 'Gopinath@035', '+917639147521'),
	(9, 'Gopinath', 'Gopinath', 'sara035@gmail.com', 'Gopi@035', 'Gopi@035', '+917639147521'),
	(10, 'siva', 'raj', 'siva@gmail.com', 'Gopi@035', 'Gopi@035', '+911234567890'),
	(11, 'pradeep', 'periyasamy', 'pradeepperiyasamy035@gmail.com', 'Gopi@035', 'Gopi@035', '+917639147521');
/*!40000 ALTER TABLE `sign` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
