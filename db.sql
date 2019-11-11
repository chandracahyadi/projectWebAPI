-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.28 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for dbtesthome
CREATE DATABASE IF NOT EXISTS `dbtesthome` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbtesthome`;

-- Dumping structure for table dbtesthome.tabel_card
CREATE TABLE IF NOT EXISTS `tabel_card` (
  `idCard` int(10) NOT NULL AUTO_INCREMENT,
  `nameCard` varchar(50) NOT NULL,
  `isActive` int(1) NOT NULL,
  `createBy` varchar(50) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateBy` varchar(50) NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idCard`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table dbtesthome.tabel_card: ~5 rows (approximately)
/*!40000 ALTER TABLE `tabel_card` DISABLE KEYS */;
INSERT INTO `tabel_card` (`idCard`, `nameCard`, `isActive`, `createBy`, `createDate`, `updateBy`, `updateDate`) VALUES
	(1, 'PromoCard', 1, 'system', '2019-11-09 16:59:12', 'system', '0000-00-00 00:00:00'),
	(2, 'CategoryCard', 1, 'system', '2019-11-09 16:59:12', 'system', '0000-00-00 00:00:00'),
	(3, 'FlashSaleCard', 1, 'system', '2019-11-09 16:59:12', 'system', '0000-00-00 00:00:00'),
	(4, 'HistoryCard', 1, 'system', '2019-11-09 16:59:12', 'system', '0000-00-00 00:00:00'),
	(5, 'NewsCard', 1, 'system', '2019-11-09 16:59:12', 'system', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tabel_card` ENABLE KEYS */;

-- Dumping structure for table dbtesthome.tabel_group
CREATE TABLE IF NOT EXISTS `tabel_group` (
  `idGroup` int(10) NOT NULL AUTO_INCREMENT,
  `nameGroup` varchar(50) NOT NULL,
  `isActive` int(1) NOT NULL,
  `createBy` varchar(50) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateBy` varchar(50) NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idGroup`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table dbtesthome.tabel_group: ~3 rows (approximately)
/*!40000 ALTER TABLE `tabel_group` DISABLE KEYS */;
INSERT INTO `tabel_group` (`idGroup`, `nameGroup`, `isActive`, `createBy`, `createDate`, `updateBy`, `updateDate`) VALUES
	(1, 'UserA', 1, 'system', '2019-11-09 17:19:42', 'system', '0000-00-00 00:00:00'),
	(2, 'UserB', 1, 'system', '2019-11-09 17:19:51', 'system', '0000-00-00 00:00:00'),
	(3, 'UserC', 1, 'system', '2019-11-09 17:20:00', 'system', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tabel_group` ENABLE KEYS */;

-- Dumping structure for table dbtesthome.tabel_mapping_group_card
CREATE TABLE IF NOT EXISTS `tabel_mapping_group_card` (
  `idGroup` int(10) DEFAULT NULL,
  `idCard` int(10) DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dbtesthome.tabel_mapping_group_card: ~15 rows (approximately)
/*!40000 ALTER TABLE `tabel_mapping_group_card` DISABLE KEYS */;
INSERT INTO `tabel_mapping_group_card` (`idGroup`, `idCard`, `createDate`) VALUES
	(1, 1, '2019-11-11 13:48:50'),
	(1, 2, '2019-11-11 13:48:51'),
	(1, 3, '2019-11-11 13:49:04'),
	(1, 4, '2019-11-11 13:49:20'),
	(1, 5, '2019-11-11 13:49:21'),
	(2, 1, '2019-11-11 13:49:28'),
	(2, 5, '2019-11-11 13:49:29'),
	(2, 3, '2019-11-11 13:49:30'),
	(2, 2, '2019-11-11 13:49:31'),
	(2, 5, '2019-11-11 13:49:32'),
	(3, 1, '2019-11-11 13:49:32'),
	(3, 3, '2019-11-11 13:49:33'),
	(3, 2, '2019-11-11 13:49:34'),
	(3, 5, '2019-11-11 13:49:35'),
	(3, 4, '2019-11-11 13:49:36');
/*!40000 ALTER TABLE `tabel_mapping_group_card` ENABLE KEYS */;

-- Dumping structure for table dbtesthome.tabel_user_id
CREATE TABLE IF NOT EXISTS `tabel_user_id` (
  `userID` varchar(10) NOT NULL,
  `groupID` varchar(50) NOT NULL,
  `isActive` int(1) NOT NULL,
  `createBy` varchar(50) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateBy` varchar(50) NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dbtesthome.tabel_user_id: ~7 rows (approximately)
/*!40000 ALTER TABLE `tabel_user_id` DISABLE KEYS */;
INSERT INTO `tabel_user_id` (`userID`, `groupID`, `isActive`, `createBy`, `createDate`, `updateBy`, `updateDate`) VALUES
	('user001', '1', 1, 'system', '2019-11-09 17:15:11', 'system', '0000-00-00 00:00:00'),
	('user002', '1', 1, 'system', '2019-11-09 17:15:11', 'system', '0000-00-00 00:00:00'),
	('user003', '2', 1, 'system', '2019-11-09 17:15:11', 'system', '0000-00-00 00:00:00'),
	('user004', '2', 1, 'system', '2019-11-09 17:15:11', 'system', '0000-00-00 00:00:00'),
	('user005', '2', 1, 'system', '2019-11-09 17:15:11', 'system', '0000-00-00 00:00:00'),
	('user006', '2', 1, 'system', '2019-11-09 17:15:11', 'system', '0000-00-00 00:00:00'),
	('user007', '3', 1, 'system', '2019-11-09 17:15:11', 'system', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tabel_user_id` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
