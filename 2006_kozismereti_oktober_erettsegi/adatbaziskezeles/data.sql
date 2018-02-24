-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Feb 24. 12:38
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
-- Adatbázis: `erettsegi_2006e_oktober_erettsegi`
--

--
-- A tábla adatainak kiíratása `foglalkozasok`
--

INSERT INTO `foglalkozasok` (`fkod`, `megyekod`, `mezogazdasag`, `ipar`, `szolgaltatas`) VALUES
(101, 1, 3174, 142912, 608871),
(102, 2, 27073, 59101, 113044),
(103, 3, 7535, 48733, 87689),
(104, 4, 12570, 41535, 75758),
(105, 5, 7231, 74157, 138928),
(106, 6, 18795, 43974, 93966),
(107, 7, 8806, 74183, 94035),
(108, 8, 8300, 70517, 105677),
(109, 9, 14656, 58620, 117214),
(110, 10, 5575, 42101, 67350),
(111, 11, 10130, 46417, 84702),
(112, 12, 3544, 60125, 67493),
(113, 13, 2605, 30785, 42677),
(114, 14, 14579, 142899, 314191),
(115, 15, 7128, 31683, 73255),
(116, 16, 8686, 52961, 111929),
(117, 17, 8137, 32959, 48948),
(118, 18, 5971, 43708, 59418),
(119, 19, 6292, 61038, 80341),
(120, 20, 6034, 47786, 67885);

--
-- A tábla adatainak kiíratása `lakosok`
--

INSERT INTO `lakosok` (`megyekod`, `lakosszam`) VALUES
(1, 1695814),
(2, 539971),
(3, 399652),
(4, 388847),
(5, 730435),
(6, 424615),
(7, 428676),
(8, 440000),
(9, 548981),
(10, 322194),
(11, 410131),
(12, 315334),
(13, 216040),
(14, 1146560),
(15, 331253),
(16, 581312),
(17, 244910),
(18, 264892),
(19, 365889),
(20, 294824);

--
-- A tábla adatainak kiíratása `megyek`
--

INSERT INTO `megyek` (`megyekod`, `regiokod`, `megyenev`) VALUES
(1, 1, 'Budapest'),
(2, 7, 'Bács-Kiskun'),
(3, 4, 'Baranya'),
(4, 7, 'Békés'),
(5, 5, 'Borsod-Abaúj-Zemplén'),
(6, 7, 'Csongrád'),
(7, 2, 'Fejér'),
(8, 3, 'Győr-Moson-Sopron'),
(9, 6, 'Hajdú-Bihar'),
(10, 5, 'Heves'),
(11, 6, 'Jász-Nagykun-Szolnok'),
(12, 2, 'Komárom-Esztergom'),
(13, 5, 'Nógrád'),
(14, 1, 'Pest'),
(15, 4, 'Somogy'),
(16, 6, 'Szabolcs-Szatmár-Bereg'),
(17, 4, 'Tolna'),
(18, 3, 'Vas'),
(19, 2, 'Veszprém'),
(20, 3, 'Zala');

--
-- A tábla adatainak kiíratása `regiok`
--

INSERT INTO `regiok` (`regiokod`, `regionev`) VALUES
(1, 'Közép-Magyarország'),
(2, 'Közép-Dunántúl'),
(3, 'Nyugat-Dunántúl'),
(4, 'Dél-Dunántúl'),
(5, 'Észak-Magyarország'),
(6, 'Észak-Alföld'),
(7, 'Dél-Alföld');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
