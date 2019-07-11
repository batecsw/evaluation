-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 11, 2019 at 02:57 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `housing`
--

DROP TABLE IF EXISTS `housing`;
CREATE TABLE IF NOT EXISTS `housing` (
  `id_housing` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pc` int(10) NOT NULL,
  `area` int(4) NOT NULL,
  `price` int(8) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `type` varchar(10) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_housing`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `housing`
--

INSERT INTO `housing` (`id_housing`, `title`, `address`, `city`, `pc`, `area`, `price`, `photo`, `type`, `description`) VALUES
(1, 'A very desirable property', '11 Anyrue', 'Seningerberg', 2321, 250, 2200000, 'images/housing_1.jpg', 'sell', 'Future construction d\'une maison jumelée par garage classe énergétique AB, située sur un terrain de /- 7,89 ares exposée sud-ouest.\r\n\r\nArchitecture moderne d\'une surface totale de 416 m2, dont 235 m2 de surface habitable et 181 m2 de surface non-habitable.\r\n\r\nLa maison se compose comme suit :\r\n\r\nLe sous-sol avec deux caves et un local technique/buanderie.\r\n\r\nAu rez-de-chaussée : une cuisine ouverte sur un grand séjour de 65 m2 avec accès sur une terrasse de 28 m2, un WC séparé, un débarras et d\'une chambre d\'amis avec salle de douche.\r\nSpacieux garage de 74 m2 pour quatre voitures.\r\n\r\nA l\'étage se situent 3 chambres à coucher, dont une suite parentale de 23 m2 avec un dressing et une salle de douche de 12 m2, un WC séparé, une salle de douche et un hall de nuit.\r\n\r\nL\'étage en retrait vous offre un fitness de 35 m2.'),
(2, 'A House', '123 Op de Nowhere', 'Strassen', 8234, 150, 1400000, 'images/housing_2.jpg', 'sale', 'Belle maison jumelée rénovée bien située au calme, construite en 1990 sur un terrain de 3a77ca.\r\n\r\nLa maison se compose comme suit :\r\n\r\nSous-sol :\r\nGarage pour 2-3 voitures, caves, buanderie et chaudière au gaz.\r\n\r\nRez-de-chaussée :\r\nHall d\'entrée, WC séparé, une chambre à coucher, nouvelle cuisine équipée avec accès terrasse et jardin, salon et salle à manger ( feu ouvert ) \r\navec accès terrasse et jardin.\r\n\r\nPremier étage :\r\nHall de nuit, trois chambres à coucher, salle de douche avec WC et salle de bain avec WC.\r\n\r\nLa maison dispose d\'un grenier aménageable.\r\n\r\nNouveaux revêtements au sol.\r\nFeu ouvert.\r\nNouveaux radiateurs.\r\nNouvelle cuisine équipée.\r\nChaudière au gaz de 2007.\r\nSystème d\'alarme.\r\nMarquise électrique...'),
(3, ' Semi-detached house 5 bedrooms in Bettembourg', '14 rue des Carrieres', 'Bettembourg', 4455, 180, 950000, 'images/housing_3.jpg', 'sale', 'LIVING IMMO vous invite à découvrir cette très belle maison libre de 3 côtés, d’une surface de +/- 300m², située au calme, dans une rue sans issue, offrant de vastes espaces lumineux, dans un cadre de verdure, et d’une situation très privilégiée, à +/-15 min. de l’aéroport de Findel et du Kirchberg -à Bettembourg,\r\n\r\nComprenant :\r\n\r\nTrès grand hall d’entrée,\r\nTrès belle cuisine équipée séparée, toute neuve, donnant sur une belle terrasse avec une somptueuse vue dégagé et le jardin entièrement clôturé\r\nimmense living - salle à manger,\r\nWC séparé,\r\n6 Belles chambres à coucher,\r\n1 bureau (ou 6ème chambre)\r\nTrès grande salle de bain avec baignoire, douche et WC,\r\n1 salle de douche,\r\n1 WC séparé.\r\n\r\nTrès grande cave,\r\nPlusieurs débarras,\r\ngarage pour 1 voitures,\r\n2 Parkings extérieurs,\r\n'),
(4, 'Apartment 2 bedrooms for rent in Luxembourg-Belair', '33 rue de Kirch, Belair', 'Luxembourg', 1145, 75, 2150, 'images/housing_4.jpg', 'rent', 'Langlais et Langlais Real Estate are pleased to propose a beautiful and tastefully furnished apartment located Rue De La Toison d\'Or for rent.\r\n\r\nLarge living room/dining room with a beautiful fully equipped kitchen (dishwasher, washing machine, oven etc.)\r\nSuperb wooden floor. Security Door.\r\n\r\nTwo beautiful bedrooms and a bathroom complete this property ideally located and quiet.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
