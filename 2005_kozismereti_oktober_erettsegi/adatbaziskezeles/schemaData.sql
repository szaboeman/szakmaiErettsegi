-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Feb 09. 20:11
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
-- Adatbázis: `erettsegi_2005e_oktober_mataku`
--
CREATE DATABASE IF NOT EXISTS `erettsegi_2005e_oktober_mataku` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `erettsegi_2005e_oktober_mataku`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eltunt`
--

CREATE TABLE `eltunt` (
  `sor` int(11) NOT NULL,
  `hely` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `mikor` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eltunt`
--

INSERT INTO `eltunt` (`sor`, `hely`, `mikor`) VALUES
(1, 'Gyöngyössomlyó', '2005-04-06'),
(2, 'Esztergom-Kertváros', '2005-03-16'),
(3, 'Szentendre', '2005-02-19'),
(4, 'III. kerület', '2004-11-03'),
(5, 'Szentendre', '2004-12-27'),
(6, 'XVI. kerület', '2004-09-23'),
(7, 'XXII. kerület', '2004-09-11'),
(8, 'Pilisszántó', '2004-10-07'),
(9, 'Pilis', '2005-04-10'),
(10, 'Budakeszi ', '2005-03-30'),
(11, 'XVII. kerület', '2005-03-11'),
(12, 'Eger', '2005-01-12'),
(13, 'II/a. kerület', '2005-02-11'),
(14, 'XIV. kerület', '2005-01-27'),
(15, 'XIII. kerület', '2004-12-12'),
(16, 'Pest megye', '2005-01-08'),
(17, 'Biatorbágy', '2004-12-13'),
(18, 'Csepel', '2004-07-31'),
(19, 'XVI. kerület', '2004-12-31'),
(20, 'X. kerület', '2004-12-28'),
(21, 'Pilisborosjenő', '2005-03-21'),
(22, 'XXII. kerület', '2005-02-24'),
(23, 'Vértesszőlős', '2005-01-10'),
(24, 'XXII. kerület', '2005-03-29'),
(25, 'Salgótarján', '2005-03-10'),
(26, 'III. kerület', '2005-03-02'),
(27, 'Horány-Szigetmonostor', '2005-03-02'),
(28, 'Sződ', '2005-02-19'),
(29, 'Süttő', '2005-02-13'),
(30, 'Maglód', '2005-02-11'),
(31, 'VII. kerület', '2004-12-11'),
(32, 'Solymár', '2004-11-25'),
(33, 'XV. kerület', '2004-11-15'),
(34, 'Göd', '2004-11-01'),
(35, 'Solymár', '2004-10-25'),
(36, 'XVI. kerület', '2004-10-24'),
(37, 'Szekszárd', '2004-10-02'),
(38, 'XIX. kerület', '2004-09-22'),
(39, 'Szentendre', '2004-09-09'),
(40, 'Telki', '2004-12-31'),
(41, 'XXIII. kerület', '2004-12-24'),
(42, 'V. kerület', '2005-04-12'),
(43, 'Pomáz', '2005-02-18'),
(44, 'Budaörs', '2004-10-26'),
(45, 'Fejér megye', '2005-01-21'),
(46, 'Mogyoród', '2004-12-31'),
(47, 'Kistarcsa', '2004-11-16'),
(48, 'XI. kerület', '2005-02-17'),
(49, 'Csepel', '2005-01-05'),
(50, 'XVI. kerület', '2005-02-18'),
(51, 'Törökbálint', '2005-04-23'),
(52, 'Székesfehérvár', '2005-02-19'),
(53, 'XXI. kerület', '2005-02-15'),
(54, 'Pusztazámor', '2005-02-02'),
(55, 'XI. kerület', '2005-01-02'),
(56, 'Üröm ', '2004-12-31'),
(57, 'Szigetszentmiklós', '2004-12-07'),
(58, 'XXII. kerület', '2004-11-11'),
(59, 'Pilisborosjenő', '2004-09-02'),
(60, 'Gyulafirátót', '2004-08-31'),
(61, 'Mezőkövesd', '2004-12-30'),
(62, 'III. kerület', '2005-04-25'),
(63, 'Lupa', '2005-03-24'),
(64, 'Dunakeszi', '2005-02-28'),
(65, 'Eger', '2005-02-28'),
(66, 'XVII. kerület', '2005-02-24'),
(67, 'XX. kerület', '2005-01-12'),
(68, 'XXI. kerület', '2005-01-02'),
(69, 'XVIII.ker', '2004-07-13'),
(70, 'Budaörs', '2004-12-15'),
(71, 'VIII. kerület', '2005-01-12'),
(72, 'XVIII. kerület', '2004-10-03'),
(73, 'IV. kerület', '2005-02-14'),
(74, 'XXII. kerület', '2005-04-20'),
(75, 'XIV. kerület', '2005-04-14'),
(76, 'Jászszentandrás', '2005-03-27'),
(77, 'XVIII. kerület', '2005-03-19'),
(78, 'Gyál', '2005-02-21'),
(79, 'Göd', '2005-02-12'),
(80, 'Öttevény', '2004-12-31'),
(81, 'Maglód', '2004-12-16'),
(82, 'Pilisszentlászló', '2004-12-10'),
(83, 'Szentendre', '2004-11-11'),
(84, 'II. kerület', '2004-11-08'),
(85, 'XI. kerület', '2004-10-09'),
(86, 'XX. kerület', '2004-03-01'),
(87, 'X. kerület', '2005-04-18'),
(88, 'V. kerület', '2005-04-08'),
(89, 'Miskolc', '2005-01-29'),
(90, 'Esztergom-Kertváros ', '2005-01-12'),
(91, 'XI. kerület', '2005-01-03'),
(92, 'XX. kerület', '2005-03-11'),
(93, 'XII. kerület', '2005-03-30'),
(94, 'XII. kerület', '2005-02-08'),
(95, 'XI. kerület', '2005-04-06'),
(96, 'Budaörs', '2005-02-02'),
(97, 'XII. kerület', '2004-11-18'),
(98, 'Szentlőrinc', '2005-02-27'),
(99, 'XV. kerület', '2004-10-15'),
(100, 'Hegyhátszentjakab', '2004-11-29'),
(101, 'Pilisszántó', '2004-10-27'),
(102, 'XV. kerület', '2004-12-01'),
(103, 'Szendehely', '2004-12-25'),
(104, 'Mende', '2004-12-17'),
(105, 'XV. kerület', '2005-03-28'),
(106, 'XIII. kerület', '2005-03-10'),
(107, 'XVI. kerület', '2005-03-06'),
(108, 'Vecsés', '2005-01-14'),
(109, 'Budaliget', '2004-11-09'),
(110, 'XX. kerület', '2005-02-26'),
(111, 'Miskolc', '2005-01-25'),
(112, 'Hajógyári sziget', '2004-08-20'),
(113, 'XVIII. kerület', '2005-04-05'),
(114, 'XI. kerület', '2004-09-06'),
(115, 'Tata', '2005-03-12'),
(116, 'XVI. kerület', '2005-02-15'),
(117, 'Érdliget', '2005-01-03'),
(118, 'XXI. kerület', '2004-12-31'),
(119, 'Balmazújváros', '2004-12-25'),
(120, 'Hajdúszoboszló', '2004-12-24'),
(121, 'XII. kerület', '2004-12-20'),
(122, 'XI. kerület', '2004-12-09'),
(123, 'XII. kerület', '2004-12-03'),
(124, 'XVI. kerület', '2004-11-18'),
(125, 'II. kerület', '2004-11-08'),
(126, 'XII. kerület', '2004-09-09'),
(127, 'Szentes', '2004-09-08'),
(128, 'XV. kerület', '2004-08-28'),
(129, 'Páty', '2004-08-26'),
(130, 'XIII. kerület', '2004-08-23'),
(131, 'Szentendrei sziget', '2004-07-11'),
(132, 'XI. kerület', '2004-12-11');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kutya`
--

CREATE TABLE `kutya` (
  `sor` int(11) NOT NULL,
  `fajta` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `nem` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `kor` float DEFAULT NULL,
  `neve` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kutya`
