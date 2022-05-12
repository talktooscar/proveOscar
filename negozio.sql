-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: Mag 06, 2022 alle 10:23
-- Versione del server: 5.6.12-log
-- Versione PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `negozio`
--
CREATE DATABASE IF NOT EXISTS `negozio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `negozio`;

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE IF NOT EXISTS `clienti` (
  `ID_clienti` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `indirizzo` varchar(100) NOT NULL,
  `cf` varchar(16) NOT NULL,
  PRIMARY KEY (`ID_clienti`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `clienti`
--

INSERT INTO `clienti` (`ID_clienti`, `nome`, `indirizzo`, `cf`) VALUES
(1, 'Ayman', 'Via vicolo degli orti, 7', 'MQRYMN03C06D416T'),
(2, 'Silvio', 'Via carcano, 90H', 'GMRSLV03M19C933Z'),
(3, 'Giada', 'Via nazionale, 6', 'MNIGDI03M58D416P');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE IF NOT EXISTS `ordini` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `num_ordini` varchar(20) NOT NULL,
  `data_ord` date NOT NULL,
  `prezzo` decimal(10,0) NOT NULL,
  `ID_clienti` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_clienti` (`ID_clienti`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `ordini`
--

INSERT INTO `ordini` (`ID`, `num_ordini`, `data_ord`, `prezzo`, `ID_clienti`) VALUES
(1, '5', '2022-05-07', '10', 1),
(2, '4', '2022-05-09', '15', 2),
(3, '3', '2022-05-08', '8', 3);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `ordini`
--
ALTER TABLE `ordini`
  ADD CONSTRAINT `Vincolo1` FOREIGN KEY (`ID_clienti`) REFERENCES `clienti` (`ID_clienti`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
