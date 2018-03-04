-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Már 04. 15:11
-- Kiszolgáló verziója: 10.1.26-MariaDB
-- PHP verzió: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `erettsegi_2006e_februar_csaladfa`
--
CREATE DATABASE IF NOT EXISTS `erettsegi_2006e_februar_csaladfa` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `erettsegi_2006e_februar_csaladfa`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csaladtag`
--

CREATE TABLE `csaladtag` (
  `azon` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `mettol` int(11) DEFAULT NULL,
  `meddig` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `csaladtag`
--

INSERT INTO `csaladtag` (`azon`, `nev`, `mettol`, `meddig`) VALUES
(1, 'György', 1723, 1767),
(2, 'Anna', 1725, 1788),
(3, 'János', 1744, 1777),
(4, 'Katalin', 1748, 1793),
(5, 'Borbála', 1745, 1799),
(6, 'György', 1740, 1783),
(7, 'Péter', 1746, 1809),
(8, 'Zsuzsanna', 1750, 1801),
(9, 'Anna', 1748, 1801),
(10, 'Tamás', 1748, 1803),
(11, 'Mária', 1749, 1811),
(12, 'Mátyás', 1740, 1800),
(13, 'Mihály', 1751, 1801),
(14, 'Éva', 1765, 1819),
(15, 'Árpád', 1753, 1801),
(16, 'Ilona', 1755, 1809),
(17, 'Júlia', 1754, 1806),
(18, 'Antónia', 1760, 1810),
(19, 'Sándor', 1750, 1820),
(20, 'György', 1750, 1808),
(21, 'Attila', 1755, 1790),
(22, 'János', 1769, 1809),
(23, 'Dániel', 1771, 1819),
(24, 'Anna', 1770, 1841),
(25, 'István', 1765, 1821),
(26, 'András', 1766, 1809),
(27, 'Gábor', 1768, 1819),
(28, 'Péter', 1771, 1822),
(29, 'Zsófia', 1771, 1831),
(30, 'Dorottya', 1780, 1841),
(31, 'Eszter', 1780, 1806),
(32, 'Petra', 1786, 1810),
(33, 'Gábor', 1785, 1833),
(34, 'Katalin', 1800, 1852),
(35, 'Péter', 1783, 1836),
(36, 'Judit', 1786, 1848),
(37, 'Edit', 1783, 1849),
(38, 'Rita', 1786, 1849),
(39, 'Tünde', 1753, 1776),
(40, 'Károly', 1773, 1832);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szulo`
--

CREATE TABLE `szulo` (
  `azon` int(11) NOT NULL,
  `apja` int(11) DEFAULT NULL,
  `anyja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szulo`
--

INSERT INTO `szulo` (`azon`, `apja`, `anyja`) VALUES
(3, 1, 2),
(5, 1, 2),
(7, 1, 2),
(9, 1, 2),
(11, 1, 2),
(13, 1, 2),
(15, 1, 2),
(17, 1, 2),
(18, 1, 2),
(22, 3, 4),
(23, 3, 4),
(24, 5, 6),
(26, 7, 8),
(27, 7, 8),
(28, 7, 8),
(29, 10, 9),
(30, 10, 9),
(33, 13, 14),
(35, 15, 16),
(37, 20, 17),
(38, 20, 17),
(40, 13, 39);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csaladtag`
--
ALTER TABLE `csaladtag`
  ADD PRIMARY KEY (`azon`);

--
-- A tábla indexei `szulo`
--
ALTER TABLE `szulo`
  ADD PRIMARY KEY (`azon`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `szulo`
--
ALTER TABLE `szulo`
  ADD CONSTRAINT `fk_szulo_csaladtag` FOREIGN KEY (`azon`) REFERENCES `csaladtag` (`azon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
