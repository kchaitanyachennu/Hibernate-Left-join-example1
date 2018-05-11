-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.30-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for test
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;


-- Dumping structure for table test.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CID` int(10) DEFAULT NULL,
  `CCITY` varchar(50) DEFAULT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.customer: ~5 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`CID`, `CCITY`, `CNAME`) VALUES
	(101, 'Vijayawada', 'Chandra Sekhar'),
	(102, 'Bangalore', 'Santhos'),
	(103, 'Mumbai', 'Rahulu'),
	(104, 'Delhi', 'Rajesh'),
	(105, 'Hyderabad', 'Shekar');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


-- Dumping structure for table test.item
DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `iid` int(10) DEFAULT NULL,
  `iname` varchar(50) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.item: ~4 rows (approximately)
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`iid`, `iname`, `price`, `customer_id`) VALUES
	(1001, 'Books', 1500, 104),
	(1002, 'Pens', 1200, 104),
	(1003, 'Papers', 2000, 105),
	(1004, 'Computers', 15000, 102);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


-- Dumping database structure for test1
DROP DATABASE IF EXISTS `test1`;
CREATE DATABASE IF NOT EXISTS `test1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test1`;


-- Dumping structure for table test1.author
DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` int(10) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test1.author: ~6 rows (approximately)
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` (`id`, `first_name`, `last_name`, `b_id`) VALUES
	(101, 'krishna', 'chaitanya', 15561),
	(102, 'swethha', 'mounika', 15562),
	(103, 'rambabu', 'chennu', 15564),
	(104, 'rajesh', 'kumar', 0),
	(105, 'sivansh', 'karthikeya', NULL),
	(106, 'arvindh', 'prasad', 15565);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;


-- Dumping structure for table test1.book
DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(10) DEFAULT NULL,
  `book_name` varchar(50) DEFAULT NULL,
  `publisher_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test1.book: ~6 rows (approximately)
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`book_id`, `book_name`, `publisher_id`) VALUES
	(15561, 'java thread', 1222),
	(15562, 'dot net book', 1221),
	(15563, 'Maths 10th', 1223),
	(15564, 'SBI book', 1221),
	(15565, 'SAP book', 1222),
	(15566, 'Dot Net2 book', 1221);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


-- Dumping structure for table test1.publisher
DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `p_id` int(10) DEFAULT NULL,
  `publisher_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test1.publisher: ~4 rows (approximately)
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` (`p_id`, `publisher_name`) VALUES
	(1221, 'APBooks'),
	(1222, 'TelaganaBooks'),
	(1223, 'varisha publisher'),
	(1224, 'anushu pubisher');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