--

INSERT INTO `kutya` (`sor`, `fajta`, `nem`, `kor`, `neve`) VALUES
(1, 'airedale terrier ', 'szuka', 12, 'Akela'),
(2, 'airedale terrier ', 'kan', 1.5, 'Tódor'),
(3, 'airedale terrier ', NULL, 6, 'Pamacs'),
(4, 'airedale terrier ', 'szuka', 1.5, 'Moki'),
(5, 'akita', NULL, NULL, 'Tapi'),
(6, 'akita', 'kan', 0.6, 'Tüske'),
(7, 'akita', 'kan', 8, 'Brúnó'),
(8, 'akita keverék', 'szuka', 0.6, 'Dorka'),
(9, 'angol buldog', 'szuka', 6, 'Gina'),
(10, 'angol buldog', 'kan', 2, 'Nons'),
(11, 'angol buldog', 'kan', NULL, 'Bogár'),
(12, 'angol buldog', 'szuka', NULL, 'Csipisz'),
(13, 'angol szetter', 'szuka', NULL, 'Marcipán'),
(14, 'angol szetter', 'kan', NULL, 'Picasso'),
(15, 'angol véreb', NULL, 0.8, 'Dolly'),
(16, 'argentin dog ', NULL, 0.2, 'Cindy'),
(17, 'argentin dog ', 'kan', NULL, 'Plútó'),
(18, 'argentin dog ', 'kan', 0.5, 'Vili'),
(19, 'argentín dog staffordshire terrier keverék', 'kan', 0.7, 'Geri'),
(20, 'argentín dog staffordshire terrier keverék', 'kan', 0.8, 'Pamacs'),
(21, 'basset hound ', 'kan', NULL, 'Néró'),
(22, 'basset hound ', 'szuka', 1, 'Bella'),
(23, 'basset hound ', 'szuka', 0.4, 'Nelli'),
(24, 'beagle', 'kan', NULL, 'Brúnó'),
(25, 'beagle', 'szuka', 3, 'Sziszi'),
(26, 'beagle', 'szuka', 1.5, 'Tódi'),
(27, 'beagle', 'kan', 0.5, 'Hops'),
(28, 'beagle', 'kan', 0.5, 'Vándor'),
(29, 'beagle', NULL, 0.1, 'Maci'),
(30, 'beagle', 'szuka', 0.5, 'Lilla'),
(31, 'beagle', 'kan', 8.5, 'Brutus'),
(32, 'beagle', 'szuka', NULL, 'Pötyi'),
(33, 'beagle', NULL, NULL, 'Zsebi'),
(34, 'beagle', NULL, NULL, 'Cipi'),
(35, 'beagle', 'kan', 0.7, 'Herceg'),
(36, 'beagle', 'kan', 0.8, 'Marci'),
(37, 'beagle', 'szuka', 0.7, 'Fáni'),
(38, 'beagle', 'szuka', 0.8, 'Dorka'),
(39, 'beagle', 'szuka', 0.8, 'Topi'),
(40, 'bearded collie', NULL, 11, 'Bodza'),
(41, 'bearded collie ', 'kan', 8, 'Boglya'),
(42, 'belga juhász ', 'kan', 0.8, 'Bogyó'),
(43, 'belga juhász ', 'szuka', 1.5, 'Bubu'),
(44, 'belga juhász ', 'kan', NULL, 'Pözsó'),
(45, 'belga juhász keverék', 'kan', 0.9, 'Fickó'),
(46, 'belga juhász keverék', 'szuka', 10, 'Piri'),
(47, 'belga juhász keverék', 'kan', 3, 'Rocky'),
(48, 'bernáthegyi', NULL, NULL, 'Rocky'),
(49, 'bernáthegyi', 'kan', 5, 'Aladár'),
(50, 'bernáthegyi keverék', NULL, 0.1, 'Viktória'),
(51, 'berni pásztor', 'szuka', 5, 'Dini'),
(52, 'berni pásztor', 'szuka', 0.9, 'Fáni'),
(53, 'berni pásztor', 'kan', 1, 'Rocky'),
(54, 'berni pásztor', 'szuka', 0.5, 'Dorka'),
(55, 'berni pásztor', 'kan', 2, 'Dani'),
(56, 'berni pásztor', 'kan', 8, 'Bokszos'),
(57, 'berni pásztor', 'szuka', 3, 'Bogyó'),
(58, 'berni pásztor', 'szuka', NULL, 'Nelli'),
(59, 'berni pásztor', 'kan', 5, 'Johny'),
(60, 'berni pásztor', 'szuka', 2, 'Ági'),
(61, 'berni pásztor skótjuhász keverék ', 'szuka', NULL, 'Fáni'),
(62, 'boxer', 'szuka', 2, 'Fanni'),
(63, 'boxer', 'kan', 2, 'Artúr'),
(64, 'boxer', NULL, 0.5, 'Albert'),
(65, 'boxer', 'szuka', 3, 'Bátor'),
(66, 'boxer', 'kan', 4, 'Chester'),
(67, 'boxer', NULL, 8, 'Fanni'),
(68, 'boxer', NULL, NULL, 'Franny'),
(69, 'boxer', 'kan', 5, 'Marci'),
(70, 'boxer keverék ', 'kan', NULL, 'Maszat'),
(71, 'bullterrier', 'szuka', 0.9, 'Süti'),
(72, 'briard', 'kan', NULL, 'Soma'),
(73, 'cavalier spániel', 'szuka', NULL, 'Bogyó'),
(74, 'cocker spániel', NULL, NULL, 'Buffy'),
(75, 'cocker spániel', 'kan', 2, 'Cottó'),
(76, 'cocker spániel', 'szuka', 0.5, 'Izidor'),
(77, 'cocker spániel', 'szuka', 14, 'Fáncsi'),
(78, 'cocker spániel', 'szuka', NULL, 'Fanni'),
(79, 'cocker spániel', 'szuka', 9, 'Olívia'),
(80, 'cocker spániel', 'kan', 8, 'Fred'),
(81, 'cocker spániel', 'kan', 5, 'Matyi'),
(82, 'cocker spániel', 'szuka', 4, 'Luna'),
(83, 'cocker spániel', 'szuka', 3, 'Bogáncs'),
(84, 'cocker spániel', 'szuka', 2, 'Boci'),
(85, 'cocker spániel', 'szuka', 6, 'Rekoba'),
(86, 'cocker spániel-uszkár keverék', NULL, NULL, 'Bogáncs'),
(87, 'collie', 'szuka', 5, 'Süti'),
(88, 'collie', 'szuka', 4, 'Csutak'),
(89, 'collie', 'szuka', 1.5, 'Gina'),
(90, 'collie', 'szuka', 2, 'Léna'),
(91, 'collie', 'szuka', NULL, 'Lilla'),
(92, 'collie keverék', 'kan', 1, 'Dodó'),
(93, 'Csau-csau', NULL, 0.1, 'Brúnó'),
(94, 'csau-csau keverék', 'szuka', 4, 'Szőrmók'),
(95, 'csivava-tacskó keverék', 'szuka', 8, 'Léna'),
(96, 'csivava yorkshire terrier keverék', NULL, 1, 'Dönci'),
(97, 'csivava', 'szuka', 0.3, 'Kati'),
(98, 'dalmata', 'szuka', 8, 'Bagó'),
(99, 'dalmata', 'kan', 6, 'Csoma'),
(100, 'doberman', 'szuka', 5, 'Szandra'),
(101, 'doberman', 'kan', 2, 'Jimmy'),
(102, 'erdélyi kopó tacskó keverék', 'kan', 4, 'Krőte'),
(103, 'erdélyi kopó', 'szuka', 3, 'Kajak'),
(104, 'erdélyi kopó', 'kan', 5, 'Ugri'),
(105, 'fila', 'kan', 7, 'Tockos'),
(106, 'foxterrier', 'szuka', 0.8, 'Bogár'),
(107, 'foxterrier', 'szuka', 0.5, 'Hádész'),
(108, 'foxterrier', 'kan', 6, 'Roxi'),
(109, 'foxterrier', 'szuka', 0.2, 'Mókus'),
(110, 'foxterrier keverék', NULL, NULL, 'Fillér'),
(111, 'foxterrier és palotakutya keverék', 'kan', 0.6, 'Kanóc'),
(112, 'foxterrier keverék', 'szuka', 2, 'Bogi'),
(113, 'francia buldog', 'kan', 1, 'Buck'),
(114, 'francia buldog', NULL, 1, 'Berci'),
(115, 'golden retriever', 'kan', NULL, 'Picúr'),
(116, 'golden retriever', 'kan', 0.3, 'Topi'),
(117, 'golden retriever', 'szuka', 0.6, 'Zsömi'),
(118, 'golden retriever', 'szuka', 8, 'Leila'),
(119, 'golden retriever', 'szuka', 5, 'Mackó'),
(120, 'golden retriever', 'kan', 5, 'Artúr'),
(121, 'golden retriever', 'kan', 0.6, 'Bobi'),
(122, 'golden retriever', 'szuka', 4, 'Zsömi'),
(123, 'golden retriever', 'szuka', 4, 'Csuvi'),
(124, 'golden retriever', 'kan', 1, 'Picúr'),
(125, 'golden retriever', 'szuka', 0.5, 'Csuvi'),
(126, 'golden retriever', 'szuka', 5.5, 'Betyár'),
(127, 'golden retriever', NULL, NULL, 'Alex'),
(128, 'golden retriever', NULL, NULL, 'Pici'),
(129, 'golden retriever', 'kan', 0.3, 'Csipke'),
(130, 'golden retriever', 'szuka', 1.5, 'Buksi'),
(131, 'golden retriever', 'szuka', 3.5, 'Csibi'),
(132, 'golden vizsla keverék', 'kan', 0.9, 'Morgó');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `eltunt`
--
ALTER TABLE `eltunt`
  ADD PRIMARY KEY (`sor`);

--
-- A tábla indexei `kutya`
--
ALTER TABLE `kutya`
  ADD PRIMARY KEY (`sor`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `eltunt`
--
ALTER TABLE `eltunt`
  ADD CONSTRAINT `fk_eltunt_kutya` FOREIGN KEY (`sor`) REFERENCES `kutya` (`sor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
