-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table testdb.bank_balance
CREATE TABLE IF NOT EXISTS `bank_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balance` int(50) DEFAULT NULL,
  `balance_achieve` int(50) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testdb.bank_balance: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_balance` ENABLE KEYS */;

-- Dumping structure for table testdb.bank_balance_history
CREATE TABLE IF NOT EXISTS `bank_balance_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bankBalanceId` int(11) DEFAULT NULL,
  `balanceBefore` int(50) DEFAULT NULL,
  `balanceAfter` int(50) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `type` enum('debit','kredit') DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `userAgent` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testdb.bank_balance_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_balance_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_balance_history` ENABLE KEYS */;

-- Dumping structure for table testdb.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testdb.events: ~0 rows (approximately)
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Dumping structure for table testdb.guests
CREATE TABLE IF NOT EXISTS `guests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testdb.guests: ~15 rows (approximately)
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` (`id`, `name`, `fullname`, `address`, `telephone`, `enable`, `createdAt`, `updatedAt`) VALUES
	(1, 'adhi', NULL, 'magelang', '9283982938', 1, '2022-05-10 05:43:44', '2022-05-10 05:43:44'),
	(2, 'adhi', NULL, 'magelang', '9283982938', 1, '2022-05-10 05:44:24', '2022-05-10 05:44:24'),
	(3, 'adhi', NULL, 'magelang', '9283982938', 1, '2022-05-10 05:45:07', '2022-05-10 05:45:07'),
	(4, 'adhi', 'adhi nugroho', 'magelang', '9283982938', 1, '2022-05-10 05:46:00', '2022-05-10 05:46:00'),
	(5, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-11 07:43:18', '2022-05-11 07:43:18'),
	(6, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-11 07:43:35', '2022-05-11 07:43:35'),
	(7, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-11 07:43:42', '2022-05-11 07:43:42'),
	(8, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-11 07:43:45', '2022-05-11 07:43:45'),
	(9, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-11 07:43:47', '2022-05-11 07:43:47'),
	(10, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-11 07:44:02', '2022-05-11 07:44:02'),
	(11, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-11 07:44:06', '2022-05-11 07:44:06'),
	(12, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-11 08:26:43', '2022-05-11 08:26:43'),
	(13, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-20 01:50:26', '2022-05-20 01:50:26'),
	(14, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-20 01:50:46', '2022-05-20 01:50:46'),
	(15, 'adhi2', 'adhi nugroho2', 'magelang2', '92839829382', 1, '2022-05-20 01:50:50', '2022-05-20 01:50:50');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;

-- Dumping structure for table testdb.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testdb.roles: ~3 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
	(1, 'user', '2022-03-13 06:41:50', '2022-03-13 06:41:50'),
	(2, 'chief', '2022-03-13 06:42:18', '2022-03-13 06:42:18'),
	(3, 'admin', '2022-03-13 06:42:38', '2022-03-13 06:42:38');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table testdb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` char(60) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testdb.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
	(1, 'admin', 'admin@bezkoder.com', '$2a$08$w3cYCF.N0UQZO19z8CQSZ.whzxFS5vMoi9k51g3TQx9r5tkwrIXO2', '2020-01-13 09:21:51', '2020-01-13 09:21:51'),
	(2, 'adhi', 'adhi@adhi.com', '$2a$08$AC3j1isAj4n6D0X35nliTOPXDQm14A0twCA9Pw/IW9HqzFZSGUDu.', '2022-03-13 07:25:23', '2022-03-13 07:25:23'),
	(3, 'adhi2', 'adhi2@adhi.com', '$2a$08$mivgbsdbDElDagQ36mCtc.mZqVfVm283s6K3W/focCfN48Plx8IpG', '2022-03-14 06:22:54', '2022-03-14 06:22:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table testdb.user_balances
CREATE TABLE IF NOT EXISTS `user_balances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `balanceAchieve` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `user_balances_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testdb.user_balances: ~6 rows (approximately)
/*!40000 ALTER TABLE `user_balances` DISABLE KEYS */;
INSERT INTO `user_balances` (`id`, `userId`, `balance`, `balanceAchieve`, `createdAt`, `updatedAt`) VALUES
	(1, 2, 500000, 500000, '2022-03-14 16:15:24', '2022-03-14 16:15:24'),
	(2, 2, 500000, 1000000, '2022-03-14 16:15:45', '2022-03-14 16:15:45'),
	(3, 2, 50000, 1050000, '2022-03-14 16:16:03', '2022-03-14 16:16:03'),
	(4, 2, 50000, 1100000, '2022-03-14 16:27:29', '2022-03-14 16:27:29'),
	(5, 2, 60000, 1160000, '2022-03-14 16:29:16', '2022-03-14 16:29:16'),
	(6, 2, 10000, 1170000, '2022-05-10 07:06:45', '2022-05-10 07:06:45');
/*!40000 ALTER TABLE `user_balances` ENABLE KEYS */;

-- Dumping structure for table testdb.user_balance_histories
CREATE TABLE IF NOT EXISTS `user_balance_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userBalanceId` int(11) DEFAULT NULL,
  `balanceBefore` int(11) DEFAULT NULL,
  `balanceAfter` int(11) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `type` enum('debit','kredit') DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `userAgent` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userBalanceId` (`userBalanceId`),
  CONSTRAINT `user_balance_histories_ibfk_1` FOREIGN KEY (`userBalanceId`) REFERENCES `user_balances` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testdb.user_balance_histories: ~6 rows (approximately)
/*!40000 ALTER TABLE `user_balance_histories` DISABLE KEYS */;
INSERT INTO `user_balance_histories` (`id`, `userBalanceId`, `balanceBefore`, `balanceAfter`, `activity`, `type`, `ip`, `location`, `userAgent`, `author`, `createdAt`, `updatedAt`) VALUES
	(1, 1, 0, 500000, 'Deposit', 'debit', '127.0.0.1', 'magelang', NULL, 'adhi', '2022-03-14 16:15:24', '2022-03-14 16:15:24'),
	(2, 2, 500000, 1000000, 'Deposit', 'debit', '127.0.0.1', 'magelang', NULL, 'adhi', '2022-03-14 16:15:45', '2022-03-14 16:15:45'),
	(3, 3, 1000000, 1050000, 'Deposit', 'debit', '127.0.0.1', 'magelang', NULL, 'adhi', '2022-03-14 16:16:03', '2022-03-14 16:16:03'),
	(4, 4, 1050000, 1100000, 'Deposit', 'debit', '127.0.0.1', 'magelang', NULL, 'adhi', '2022-03-14 16:27:29', '2022-03-14 16:27:29'),
	(5, 5, 1100000, 1160000, 'Deposit', 'debit', '127.0.0.1', 'magelang', NULL, 'adhi', '2022-03-14 16:29:16', '2022-03-14 16:29:16'),
	(6, 6, 1160000, 1170000, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 07:06:45', '2022-05-10 07:06:45');
/*!40000 ALTER TABLE `user_balance_histories` ENABLE KEYS */;

-- Dumping structure for table testdb.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`roleId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testdb.user_roles: ~5 rows (approximately)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`roleId`, `userId`, `createdAt`, `updatedAt`) VALUES
	(1, 2, '2022-03-14 23:26:00', '2022-03-14 23:26:02'),
	(1, 3, '2022-03-14 23:26:20', '2022-03-14 23:26:22'),
	(2, 1, '2022-03-14 23:25:14', '2022-03-14 23:25:20'),
	(2, 2, '2022-03-14 23:25:44', '2022-03-14 23:25:46'),
	(3, 1, '2020-01-13 09:22:01', '2020-01-13 09:22:01');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
