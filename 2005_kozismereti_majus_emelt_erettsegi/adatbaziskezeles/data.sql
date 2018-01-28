-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Jan 27. 14:06
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
-- Adatbázis: `erettsegi_2005e_majus_forgalom`
--

--
-- A tábla adatainak kiíratása `aru`
--

INSERT INTO `aru` (`aru_kod`, `kat_kod`, `nev`, `egyseg`, `ar`) VALUES
(1, 3, 'Tejföl 20%-os', 'doboz', 175),
(2, 3, 'Camembert', 'doboz', 239),
(3, 3, 'Tejszínhab-spray', 'liter', 676),
(4, 3, 'Pötyös Túró Rudi', 'darab', 42),
(5, 3, 'Sovány tej', 'liter', 145),
(6, 3, 'Zsíros tej', 'liter', 169),
(7, 3, 'Medve sajt', 'doboz', 209),
(8, 3, 'Eidami sajt', 'doboz', 1222),
(9, 1, 'Téliszalámi', 'kg', 2899),
(10, 1, 'Bánáti kolbász', 'kg', 549),
(11, 1, 'Füstölt-főtt pulykamell sonka', 'kg', 1199),
(12, 1, 'Füstölt-főtt pulyka alsócomb', 'kg', 629),
(13, 1, 'Baromfi párizsi', 'kg', 209),
(14, 1, 'Szeletelt bacon', 'kg', 1490),
(15, 1, 'Erdélyi szalonna', 'kg', 599),
(16, 1, 'Farmer felvágott', 'kg', 579),
(17, 1, 'Sertéscomb csont nélkül', 'kg', 829),
(18, 1, 'Sertés hátsó csülök', 'kg', 559),
(19, 1, 'Marha darálthús', 'kg', 899),
(20, 1, 'Sertéslapocka', 'kg', 739),
(21, 1, 'Sertés darálthús', 'kg', 539),
(22, 1, 'Sertéstarja csont nélkül', 'kg', 1099),
(23, 1, 'Marha párizsi', 'kg', 899),
(24, 2, 'Sütőtök', 'kg', 49),
(25, 2, 'Karfiol', 'kg', 168),
(26, 2, 'Zöldborsó', 'doboz', 489),
(27, 2, 'Téli alma', 'kg', 199),
(28, 2, 'Paradicsom', 'kg', 239),
(29, 6, 'Ice Tea', 'doboz', 229),
(30, 6, 'Ásványvíz', 'liter', 119),
(31, 6, 'Almalé', 'liter', 269),
(32, 6, 'Őszilé', 'liter', 269),
(33, 6, 'Kajszilé', 'liter', 269),
(34, 4, 'Piros mogyorós', 'darab', 155),
(35, 4, 'Gabonapehely szelet', 'darab', 52),
(36, 4, 'Boci csoki', 'darab', 142),
(37, 4, 'Konyakos meggy', 'darab', 712),
(38, 4, 'Sportszelet', 'darab', 82),
(39, 5, 'La Pasta 4 tojásos tészta', 'kg', 230),
(40, 5, 'Korona tészta', 'kg', 290),
(41, 5, 'Füri tészta', 'kg', 179),
(42, 5, 'Durillo tészta', 'kg', 238),
(43, 5, 'Csigatészta', 'kg', 320),
(44, 5, 'Cérnametélt', 'kg', 332),
(45, 5, 'Szélesmetélt', 'kg', 230),
(46, 1, 'Paprikás szalámi', 'kg', 2899);

--
-- A tábla adatainak kiíratása `eladas`
--

INSERT INTO `eladas` (`aru_kod`, `mennyiseg`) VALUES
(1, 48),
(2, 31),
(3, 48),
(4, 42),
(5, 16),
(6, 1),
(7, 36),
(8, 29),
(9, 33),
(10, 19),
(11, 39),
(12, 42),
(13, 2),
(14, 46),
(15, 45),
(16, 3),
(17, 27),
(18, 35),
(19, 10),
(20, 50),
(21, 28),
(22, 13),
(23, 14),
(24, 26),
(25, 8),
(26, 8),
(27, 16),
(28, 29),
(29, 25),
(30, 22),
(31, 33),
(32, 49),
(33, 20),
(34, 46),
(35, 12),
(36, 35),
(37, 8),
(38, 12),
(39, 43),
(40, 26),
(41, 24),
(42, 29),
(43, 47),
(44, 41),
(45, 41),
(46, 10);

--
-- A tábla adatainak kiíratása `kategoria`
--

INSERT INTO `kategoria` (`kat_kod`, `kat_nev`) VALUES
(1, 'Húsáru'),
(2, 'Zöldség'),
(3, 'Tejtermék'),
(4, 'Édesség'),
(5, 'Tészták'),
(6, 'Üditőitalok');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
