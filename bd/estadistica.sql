-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2024 a las 20:37:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estadistica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancun`
--

CREATE TABLE `cancun` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cancun`
--

INSERT INTO `cancun` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'CAPCCD07', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-9100 8GB WIN 10 PRO SSD 240', '', '0', 'HP', '', '60', 'HP', '', '60', '', '', '', '', '', '', '1-8', 'CAMARA 8 NO SE VE', '87.5', 'MERAKI', 'NINGUNA', '90'),
(2, 'CAPCCD01', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-9100 4GB WIN 10 PRO 22H2 HDD  1TB ', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '9-16', 'CAMARA 9 NO SE VE', '87.5', 'SWITCH', 'NINGUNA', '90'),
(3, 'CAPCCD02', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-9100 4 GB WIN 10 PRO 22H2 HDD 1TB ', '', '60', 'HP', '', '60', 'HP', '', '60', '', '', NULL, '', '', NULL, '17-24', 'NINGUNA', '100', 'NODOS', 'FALTA UN NODO PARA IMPRESORA', '88.89'),
(4, 'CAPCCD03', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI-9100 4GB WIN 10 PRO  23H2  HHD 1TB', '', '60', 'HP ', '', '60', 'HP ', '', '60', '', '', NULL, '', '', NULL, '25-32', 'CAMARA 26 NO SE VE, 27,28 y 29', '37.5', 'ACCES POINT', 'NINGUNA', '90'),
(5, 'CAPCCD04', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-9100 4 GB WIN 10PRO 22H2 SSD 120 GB', '', '60', 'HP', '', '60', 'HP', '', '60', '', '', NULL, '', '', NULL, 'DVR', 'PROVICION', '90', '', '', ''),
(6, 'CAPCCD05', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-9100 4GB WIN 10 PRO HDD 1TB', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, 'DISCO DURO', '2 HHD 8TB', '90', '', '', ''),
(7, 'CAPCCD06', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI-9100 4GB WIN 10 PRO 23H2 HHD 1TB', '', '0', 'HP', '', '0', 'HP', '', '0', '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '2 ', '90', '', '', ''),
(8, 'CAPCCD08', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-9100 4 GBWIN 11 PRO HDD 1TB', '', '60', 'HP', '', '60', 'HP', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'CAMNCD02', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'CAMNCD04', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'CAMNCD01', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'CAMNCD03', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'CAMNCD05', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'CAMNCD06', 'CEDIS', 'MONITOR', 'HP', 'V194 ', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'CAMNCD07', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'CAMNCD08', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'CAIMCD01', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'CAIMCD02', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'CAIMCD03', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'CAIMCD04', 'CEDIS', 'IMPRESORA', 'HP', 'LASER JET PRO MFP M521DN', 'IMPRESORA MULTIFUNCIONAL MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'CAHHCD01', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'CAHHCD02', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(23, 'CAHHCD03', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(24, 'CANBCD01', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS 1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(25, 'CANBCD02', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(26, 'CANBCD03', 'CEDIS', 'NB NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(27, 'CANBCD04', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(28, 'CANBCD05', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(29, 'CANBCD06', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(30, 'CANBCD07', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(31, 'CANBCD08', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(32, 'CAMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MX64', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(33, 'CALCCD01', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'Escaneo de códigos de barras 1D', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(34, 'CALCCD02', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'Escaneo de códigos de barras 1D', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(35, 'CALCCD03', 'COMPRAS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'Escaneo de códigos de barras 1D', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chihuahua`
--

CREATE TABLE `chihuahua` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chihuahua`
--

INSERT INTO `chihuahua` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'CHPCCD01', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'CI5-4460 8GB WIN10 PRO 22H2 SSD 240GB ', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 'CHPCCD02', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-4460 8GB WIN10 PRO 22H2 SSD 240GB ', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(3, 'CHPCCD03', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-4460 8GB WIN10 PRO 22H2 SSD 120GB(HP)', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(4, 'CHPCCD04', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-4460 8GB WIN10 PRO 22H2 SSD 120GB(HP)', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(5, 'CHPCCD05', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3', 'CI5-9500 4GB WIN11 PRO HDD 1TB', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(6, 'CHMNGT01', 'CHIHUAHUA', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(7, 'CHMNCD02', 'CHIHUAHUA', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(8, 'CHMNCD03', 'CHIHUAHUA', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'CHMNCD04', 'CHIHUAHUA', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'CHIMCD01', 'CEDIS', 'IMPRESORA', 'HP', 'LaserJet Enterprise M604', 'IMPRESORA MONOCROMATICA ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'CHSCCD01', 'CEDIS', 'ESCANER', 'HP', 'Scanjet 300', 'Color negro', '', '75', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'CHHHCD01', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'CHLACD01', 'CEDIS', 'LAPTOP', 'ACER', 'ASPIRE ES1-5', 'AMD E1-6010 RADEON R2 4GB WIN10 HOME SL 22H2 HDD 500GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'CHNBGT01', 'CHIHUAHUA', 'NOBREAK', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'CHNBCD02', 'CHIHUAHUA', 'NOBREAK', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'CHNBCD03', 'CHIHUAHUA', 'NOBREAK', '', 'NO TIENE', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'CHNBCD04', 'CHIHUAHUA', 'NOBREAK', '', 'NO TIENE', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'CHMXCD01', 'CD CEDIS', 'MX FIREWALL', 'CISCO', 'MX64', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'CHIMCD02', 'CD CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '75', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cordoba`
--

CREATE TABLE `cordoba` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cordoba`
--

INSERT INTO `cordoba` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'CRMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MERAKI MX67', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuernavaca`
--

CREATE TABLE `cuernavaca` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuernavaca`
--

INSERT INTO `cuernavaca` (`Id`, `clave`, `area`, `usuario`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'CVPCCD03', 'CEDIS', '', '', 'HP', '280 G9', 'CI3-12100 8GB WIN11 PRO 23H2 SSD NVME 256 GB', '', '100', 'HP', '', '100', 'HP', '', '100', '', '', NULL, '', '', NULL, '1 al 8', 'NUEVAS', '100', 'MERAKI', 'NUEVO', '100'),
(2, 'CVPCCD02', 'CEDIS', '', '', 'HP', '280 G9', 'CI3-12100 8GB WIN11 PRO 23H2 SSD NVME 256 GB', '', '100', 'HP', '', '100', 'HP', '', '100', '', '', NULL, '', '', NULL, '9-16', 'NUEVAS', '100', 'SWITCH', 'NUEVO', '100'),
(3, 'CVPCCD01', 'CEDIS', '', '', 'HP', '280 G9', 'CI3-12100 8GB WIN11 PRO 23H2 SSD 256GB', '', '100', 'HP', '', '100', 'HP', '', '100', '', '', NULL, '', '', NULL, '17-24', 'NUEVAS', '100', 'NODOS', '11 NODOS NUEVOS', '100'),
(4, 'CVPCCD04', 'CEDIS', '', '', 'HP', '280 G3 SFF', 'CI5-9500 8GB WINDOWS 10 PRO 22H2 SSD 240GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '25-32', 'CAMARAS NUEVAS', '100', 'ACCES POINT', 'NINGUNA', '90'),
(5, 'CVPCCD05', 'CEDIS', '', '', 'LENOVO', 'M92P', 'CI5-3470 12GB WINDOWS 10 PRO 22H2 SSD 240GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '1 al 8', 'DVR 2\r\nCAMARAS NUEVAS', '100', '', '', ''),
(6, 'CVPCCD06', 'CEDIS', '', '', 'LENOVO', 'M79', 'AMD A8 PRO-7600B 8GB WINDOWS 10 PRO 22H2 SSD 240GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '9-16', 'DRV 2\r\nCAMARAS NUEVAS', '100', '', '', ''),
(7, 'CVPCCD07', 'CEDIS', '', '', 'ENSAMBLADA', 'NA', 'CI3-3220 8GB WINDOWS 10 PRO 22H2 SSD 240GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '17-24', 'DVR 2\r\nCAMARAS NUEVAS', '100', '', '', ''),
(8, 'CVPCCD08', 'CEDIS', '', '', 'ENSAMBLADA', 'ENSAMBLADO', 'Ci3-3220 8GB WIN10 PRO 22H2 SSD 120GB', '', '60', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '25-27', 'DVR2\r\nCAMARAS NUEVAS', '100', '', '', ''),
(9, 'CVMNCD01', 'CEDIS', '', '', 'HP', 'P22V G5', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DVR', '2 DVR 32 CANALES NUEVOS', '100', '', '', ''),
(10, 'CVMNCD02', 'CEDIS', '', '', 'HP', 'P22V G5', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DISCO DURO', '4 HHD 8TB NUEVOS', '100', '', '', ''),
(11, 'CVMNCD03', 'CEDIS', '', '', 'HP', 'P22V G5', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '4 NUEVAS', '100', '', '', ''),
(12, 'CVMNCD04', 'CEDIS', '', 'MONITOR', 'HP', 'V214B', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'CVMNCD05', 'CEDIS', '', 'MONITOR', 'DELL', 'E2223HV', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'CVMNCD06', 'CEDIS', '', 'MONITOR', 'LENOVO', 'TYPE 3024', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'CVMNCD07', 'CEDIS', '', 'MONITOR', 'HP', 'V214B', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'CVMNCD08', 'CEDIS', '', 'MONITOR', 'ACER', 'V206HQL', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'CVIMCD01', 'CEDIS', '', 'IMPRESORA', 'CANON', 'D1620', 'MULTIFUNCIONAL CANON D1620 LASER MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'CVNBCD01', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'CVNBCD02', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'CVNBCD03', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'CVNBCD04', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'CVNBCD05', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(23, 'CVNBCD06', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(24, 'CVNBCD07', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(25, 'CVNBCD08', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(26, 'CVNBCD09', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT1000GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(27, 'CVNBCD10', 'CEDIS', '', 'NOBREAK', 'CYBERPOWER', 'UT1000GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(28, 'CVMXCD01', 'CEDIS', '', 'FIREWALL', 'CISCO', 'MERAKI MX67', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(29, 'CVLCCD01', 'CEDIS', '', 'LECTOR CODIGO DE BARRAS', 'HONEYWELL', 'HH490', 'LECTOR INALAMBRICO 1D/2D INCLUYE BASE SKU: HH490-R1-1USB-1-N', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(30, 'CVLCCD02', 'CEDIS', '', 'LECTOR CODIGO DE BARRAS', 'HONEYWELL', 'HH490', 'LECTOR INALAMBRICO 1D/2D INCLUYE BASE SKU: HH490-R1-1USB-1-N ', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(31, 'CVLCCD03', 'CEDIS', '', 'LECTOR CODIGO DE BARRAS', 'HONEYWELL', 'HH490', 'LECTOR INALAMBRICO 1D/2D INCLUYE BASE SKU: HH490-R1-1USB-1-N ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(32, 'CVLCCD04', 'CEDIS', '', 'LECTOR CODIGO DE BARRAS', 'HONEYWELL', 'HH490', 'LECTOR INALAMBRICO 1D/2D INCLUYE BASE SKU: HH490-R1-1USB-1-N ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `culiacan`
--

CREATE TABLE `culiacan` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `culiacan`
--

INSERT INTO `culiacan` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'CLLACD01', 'CEDIS', 'LAPTOP', 'LENOVO', 'B40-80', 'CI3-5005 4GB WIN10 PRO ', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 'CLPCCD01', 'CD CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'TRUE BASIX', '', '', '50', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(3, 'CLMNCD01', 'CD CEDIS', 'MN MONITOR', 'LG', '19M38A', '', '', '50', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(4, 'CLIMCD01', 'CD CEDIS', 'IMPRESORA', 'HP', 'LASERJET PRO M102W', 'IMPRESORA MULTIFUNCIONAL MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(5, 'CLNBCD01', 'CD CEDIS', 'NB NOBREAK', 'SMARTBITT', 'NB 500', '', '', '40', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(6, 'CLIMCD02', 'CD CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(7, 'CLIMCD03', 'CD CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(8, 'CLPCCD02', 'CD CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 4GB  WIN 10 PRO ', '', '75', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'CLPCCD03', 'CD CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'CLPCCD03', 'CI3-4170 4GB WIN 7  ULTIMATE', '', '50', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'CLPCCD04', 'CD CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', '', '', '', '50', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'CLMNCD02', 'CD CEDIS', 'MN MONITOR', 'LG', '19M38A', '', '', '75', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'CLMNCD03', 'CD CEDIS', 'MN MONITOR', 'LG', '19M38A', '', '', '75', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'CLMNCD04', 'CD CEDIS', 'MN MONITOR', 'LG', '19M38A', '', '', '75', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'CLMXCD01', 'CD CEDIS', 'MX FIREWALL', 'CISCO', 'MX64', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guadalajara`
--

CREATE TABLE `guadalajara` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `guadalajara`
--

INSERT INTO `guadalajara` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'GDPCCD01', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN 10 PRO 22H2 SSD 240 GB', '', '80', 'HP PR1101U', '', '80', 'NETSCROLL 120', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 'GDPCCD02', 'CEDIS', 'PC ESCRITORIO', 'HP', 'HP 280 G3 SFF', 'CI5-9500 4GB WIN 10 PRO ', '', '60', 'LOGITECH YU0042', '', '60', 'LOGITECH M-U0026', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(3, 'GDPCCD03', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN 10 PRO ', '', '60', 'LOGITECH YU0042', '', '60', 'LOGITECH M-U0026', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(4, 'GDPCCD04', 'CEDIS', 'PC ESCRITORIO', 'HP', 'HP PRO MINI 260 G9', 'CI3-1215U 8GB WIN 10 PRO  240 GB', '', '80', 'LOGITECH K120', '', '80', 'EASY LINE EL-993391', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(5, 'GDPCCD05', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'CI5-3330 8 GB WIN 10 PRO  240 GB', '', '60', 'HP PR1101U', '', '60', 'HP 125 WIRED MOUSE', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(6, 'GDPCCD06', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7- 3770 8GB WIN 10 PRO  240 GB', '', '60', 'HP PR1101U', '', '60', 'HP 125 WIRED MOUSE', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(7, 'GDPCCD07', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-8100 4GB WIN 11 RRO 23H2  240 GB', '', '60', 'HP 125 WIRED KEYBOARD', '', '60', 'EASY LINE EL-993391', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(8, 'GDPCCD08', 'CEDIS', 'PC ESCRITORIO', 'HP', ' 280 G3 SFF', 'CI3-8100 4 GB WIN 10 PRO 240GB', '', '60', 'HP 125 WIRED KEYBOARD', '', '60', 'HP 125 WIRED MOUSE', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'GDPCCD09', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-8100 4GB WIN 10 PR0  930 GB', '', '60', 'DELL KB212-B', '', '60', 'HP ', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'GDMNCD01', 'CEDIS', 'MONITOR', 'HP', 'P22V G4', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'GDMNCD02', 'CEDIS', 'MONITOR', 'HP', ' V214B', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'GDMNCD03', 'CEDIS', 'MONITOR', 'LG', '212NDRF59598', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'GDMNCD04', 'CEDIS', 'MONITOR', 'HP', 'HP P22V G4', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'GDMNCD05', 'CEDIS', 'MONITOR', 'DELL', 'E223C', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'GDMNCD06', 'CEDIS', 'MONITOR', 'HP', 'T3U81AA', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'GDMNCD07', 'CEDIS', 'MONITOR', 'LG', 'E1942CA', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'GDMNCD08', 'CEDIS', 'MONITOR', 'HP', '19Ka', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'GDMNCD09', 'CEDIS', 'MONITOR', 'HP', '19Ka', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'GDIMCD01', 'CEDIS', 'IMPRESORA', 'CANON', 'D1620 LASSER', 'IMPRESORA MULTIFUNCIONAL MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'GDIMCD02', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'GDIMCD02', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'GDIMCD03', 'CEDIS', 'IMPRESORA', 'ZEBRA', ' ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'GDIMCD04', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(23, 'GDHHCD01', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(24, 'GDHHCD02', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(25, 'GDHHCD03', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(26, 'GDNBCD01', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(27, 'GDNBCD02', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(28, 'GDNBCD03', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(29, 'GDNBCD04', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(30, 'GDNBCD05', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(31, 'GDNBCD06', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(32, 'GDNBCD07', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(33, 'GDMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MERAKI MX67', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(34, 'GDMXCD02', 'CEDIS', 'FIREWALL', 'CISCO', 'MX60', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(35, 'GDLCCD01', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Ghia', 'GSLWB1', 'GDLCCD01', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(36, 'GDLCCD02', 'CEDIS', 'LECTOR CODIGO DE BARRAS', '', 'ECLIPSE MS5145 LS USB', 'GDLCCD02', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(37, 'GDLCCD03', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Ghia', 'GDLCCD03', 'GDLCCD03', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(38, 'GDLCCD04', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'GDLCCD04', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hermosillo`
--

CREATE TABLE `hermosillo` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hermosillo`
--

INSERT INTO `hermosillo` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'HRPCCD01', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'CCI3-3220 16GB WIN10 PRO 22H2 120 GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 'HRPCCD02', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'CI5-4460 8GB WIN10 PRO 22H2 ', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(3, 'HRPCCD03', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'Vostro 3681', 'CI3-10105 8GB WIN10 PRO 22H2 ', '', '80', 'DELL', '', '80', 'DELL', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(4, 'HRPCCD04', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'Vostro 3681', 'CI3-10105 8GB WIN 10 PRO 22H2 ', '', '80', 'DELL', '', '80', 'DELL', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(5, 'HRPCCD05', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', '-', '', '60', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(6, 'HRPCCD06', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', '-', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(7, 'HRPCCD07', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', '-', '', '60', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(8, 'HRMNCD01', 'CEDIS', 'MONITOR', 'ACER', 'V226HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'HRMNCD02', 'CEDIS', 'MONITOR', 'ACER', 'V226HQL	', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'HRMNCD03', 'CEDIS', 'MONITOR', 'DELL', 'P2217', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'HRMNCD04', 'CEDIS', 'MONITOR', 'DELL', 'V226HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'HRMNCD05', 'CEDIS', 'MONITOR', 'ACER', 'V6 V206hq', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'HRMNCD06', 'CEDIS', 'MONITOR', 'ACER', 'V6 V206hql Bb', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'HRMNCD07', 'CEDIS', 'MONITOR', 'HP', 'V214b', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'HRIMCD01', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'HRIMCD02', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'HRHHCD01', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'HRHHCD02', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'HRNBCD01', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'HRNBCD02', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'HRNBCD03', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'HRNBCD04', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(23, 'HRNBCD05', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(24, 'HRNBCD06', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(25, 'HRNBCD07', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(26, 'HRMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MX60', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(27, 'HRLCCD01', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'HONEYWELL', 'VOYAGER 1200g', 'Lector de Código de Barras Láser 1D - incluye Cable USB y Base', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leon`
--

CREATE TABLE `leon` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `leon`
--

INSERT INTO `leon` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'LEPCCD01', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN 10 PRO 22H2  SSD 120 GB', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 'LEPCCD02', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'TRUE BASIX', 'CI3-4150 8GB WIN 10 PRO  HDD 1TB', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(3, 'LEPCCD03', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'PENTIUM G2010 8GB WIN 10 PRO 21H2 HDD 500GB', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(4, 'LEPCCD04', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-8100 4GB WIN 11 PRO 23H2', '', '60', 'HP', '', '60', 'HP', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(5, 'LEPCCD05', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-8100 4GB  WIN 11 PRO 23H2  120 GB ', '', '60', 'HP', '', '60', 'HP', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(6, 'LEPCCD06', 'CD CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF 4 GB ', 'CI3-8100 4GB WIN 10  21H1 HDD 1TB ', '', '60', 'HP', '', '60', 'HP', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(7, 'LEMNCD01', 'CEDIS', 'MONITOR', 'DELL', 'E2213c', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(8, 'LEMNCD02', 'CEDIS', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'LEMNCD03', 'CEDIS', 'MONITOR', 'DELL', 'E2213c', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'LEMNCD04', 'CEDIS', 'MONITOR', 'HP', '19Ka', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'LEMNCD05', 'CEDIS', 'MONITOR', 'AOC', 'e943Fws', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'LEMNCD06', 'CEDIS', 'MONITOR', 'HP', '19Ka', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'LEIMCD01', 'CEDIS', 'IMPRESORA', 'HP', ' LaserJet Pro M428fdw MFP', 'IMPRESORA MONOCROMATICA ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'LEIMCD02', 'CEDIS', 'IMPRESORA', 'HP', 'LASERJET M1132 MFP', 'IMPRESORA MULTIFUNCIONAL MONOCROMATICA', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'LEIMCD03', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'LEIMCD04', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'LEMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MERAKI MX67', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'LEMXCD02', 'CEDIS', 'FIREWALL', 'CISCO', 'MERAKI MX60', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'LELCCD01', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Ghia', 'LELCCD01', 'LELCCD01', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'LELCCD02', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Ghia', 'LELCCD02', 'LELCCD02', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'LEIMCD05', 'CD CEDIS', 'IMPRESORA', 'CANON', 'D1620', 'MULTIFUNCIONAL CANON D1620 LASER MONOCROMATICA', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'LEIMCD06', 'CD CEDIS', 'IMPRESORA', 'HP', 'M130FW', 'IMPRESORA LASER B/N ESCANER CAMA PLANA RED/USB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `merida`
--

CREATE TABLE `merida` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `merida`
--

INSERT INTO `merida` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'MRPCCD01', 'CEDIS', '', 'HP', 'PRO DESK 600 G1', 'CI7-4770 16 GB WIN 10 PRO SSD 240GB', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '1-8', 'NINGUNA', '100', 'MERAKI', 'NINGUNA', '90'),
(2, 'MRPCCD02', 'CEDIS', '', 'DELL', 'OPTIPLEX 3050 SFF', 'CI5-7500 8GB WIN 10 PRO 22H2 SSD 240GB', '', '80', 'DELL', '', '80', 'DELL', '', '80', '', '', NULL, '', '', NULL, '9-16', 'NINGUNA', '100', 'SWITCH', 'NINGUNA', '100'),
(3, 'MRPCCD03', 'CEDIS', '', 'DELL', 'VOSTRO ', 'CI3-10100 4GB 240 GB SSD WIN10 HOME ', '', '80', 'DELL', '', '80', 'DELL', '', '80', '', '', NULL, '', '', NULL, '17-24', 'NINGUNA', '100', 'NODOS', '1 NODO DAÑADO', '85.71'),
(4, 'MRPCCD04', 'CEDIS', '', 'HP', '280 G3 SFF', 'CI3 8GB WIN10 PRO 22H2 SSD 240 GB HP', '', '80', 'LOGITECH', '', '80', 'LOGITECH', '', '80', '', '', NULL, '', '', NULL, '25-32', 'CAMARA 29 EN BLANCO Y NEGRO', '87.5', 'ACCES POINT', '2', '100'),
(5, 'MRPCCD05', 'CEDIS', '', 'HP', '280 G5 SMALL', 'Ci3 8GB WIN10 PRO 22H2 SSD 240 GB HP', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, 'DVR', 'DAHUA', '100', '', '', ''),
(6, 'MRPCCD06', 'CEDIS', '', 'ENSAMBLADA', 'ACTIVE COOL', '', '', '60', 'LOGITECH', '', '80', 'LOGITECH', '', '80', '', '', NULL, '', '', NULL, 'DISCO DURO', '2 HHD 8TB', '100', '', '', ''),
(7, 'MRMNCD01', 'CEDIS', '', 'ACER', '5HQL ', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '2', '100', '', '', ''),
(8, 'MRMNCD02', 'CEDIS', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'MRMNCD03', 'CEDIS', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'MRMNCD04', 'CEDIS', 'MONITOR', 'ENSAMBLADA', 'STYLOS', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'MRMNCD05', 'CEDIS', 'MONITOR', 'HP', 'P22va', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'MRMNCD06', 'CEDIS', 'MONITOR', 'HP', 'P204v', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'MRIMCD01', 'CEDIS', 'IMPRESORA', 'CANON', 'ImageCLASS', 'IMPRESORA MONOCROMATICA ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'MRIMCD02', 'CEDIS', 'IMPRESORA', 'HP', 'M521', 'POSIBLE FALLA DE FUSOR', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'MRIMCD03', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'MRIMCD04', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'MRHHCD01', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'MRHHCD02', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'MRHHCD03', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'MRHHCD04', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'MRNBCD01', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'MRNBCD02', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(23, 'MRNBCD03', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(24, 'MRNBCD04', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(25, 'MRNBCD05', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(26, 'MRNBCD06', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(27, 'MRMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MX67', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(28, 'MRLCCD01', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'Escaneo de códigos de barras 1D', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(29, 'MRHHCD05', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'Escaneo de códigos de barras 1D', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monterrey`
--

CREATE TABLE `monterrey` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `monterrey`
--

INSERT INTO `monterrey` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'MTPCCD01', 'CEDIS', 'CAMARAS', 'HP', 'TPC-P069-SF', 'CI-10100 8GB WIN 11 PRO 23H2 SSD 256 GB', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '1-8', 'las maras 2-4 estan fuera de linea por temas de sulfato en el cableado y el resto de las camaras se ven borrosas o les han colocado material frente a ellas ', '30', '', '', ''),
(2, 'MTPCCD02', 'CEDIS', 'CAMARAS', 'HP', 'HPTPC-W049-SF', 'CI3-8100 12GB WIN 10 PRO SSD 120 GB', '', '80', 'HP ', '', '80', 'HP ', '', '80', '', '', NULL, '', '', NULL, '9-16', 'las camaras 9 - 16 estan fuera de linea, camaras 10 esta muy borrosa y la camara 11 se ve pero tiene un objeto que obstrulle la vision el resto de las camaras se ven ', '50', '', '', ''),
(3, 'MTPCCD03', 'CEDIS', 'CAMARAS', 'ENSAMBLADA', 'ACTIVE COOL', 'CI-3330 8GB  8GB WIN 7  HDD 500 GB', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '17-24', 'la camara 17 tiene vision el resto de camaras no se ven ', '5', '', '', ''),
(4, 'MTPCCD04', 'CEDIS', 'CAMARAS', 'HP', 'HPTPC-P069-SF', 'CI3-10100 8GB WIN 11 PRO 23H2 SSD 256 ', '', '80', 'HP ', '', '80', 'HP ', '', '80', '', '', NULL, '', '', NULL, '25 - 32', 'ninguna camara se ve ', '0', '', '', ''),
(5, 'MTPCCD05', 'CEDIS', 'REDES', 'HP', 'HP TPC-W049-SF', 'CI3-8100 4GB WIN 10 PRO 22H2  HDD 1TB', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', '', 'SWITCH	TP-LINK	16 PUERTOS ', 'el swich es base 10/100 el cual ya no es funcional para el tipo de operacion actal ', '40'),
(6, 'MTPCCD06', 'CEDIS', 'PC ESCRITORIO', 'HP', 'HP280G2SFF', '-', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(7, 'MTPCCD07', 'CEDIS', 'PC ESCRITORIO', 'HP', 'HP280G2SFF', '-', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(8, 'MTMNCD01', 'CEDIS', 'MONITOR', 'HP', 'HP P24 G4 23.8-INCH', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'MTMNCD02', 'CEDIS', 'MONITOR', 'HP', 'HP HSTND-9101-A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'MTLAAL01', 'ALMACEN', 'LAPTOP', 'LENOVO', 'ideapad 100-14IBD', 'CI3-5005 4GB WIN10 HOME HDD 500', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'MTMXCD02', 'CEDIS', 'FIREWALL', 'CISCO', 'MERAKI MX67', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'MTMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MX60', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'MTLCCD01', 'CD CEDIS', 'LC LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'Escaneo de códigos de barras 1D', '', '75', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'MTLCCD02', 'CD CEDIS', 'LC LECTOR CODIGO DE BARRAS', 'HONEYWELL', 'MS5145LS', 'Escaneo de códigos de barras 1D', '', '75', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'MTMNCD03', 'CD CEDIS', 'MN MONITOR', 'LG', '19EN33SA', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'MTNBCD01', '', '', 'ISB SOLA BASIC', 'NBKS 1000', '', 'no retiene carga ', '50', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL),
(17, 'MTIMCD01', 'CD CEDIS', 'IMPRESORA', 'CANON', 'ImageCLASS D1620', 'IMPRESORA MULTIFUNCIONAL MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'MTMNCD04', 'CD CEDIS', 'MN MONITOR', 'HP', 'HP P24 G4 23.8-INCH', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'MTMNCD05', 'CD CEDIS', 'MN MONITOR', 'HP', 'HP HSTND-9141-A', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'MTMNCD06', 'CD CEDIS', 'MN MONITOR', 'HP', 'HP HSTND-9141-A', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'MTMNCD07', 'CD CEDIS', 'MN MONITOR', 'HP', 'HP HSTND-9141-A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'MTNBCD02', 'CD CEDIS', 'NB NOBREAK', 'CYBERPOWER', 'UT550GU', '', '', '90', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(23, 'MTNBCD03', '', '', '', ' 5416R', '', 'no retiene caraga ', '50', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL),
(24, 'MTNBCD04', 'CD CEDIS', 'NB NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(25, 'MTNBCD05', 'CD CEDIS', 'NB NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(26, 'MTNBCD06', 'CD CEDIS', 'NB NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(27, 'MTIMCD02', 'CD CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '75', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oaxaca`
--

CREATE TABLE `oaxaca` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oaxaca`
--

INSERT INTO `oaxaca` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'OXPCCD01', 'CEDIS', '', 'HP', '280 G3 SFF', 'CI3-9100 4 GB WIN 10 PRO  22H2', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '1 al 8', 'CAMARA 8 NO SE VE', '87.5', 'MERAKI', 'NINGUNA', '90'),
(2, 'OXPCCD02', 'CEDIS', '', 'HP', '280 G3 SFF', 'CI3-910 4GB  WIN 10 PRO ', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '9-16', 'NINGUNA', '100', 'SWITCH', 'NINGUNA', '90'),
(3, 'OXPCCD03', 'CEDIS', '', 'HP', '280 G4 SFF', 'CI3-9100 4GB WIN 10 PRO 22H2', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '17-24', 'CAMARA 24 NO SE VE', '87.5', 'NODOS', 'NINGUNA', '100'),
(4, 'OXPCCD04', 'CEDIS', '', 'HP', '280 G4 SFF', 'CI3-9100 4GB WIN 10 PRO  22H2', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '25-32', 'CAMARA 25 Y 26 NO SE VEN', '75', 'ACCES POINT', 'NINGUNA', '100'),
(5, 'OXPCCD05', 'CEDIS', '', 'HP', '280 G4 SFF', 'CI3-9100 4GB WIN 11 PRO ', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, 'DVR', 'PROVICION', '90', '', '', ''),
(6, 'OXPCCD06', 'CEDIS', '', 'HP', '280 G4 SFF', 'CI3-9100 8GB WIN 10 PRO  22H2', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, 'DISCO DURO', '2 HHD 4GB', '90', '', '', ''),
(7, 'OXPCCD07', 'CEDIS', '', 'HP', '280 G4 SFF', 'CI3-9100 4 GB WIN 10 PRO 22H2', '', '60', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, 'FUENTES DE PODER', 'FUENTES DE PODER', '90', '', '', ''),
(8, 'OXMNCD01', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'OXMNCD02', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'OXMNCD03', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'OXMNCD04', 'CEDIS', 'MONITOR', 'HP', 'V14', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'OXMNCD05', 'CEDIS', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'OXMNCD06', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'OXMNCD07', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'OXMNCD08', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'OXIMCD01', 'CEDIS', 'IMPRESORA', 'HP', 'LaserJet Pro M521dn MFP', 'IMPRESORA MULTIFUNCIONAL MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'OXIMCD02', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'OXIMCD03', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'OXNBCD01', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'OXNBCD02', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'OXNBCD03', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'OXNBCD04', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(23, 'OXNBCD05', 'CEDIS', 'NB NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(24, 'OXNBCD06', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(25, 'OXNBCD08', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(26, 'OXNBCD09', 'CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(27, 'OXMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MX64', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pachuca`
--

CREATE TABLE `pachuca` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pachuca`
--

INSERT INTO `pachuca` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'PAPCCM01', 'COMPRAS', 'PC ESCRITORIO', 'HP', '600 G1 SFF', 'CI7-4770 8GB HDD 500GB WIN10 PRO 21H2', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 'PAPCCM02', 'COMPRAS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-8500 8GB SSD 240GB WIN10 PRO 22H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(3, 'PAPCCM03', 'COMPRAS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-8500 8GB SSD 240GB WIN10 PRO 21H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(4, 'PAPCCM04', 'COMPRAS', 'PC ESCRITORIO', 'DELL', '3050', 'CI5-7500 12GB SSD 240GB WIN10 PRO 21H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(5, 'PAPCCM05', 'COMPRAS', 'PC ESCRITORIO', 'DELL', '3050', 'CI3-8100 8GB HDD 1TB WIN10 PRO 21H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(6, 'PAPCCM06', 'COMPRAS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB SSD 240GB WIN10 PRO 21H2', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(7, 'PAPCCM07', 'COMPRAS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-8500 16GB HDD 500GB WIN10 PRO 21H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(8, 'PAPCCC01', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'HP', 'PRO ONE 400', 'CI7-9700T 8GB WIN10 PRO 22H2 SSD SN520 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'PAPCCC02', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN10 PRO 22H2 SSD 240GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'PAPCCC03', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN10 PRO SSD 22H2 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'PAPCCC04', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'PAPCCC05', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'ENSAMBLADA', 'TRUEBASIC', 'CI5-6400 12GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'PAPCCC06', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', '', 'ACTIVE COOL', 'CI5-3330 8GB WIN10 PRO 22H2  SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'PAPCCC07', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3050', 'CI5-7500 8GB WIN10PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'PAPCCC08', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'PAPCCC09', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'PAPCCC10', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'PAPCCC11', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 12GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'PAPCCC12', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 16GB WIN10 PRO 22H2 SSD 480GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'PAPCCC13', 'CREDITO Y COBRANZA', 'PC ESCRITORIO', '', 'NA', 'CI5-6400 8GB WIN10 PRO 22H2 SSD 120GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'PAPCPE01', 'PRECIOS ESPECIALES', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN10 PRO SSD 240GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'PAPCRH01', 'RECURSOS HUMANOS', 'PC ESCRITORIO', 'DELL', '7010', 'CI5-12400 8GB WIN10 PRO 21H2 SSD 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(23, 'PAPCRE01', 'ADMINISTRACION REFACCIONARIAS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'CI5-3330 8GB WIN10 PRO 22H2 SSD 120', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(24, 'PAPCSM01', 'SERVICIO MEDICO', 'PC ESCRITORIO', '', 'ACTIVE COOL', 'CI5-3330 12GB WIN10 PRO 22H2 HDD 500 GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(25, 'PAPCCO01', 'CONTABILIDAD', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3470', 'CI3-8100 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(26, 'PAPCCO02', 'CONTABILIDAD', 'PC ESCRITORIO', 'ENSAMBLADO', 'ACTIVE COOL', 'CI7-3770 8GB WIN10 PRO 22H2 SSD 240GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(27, 'PAPCCO03', 'CONTABILIDAD', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3470', 'CI3-8100 8GB WIN10 PRO 22H2 SSD 240GB KGT', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(28, 'PAPCCO04', 'CONTABILIDAD', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3470', 'CI3-8100 8GB WIN10 PRO 22H2 SSD 120GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(29, 'PAPCAU01', 'AUDITORIA', 'PC ESCRITORIO', 'HP', 'ELITE ONE 800 G3', 'CI7-6700 8GB WIN10 PRO 22H2 HDD 1TB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(30, 'PAPCTL01', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3681', 'CI5-10400 8GB WIN10 HOME SL SSD 240GB ', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(31, 'PAPCTL02', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3710', 'CI5-12400 8GB WIN10 PRO 21H2 SSD 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(32, 'PAPCTL03', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3710', 'CI5-12400 8GB WIN10 PRO 21H2 SSD 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(33, 'PAPCTL04', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3710', 'CI5-12400 8GB WIN10 PRO 21H2 SSD 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(34, 'PAPCTL05', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3710', 'CI5-12400 8GB WIN11 PRO 22H2 SSD 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(35, 'PAPCTL06', 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 4GB WIN10 PRO 22H2 SSD HP 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(36, 'PAPCTL07', 'TELEMARKETING', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN10 PRO 22H2 SSD HP 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(37, 'PAPCTL08', 'TELEMARKETING', 'PC ESCRITORIO', '', 'QCMT-05', 'CI3-4150 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(38, 'PAPCTL09', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI5-3330 12GB WIN10 PRO 22H2 SSD AD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(39, 'PAPCTL10', 'TELEMARKETING', 'PC ESCRITORIO', '', 'ENSAMBLADO', 'CI7-3770 12GB WIN10 PRO 22H2 SSD ADATA 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(40, 'PAPCTL11', 'TELEMARKETING', 'PC ESCRITORIO', 'ENSAMBLADA', 'ENSAMBLADA', 'CI5-3330 8GB WIN10 PRO 22H2 SSD HP 120GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(41, 'PAPCTL12', 'TELEMARKETING', 'PC ESCRITORIO', 'LENOVO', 'THINKCENTRE M900', 'CI7-6700 8GB WIN10 PRO 22H2 SSD 240GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(42, 'PAPCTL13', 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-8500 4GB WIN10 HOME 22H2 SSD KGT 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(43, 'PAPCTL14', 'TELEMARKETING', 'PC ESCRITORIO', 'LENOVO', 'THINK M900', 'CI7-6700 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(44, 'PAPCTL15', 'TELEMARKETING', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-2310 8GB WIN10 PRO 22H2 SSD 120GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(45, 'PAPCTL16', 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-8500 4GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(46, 'PAPCTL17', 'TELEMARKETING', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(47, 'PAPCTL18', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3050', 'CI5-7500 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(48, 'PAPCTL19', 'TELEMARKETING', 'PC ESCRITORIO', 'LENOVO', 'THINKCENTRE M900', 'CI7-6700 8GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(49, 'PAPCTL20', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3050', 'CI5-7500 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(50, 'PAPCTL21', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3050', 'CI5-7500 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(51, 'PAPCTL22', 'TELEMARKETING', 'PC ESCRITORIO', 'LENOVO', 'THINKCENTRE M900', 'CI7-6700 8GB WIN10 PRO 22H2 SSD 120GB (HP)', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(52, 'PAPCTL23', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'INSPIRON D09S', 'CI3-4170 8GB WIN10 PRO 22H2 SSD HP 240 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(53, 'PAPCTL24', 'TELEMARKETING', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3340 8GB WIN10 PRO 22H2 SSD 240GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(54, 'PAPCTL25', 'TELEMARKETING', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'PENTIUM G2030 8GB WIN10 PRO 22H2 SSD 120GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(55, 'PAPCTL26', 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 8GB WIN11 PRO 23H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(56, 'PAPCTL27', 'TELEMARKETING', 'PC ESCRITORIO', 'LENOVO', 'M900', 'CI7-6700 8GB WIN10 PRO 22H2 SSD 240gb', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(57, 'PAPCTL28', 'TELEMARKETING', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'CI5-3330 8GB WIN10 PRO 22H2 SSD 120GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(58, 'PAPCTL29', 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3710', 'CI5-12400 8GB WIN10 PRO 22H2 SSD 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(59, 'PAPCTL30', 'TELEMARKETING', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3300 8GB WIN10 PRO 22H2 SSD HP 120 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(60, 'PAPCTL31', 'TELEMARKETING', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN10 PRO 22H2 SSD 120GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(61, 'PAPCFI01', 'FINANZAS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 8GB WIN11 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(62, 'PAPCFI02', 'FINANZAS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 8gb WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(63, 'PAPCFI03', 'FINANZAS', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3020', 'CI5-13400 8GB WIN11 PRO 23H2 SSD 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(64, 'PAPCFI04', 'FINANZAS', 'PC ESCRITORIO', 'HP', '600 G1 SFF', 'CI7-4770 12GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(65, 'PAPCFI05', 'FINANZAS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 8GB WIN10 PRO 22H2 SSD 480GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(66, 'PAPCVT01', 'VENTAS', 'PC ESCRITORIO', 'ENSAMBLADA', 'TRUE BASIX', 'Ci3-3220 8GB WIN10 HOME 22H2 HDD 500GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(67, 'PAPCCE01', 'ADMINISTRACION CEDIS', 'PC ESCRITORIO', 'HP', '280 G3', 'CI5-9500 8GB WIN 10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(68, 'PAPCCE02', 'ADMINISTRACION CEDIS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3050', 'CI5-7500 8GB  WIN10 PRO 22H2 SSD 256GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(69, 'PAPCME01', 'MERCADOTECNIA', 'PC ESCRITORIO', 'HP', 'Z1 ENTRY TOWER G6', 'CI7-10700 64GB WIN11 PRO 23H2 SSD 512GB  T.G. 4GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(70, 'PAPCME02', 'MERCADOTECNIA', 'PC ESCRITORIO', 'HP', 'Z1 ENTRY TOWER G9', 'CI7-12700 32GB WIN11 PRO 23H2 SSD 512GB T.G. 4GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(71, 'PAPCME03', 'MERCADOTECNIA', 'PC ESCRITORIO', 'LENOVO', 'THINKSTATION P350', 'Ci7-11700 48GB WIN 11 PRO 23H2 SSD 512GB HDD 2TB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(72, 'PAPCVI01', 'VIGILANCIA', 'PC ESCRITORIO', 'ENSAMBLADO', 'NA', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(73, 'PAPCRM01', 'RECEPCION DE MATERIALES', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN10 PRO 21H2 HDD 1TB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(74, 'PAPCRM02', 'RECEPCION DE MATERIALES', 'PC ESCRITORIO', 'ENSAMBLADA', 'GETTECH', 'CI7-3770 8GB WIN10 PRO 21H2 HDD 1TB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(75, 'PAPCDE01', 'DEVOLUCIONES', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-4460 8GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(76, 'PAPCDE02', 'DEVOLUCIONES', 'PC ESCRITORIO', 'HP', '400 G7 SFF', 'CI3-10100 8GB SSD 256GB WIN10 PRO', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(77, 'PAPCDE03', 'DEVOLUCIONES', 'PC ESCRITORIO', 'HP', '400 G7 SFF', 'CI3-10100 8GB SSD 256GB WIN10 PRO', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(78, 'PAPCDE04', 'DEVOLUCIONES', 'PC ESCRITORIO', 'HP', '280 G3', 'CI5-8500 4GB WIN10 PRO 21H2 SSD 480GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(79, 'PAPCDE05', 'DEVOLUCIONES', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'PENTIUM G2010 8GB WIN10 PRO 22H2 HDD 1TB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(80, 'PAPCEM01', 'EMBARQUES', 'PC ESCRITORIO', 'LENOVO', 'THINKCENTRE M710S SFF', 'PENTIUM G4560 4GB WIN10 PRO 22H2 SSD 240GB (WD)', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(81, 'PAPCEM02', 'EMBARQUES', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-4460 8GB WIN10 PRO 22H2 SDD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(82, 'PAPCEM03', 'EMBARQUES', 'PC ESCRITORIO', '', 'NA', 'CI3-3220 8GB WIN10 PRO SSD 240GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(83, 'PAPCEM04', 'EMBARQUES', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI7-3770 16GB WIN10  22H2 SDD 240GB ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(84, 'PAPCEM05', 'EMBARQUES', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN10 PRO  22H2 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(85, 'PAPCEM06', 'EMBARQUES', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI3-3220 8GB WIN10 PRO 22H2 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(86, 'PAPCEM07', 'EMBARQUES', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN7 PRO SSD 240 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(87, 'PAPCAL01', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN10 PRO 22H2 SSD 120 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(88, 'PAPCAL02', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(89, 'PAPCAL03', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI3-3220 16GB WIN10 PRO 22H2SSD 120 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(90, 'PAPCAL04', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI3-7100 8GB WIN10 PRO 22H2SSD 120 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(91, 'PAPCAL05', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN10 PRO SSD 120 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(92, 'PAPCAL06', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 10GB WIN10 PRO 22H2  SSD 120 GB ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(93, 'PAPCAL07', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3340 8gb WIN10 PRO 22H2 SSD 120 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(94, 'PAPCAL08', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-4460 8GB WIN10 PRO 22H2SSD 120 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(95, 'PAPCAL09', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADO', 'NA', 'CI3-4150 8GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(96, 'PAPCAL10', 'ALMACEN', 'PC ESCRITORIO', 'HP', 'PRODESK 600', 'CI7-4770 8GB WIN10 PRO 22H2 ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(97, 'PAPCAL11', 'ALMACEN', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI3-3220 8GB WIN10 PRO 22H2 142 GB HDD', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(98, 'PAPCAL12', 'ALMACEN', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3050', 'CI5-7500 8GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(99, 'PAPCSC06', 'SURTIDO CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'CI3-4170 8GB WIN10 PRO SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(100, 'PAPCSC02', 'SURTIDO CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'Ci3-3220 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(101, 'PAPCSC03', 'SURTIDO CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'Ci5-3330 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(102, 'PAPCSC04', 'SURTIDO CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ENSAMBLADO', 'Ci5-3330 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(103, 'PAPCSC05', 'SURTIDO CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'Ci3-3220 4GB WIN10 PRO 22H2 SSD 120 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(104, 'PAPCSC01', 'SURTIDO CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'QUARONI', 'Ci5-4460 8GB 1IN10 PRO 22H2 SSD 120GB GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(105, 'PAPCSC07', 'SURTIDO CEDIS', 'PC ESCRITORIO', 'HP', '280 G3', 'Ci5-9500 8GB WIN10 PRO 22H2 240 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(106, 'PAPCSC08', 'SURTIDO CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-4460 8GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(107, 'PAPCMA01', 'REFACCIONARIA MADERO', 'PC ESCRITORIO', '', '', 'CI5-10505 8GB WINDOWS 10 PRO 22H2 SSD 512GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(108, 'PAPCMA02', 'REFACCIONARIA MADERO', 'PC ESCRITORIO', '', '', 'CI3-10105 8GB WINDOWS 10 PRO 22H2 SSD 256GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(109, 'PAPCMA03', 'REFACCIONARIA MADERO', 'PC ESCRITORIO', '', '', 'CI3-10105 8GB WINDOWS 10 PRO 22H2 SSD 256GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(110, 'PAPCMA04', 'REFACCIONARIA MADERO', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 8GB WIN10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(111, 'PAPCMI01', 'REFACCIONARIA MINERO', 'PC ESCRITORIO', 'HP', '280 G5 SFF', 'CI5-10505 8GB 512GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(112, 'PAPCMI02', 'REFACCIONARIA MINERO', 'PC ESCRITORIO', 'HP', '280 G5 SFF', 'CI3-10105 8GB 256GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(113, 'PAPCMI03', 'REFACCIONARIA MINERO', 'PC ESCRITORIO', 'HP', '280 G5 SFF', 'CI3-10105 8GB 256GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(114, 'PAPCMI04', 'REFACCIONARIA MINERO', 'PC ESCRITORIO', 'HP', 'OPTIPLEX 9020', 'CI7-4770 8GB WINDOWS 10 PRO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(115, 'PAPCAT01', 'REFACCIONARIA ACTOPAN', 'PC ESCRITORIO', 'HP', '280 G5 SFF', 'CI5-10505 8GB 512GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(116, 'PAPCAT02', 'REFACCIONARIA ACTOPAN', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3681', 'CI3-10105 8GB 256GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(117, 'PAPCAT03', 'REFACCIONARIA ACTOPAN', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3681', 'CI3-10105 8GB 256GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(118, 'PAPCAT04', 'REFACCIONARIA ACTOPAN', 'PC ESCRITORIO', 'LENOVO', 'TINY M720Q', 'CI3-8100T 8GB 128GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(119, 'PAPCTU01', 'REFACCIONARIA TULANCINGO', 'PC ESCRITORIO', 'HP', '280 G5 SFF', 'CI5-10505 8GB 512GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(120, 'PAPCTU02', 'REFACCIONARIA TULANCINGO', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3681', 'CI3-10105 8GB 256GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(121, 'PAPCTU03', 'REFACCIONARIA TULANCINGO', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3681', 'CI3-10105 8GB 256GB WIN10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(122, 'PAPCTU04', 'REFACCIONARIA TULANCINGO', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5 8GB WIN10 PRO 22H2 240GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(123, 'PAPCBO01', 'BODEGAS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', 'CI3-13100 8GB WIN 11 PRO 22H2  SSD 256 GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(124, 'PAPCDE06', 'DEVOLUCIONES', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN 10 PRO SSD 120 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(125, 'PAPCCM08', 'COMPRAS', 'PC ESCRITORIO', 'HP', '280 G9 SFF', 'CI7-12700 16GB WINDOWS 11 PRO 23H2 SSD 512GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(126, 'PAPCMO01', 'MO CENTRO DE MONITOREO', 'PC ESCRITORIO', 'LENOVO', '11EES0D200', 'CI7-10700 16GB SSD 512 WIN 10 PRO 22H2', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(127, 'PAMNCM01', 'COMPRAS', 'MONITOR', 'HP', 'V214A', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(128, 'PAMNCM04', 'COMPRAS', 'MONITOR', 'HP', 'V214A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(129, 'PAMNCM05', 'COMPRAS', 'MONITOR', 'DELL', 'VOSTRO 3470', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(130, 'PAMNCM06', 'COMPRAS', 'MONITOR', 'DELL', 'E2213c', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(131, 'PAMNCM02', 'COMPRAS', 'MONITOR', 'HP', 'V214A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(132, 'PAMNCM03', 'COMPRAS', 'MONITOR', 'HP', 'V214A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(133, 'PAMNCM07', 'COMPRAS', 'MONITOR', 'HP', 'V214A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(134, 'PAMNCC01', 'CREDITO Y COBRANZA', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(135, 'PAMNCC02', 'CREDITO Y COBRANZA', 'MONITOR', 'DELL', 'E2213C', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(136, 'PAMNCC03', 'CREDITO Y COBRANZA', 'MONITOR', 'DELL', 'E2213C', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(137, 'PAMNCC04', 'CREDITO Y COBRANZA', 'MONITOR', 'DELL', 'E2213C', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(138, 'PAMNCC05', 'CREDITO Y COBRANZA', 'MONITOR', 'DELL', 'E2213C', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(139, 'PAMNCC06', 'CREDITO Y COBRANZA', 'MONITOR', 'LENOVO', 'C22-20', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(140, 'PAMNCC07', 'CREDITO Y COBRANZA', 'MONITOR', 'HP', 'P201', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(141, 'PAMNCC08', 'CREDITO Y COBRANZA', 'MONITOR', 'DELL', 'E2213C', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(142, 'PAMNCC09', 'CREDITO Y COBRANZA', 'MONITOR', 'LENOVO', 'C22-20', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(143, 'PAMNCC10', 'CREDITO Y COBRANZA', 'MONITOR', 'DELL', 'E2213C', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(144, 'PAMNCC11', 'CREDITO Y COBRANZA', 'MONITOR', 'DELL', 'E2213C', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(145, 'PAMNCC12', 'CREDITO Y COBRANZA', 'MONITOR', 'DELL', 'E2213C', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(146, 'PAMNCC13', 'CREDITO Y COBRANZA', 'MONITOR', 'DELL', 'E2213C', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(147, 'PAMNPE01', 'PRECIOS ESPECIALES', 'MONITOR', 'SAMSUMG', 'B1930N', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(148, 'PAMNRH01', 'RECURSOS HUMANOS', 'MONITOR', 'LG', '19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(149, 'PAMNRE01', 'ADMINISTRACION REFACCIONARIAS', 'MONITOR', 'SAMSUNG', 'B1930N', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(150, 'PAMNSM01', 'SERVICIO MEDICO', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(151, 'PAMNCO02', 'CONTABILIDAD', 'MONITOR', 'BENQ', 'DL2020-B', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(152, 'PAMNCO03', 'CONTABILIDAD', 'MONITOR', 'DELL', 'E2016HV', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(153, 'PAMNCO04', 'CONTABILIDAD', 'MONITOR', 'DELL', 'E2016HV', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(154, 'PAMNCO05', 'CONTABILIDAD', 'MONITOR', 'DELL', 'E2016HV', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(155, 'PAMNAU01', 'AUDITORIA', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(156, 'PAMNTL02', 'TELEMARKETING', 'MONITOR', 'DELL', '22PLGE2221HN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(157, 'PAMNTL03', 'TELEMARKETING', 'MONITOR', 'DELL', '22PLGE2221HN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(158, 'PAMNTL04', 'TELEMARKETING', 'MONITOR', 'DELL', '22PLGE2221HN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(159, 'PAMNTL05', 'TELEMARKETING', 'MONITOR', 'DELL', '22PLGE2221HN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(160, 'PAMNTL06', 'TELEMARKETING', 'MONITOR', 'HP', 'V214A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(161, 'PAMNTL07', 'TELEMARKETING', 'MONITOR', 'HP', 'V194 ', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(162, 'PAMNTL30', 'TELEMARKETING', 'MONITOR', 'DELL', 'B1930N', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(163, 'PAMNTL08', 'TELEMARKETING', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(164, 'PAMNTL09', 'TELEMARKETING', 'MONITOR', '', '933SNPLUS', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(165, 'PAMNTL11', 'TELEMARKETING', 'MONITOR', 'HP', 'P204V', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(166, 'PAMNTL10', 'TELEMARKETING', 'MONITOR', 'DELL', 'P2018H', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(167, 'PAMNTL12', 'TELEMARKETING', 'MONITOR', 'LENOVO', 'T2224PD', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(168, 'PAMNTL01', 'TELEMARKETING', 'MONITOR', 'DELL', 'E2221HN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(169, 'PAMNTL13', 'TELEMARKETING', 'MONITOR', 'DELL', 'P2018H', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(170, 'PAMNTL14', 'TELEMARKETING', 'MONITOR', 'LENOVO', 'T2224PD', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(171, 'PAMNTL15', 'TELEMARKETING', 'MONITOR', 'ACER', 'V206HQL', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(172, 'PAMNTL16', 'TELEMARKETING', 'MONITOR', 'HP', 'V214A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(173, 'PAMNTL17', 'TELEMARKETING', 'MONITOR', 'SAMSUMG', 'S19A100N', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(174, 'PAMNTL18', 'TELEMARKETING', 'MONITOR', 'DELL', 'P2018H', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(175, 'PAMNTL19', 'TELEMARKETING', 'MONITOR', 'LENOVO', 'T2224PD', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(176, 'PAMNTL20', 'TELEMARKETING', 'MONITOR', 'DELL', 'P2018H', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(177, 'PAMNTL21', 'TELEMARKETING', 'MONITOR', 'DELL', 'P2018H', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(178, 'PAMNTL22', 'TELEMARKETING', 'MONITOR', 'LENOVO', 'T2224PD', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(179, 'PAMNTL23', 'TELEMARKETING', 'MONITOR', 'HPV194', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(180, 'PAMNTL31', 'TELEMARKETING', 'MONITOR', 'ACER', 'G185HV', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(181, 'PAMNTL24', 'TELEMARKETING', 'MONITOR', 'HP', 'V214A', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(182, 'PAMNTL25', 'TELEMARKETING', 'MONITOR', 'DELL', 'P2018H', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(183, 'PAMNTL26', 'TELEMARKETING', 'MONITOR', 'LG', '19M35A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(184, 'PAMNTL27', 'TELEMARKETING', 'MONITOR', 'LENOVO', 'T2224PD', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(185, 'PAMNTL28', 'TELEMARKETING', 'MONITOR', 'SAMSUNG', 'LS19CMYKFNAUZX', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(186, 'PAMNTL29', 'TELEMARKETING', 'MONITOR', 'DELL', 'E2221HN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(187, 'PAMNFI01', 'FINANZAS', 'MONITOR', 'HP', 'P201', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(188, 'PAMNFI02', 'FINANZAS', 'MONITOR', 'SAMSUMG', 'B2030N', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(189, 'PAMNSI06', 'SISTEMAS', 'MONITOR', 'ACER', 'V206HQL', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(190, 'PAMNFI04', 'FINANZAS', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(191, 'PAMNFI05', 'FINANZAS', 'MONITOR', 'ACER', 'V193WV', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(192, 'PAMNVT13', 'VENTAS', 'MONITOR', 'LG', 'FLATRON', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(193, 'PAMNCD04', 'ADMINISTRACION CEDIS', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(194, 'PAMNCD03', 'ADMINISTRACION CEDIS', 'MONITOR', '', 'GL950-TA', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(195, 'PAMNCD02', 'ADMINISTRACION CEDIS', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(196, 'PAMNCD01', 'ADMINISTRACION CEDIS', 'MONITOR', 'ACER', 'G185HV', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(197, 'PAMNME01', 'MERCADOTECNIA', 'MONITOR', 'LG', 'FLATRON E2742V', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(198, 'PAMNME02', 'MERCADOTECNIA', 'MONITOR', 'HP', 'P27G5FHD', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(199, 'PAMNVI01', 'VIGILANCIA', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(200, 'PAMNDE01', 'DEVOLUCIONES', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(201, 'PAMNDE04', 'DEVOLUCIONES', 'MONITOR', 'SAMSUMG', 'B1930N', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(202, 'PAMNDE05 ANT.', 'DEVOLUCIONES', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(203, 'PAMNDE05', 'DEVOLUCIONES', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(204, 'PAMNDE02', 'DEVOLUCIONES', 'MONITOR', 'HP', 'P204V', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(205, 'PAMNDE03', 'DEVOLUCIONES', 'MONITOR', 'HP', 'P204V', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(206, 'PAMNEM01', 'EMBARQUES', 'MONITOR', 'LENOVO', 'P2018H', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(207, 'PAMNEM02', 'EMBARQUES', 'MONITOR', 'LG', 'FLATRON 20EN33SS-B', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(208, 'PAMNDE06', 'DEVOLUCIONES', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(209, 'PAMNEM04', 'EMBARQUES', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(210, 'PAMNEM05', 'EMBARQUES', 'MONITOR', 'DELL', 'E2213C', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(211, 'PAMNEM06', 'EMBARQUES', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(212, 'PAMNEM07', 'EMBARQUES', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(213, 'PAMNAL02', 'ALMACEN', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(214, 'PAMNAL01', 'ALMACEN', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(215, 'PAMNAL03', 'ALMACEN', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(216, 'PAMNAL04', 'ALMACEN', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(217, 'PAMNAL05', 'ALMACEN', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(218, 'PAMNAL06', 'ALMACEN', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(219, 'PAMNAL07', 'ALMACEN', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(220, 'PAMNAL08', 'ALMACEN', 'MONITOR', '', 'GL950-TA', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(221, 'PAMNAL09', 'PICKING', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(222, 'PAMNSC01', 'SURTIDO CEDIS', 'MONITOR', 'HP', 'P201', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(223, 'PAMNSC02', 'SURTIDO CEDIS', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(224, 'PAMNSC03', 'SURTIDO CEDIS', 'MONITOR', 'SAMSUMG', '933SNPLUS', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(225, 'PAMNSC04', 'SURTIDO CEDIS', 'MONITOR', 'LG', '19M35A-B', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(226, 'PAMNSC05', 'SURTIDO CEDIS', 'MONITOR', 'SAMSUMG', '740NW', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(227, 'PAMNSC06', 'SURTIDO CEDIS', 'MONITOR', 'ACER', 'G185MN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(228, 'PAMNSC07', 'SURTIDO CEDIS', 'MONITOR', 'HP', 'P201', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(229, 'PAMNSC08', 'SURTIDO CEDIS', 'MONITOR', 'LG', 'FLATRON 19EN33S', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(230, 'PAMNMI01', 'REFACCIONARIA MINERO', 'MONITOR', 'DELL', 'P2014HT', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(231, 'PAMNMI02', 'REFACCIONARIA MINERO', 'MONITOR', 'DELL', 'E2222H', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(232, 'PAMNMI03', 'REFACCIONARIA MINERO', 'MONITOR', 'DELL', 'E2222H', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(233, 'PAMNAC01', 'CENTRO DE ATENCION AL CLIENTE', '', 'SAMSUNG', 'S19A10N', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(234, 'PAMNAC02', 'REFA ACTOPAN', 'MONITOR', 'DELL', 'E2222H', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(235, 'PAMNAC03', 'REFA ACTOPAN', 'MONITOR', 'DELL', 'E2222H', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(236, 'PAMNAC04', 'REFA ACTOPAN', 'MONITOR', 'LENOVO', 'T2054pC', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(237, 'PAMNTU01', 'REFACCIONARIA TULANCINGO', 'MONITOR', 'ACER', 'S18HL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(238, 'PAMNTU02', 'REFACCIONARIA TULANCINGO', 'MONITOR', 'DELL', 'E2222H', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(239, 'PAMNTU03', 'REFACCIONARIA TULANCINGO', 'MONITOR', 'DELL', 'E2222H', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(240, 'PAMNTU04', 'REFA TULANCINGO', 'MONITOR', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(241, 'PAMNTL32', 'TELEMARKETING', 'MONITOR', 'SAMSUMG', 'CF390', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(242, 'PAMNVT02', 'VENTAS', 'MONITOR', 'SAMSUMG', 'C24F390FH', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(243, 'PAMNSI01', 'SISTEMAS', 'MONITOR', 'SAMSUMG', 'C27F390FHL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(244, 'PAMNSI02', 'SISTEMAS', 'MONITOR', 'SAMSUMG', 'C27F390FHL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(245, 'PAMNSI03', 'SISTEMAS', 'MONITOR', 'SAMSUMG', 'C27F390FHL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(246, 'PAMNSI05', 'SISTEMAS', 'MONITOR', 'SAMSUMG', 'C27F390FHL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(247, 'PAMNSI04', 'SISTEMAS', 'MONITOR', 'SAMSUMG', 'C27F390FHL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(248, 'PAMNMA01', 'REFACCIONARIA MADERO', 'MONITOR', 'HP', 'V214B', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(249, 'PAMNJR01', 'JURIDICO', 'MONITOR', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(250, 'PAMNMA02', 'REFACCIONARIA MADERO', 'MONITOR', 'DELL', 'E2222H', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(251, 'PAMNMA03', 'REFACCIONARIA MADERO', 'MONITOR', 'DELL', 'E2222H', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(252, 'PAMNBO01', 'BODEGAS', 'MN MONITOR', 'DELL', 'E2222HS', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(253, 'PAMNME03', 'MERCADOTECNIA', 'MONITOR', 'HP', '27 er 27', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(254, 'PAMNME04', 'MERCADOTECNIA', '', 'LG', '19M35A', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(255, 'PAMNME05', 'MERCADOTECNIA', 'MN MONITOR', 'SAMSUMG', 'S27E390H', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(256, 'PAMNVT14', 'VENTAS', '', 'ACER', 'V246HQL', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(257, 'PAMNFI06', 'FINANZAS', 'MONITOR', 'DELL', 'E2423HN', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(258, 'PAMNRM01', 'RECEPCION DE MATERIALES', '', 'ACER', 'V206HQL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(259, 'PAMNRM02', 'RECEPCION DE MATERIALES', 'MONITOR', 'SAMSUMG', 'SYNCMASTER 933', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(260, 'PAMNAL10', 'ALMACEN', 'MONITOR', 'SAMSUMG', 'C24F390FHL', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(261, 'PAMNTL33', 'TELEMARKETING', 'MONITOR', 'DELL', 'P2018H', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(262, 'PAMNCM08', 'COMPRAS', 'MONITOR', 'HP', 'P24V G5', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(263, 'PAMNAL11', 'ALMACEN', 'MONITOR', '', 'GL950-TA', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(264, 'PAMNAL12', 'ALMACEN', 'MONITOR', 'ACER', 'G185HV', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(265, 'PAIMCM01', 'COMPRAS', 'IMPRESORA', 'HP', 'M521DN', 'MULTIFUNCIONAL LASER MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(266, 'PAIMCM02', 'COMPRAS', 'IMPRESORA', 'EPSON', 'L3110', 'MULTIFUNCIONAL DE TINTA CONTINUA USB', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(267, 'PAIMCC01', 'CREDITO Y COBRANZA', 'IMPRESORA', 'HP', 'M521DN', 'MULTIFUNCIONAL LASER MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(268, 'PAIMCC02', 'CREDITO Y COBRANZA', 'IMPRESORA', 'BROTHER', 'T310', 'MULTIFUNCIONAL DE TINTA CONTINUA USB, COLOR', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(269, 'PAIMRH01', 'RECURSOS HUMANOS', 'IMPRESORA', 'BROTHER', 'T310', 'MULTIFUNCIONAL DE TINTA, COLOR', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);
INSERT INTO `pachuca` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(270, 'PAIMRE01', 'ADMINISTRACION REFACCIONARIAS', 'IMPRESORA', 'BROTHER', 'T310', 'IMPRESORA DE TINTA CONTINUA USB, COLOR', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(271, 'PAIMSM01', 'SERVICIO MEDICO', 'IMPRESORA', 'HP', 'P1102W', 'IMPRESORA LASER MONOCROMATICA', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(272, 'PAIMCO01', 'CONTABILIDAD', 'IMPRESORA', 'HP', 'M521DN', 'IMPRESORA HP M521DN MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(273, 'PAIMAU01', 'AUDITORIA', 'IMPRESORA', 'HP', '1102W', 'IMPRESORA LASER MONOCROMATICA', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(274, 'PAIMJR01', 'JURIDICO', 'IMPRESORA', 'EPSON', 'L3150', 'IMPRSORA DE TINTA CONTINUA WIFI, COLOR', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(275, 'PAIMTL01', 'TELEMARKETING', 'IMPRESORA', 'CANON', 'D1620', 'MULTIFUNCIONAL LASER MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(276, 'PAIMAC01', 'ATENCION A CLIENTES', 'IMPRESORA', 'EPSON', 'L3120', 'IMPRESORA MULTIFUNCIONAL DE TINTA USB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(277, 'PAIMFI01', 'FINANZAS', 'IMPRESORA', 'HP', 'M521DN', 'MULTIFUNCIONAL LASER MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(278, 'PAIMFI02', 'FINANZAS', 'IMPRESORA', 'HP', '1018', 'IMPRESORA LASER MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(279, 'PAIMFI03', 'FINANZAS', 'IMPRESORA', 'HP', 'P1102W', 'IMPRESORA LASER MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(280, 'PAIMVT01', 'VENTAS', 'IMPRESORA', 'HP', 'LJ PRO MFP M182NW', 'MULTIFUNCIONAL LASER A COLOR', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(281, 'PAIMVT02', 'VENTAS', 'IMPRESORA', 'EPSON', 'L3150', 'IMPRESORA DE TINTA WIFI, COLOR', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(282, 'PAIMCE01', 'ADMINISTRACION CEDIS', 'IMPRESORA', 'CANON', 'D1620', 'MULTIFUNCIONAL LASER MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(283, 'PAIMCE02', 'ADMINISTRACION CEDIS', 'IMPRESORA', 'EPSON', 'L3150', 'MULTIFUNCIONAL TINTA WIFI, COLOR', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(284, 'PAIMIN01', 'INVENTARIOS', 'IMPRESORA', '', 'M2020', 'IMPRESORA LASER MONOCROMATICA', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(285, 'PAIMME01', 'MERCADOTECNIA', 'IMPRESORA', 'HP', '', 'MULTIFUNCIONAL LASER, COLOR', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(286, 'PAIMME02', 'MERCADOTECNIA', 'IMPRESORA', 'HP', 'P1102W', 'IMPRESORA LASER MONOCROMATICA', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(287, 'PAIMVI01', 'VIGILANCIA', 'IMPRESORA', 'HP', 'M1132', 'MULTIFUNCIONAL LASER MONOCROMATICA', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(288, 'PAIMDE01', 'DEVOLUCIONES', 'IMPRESORA', 'HP', 'M130W', 'MULTIFUNCIONAL', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(289, 'PAIMEM01', 'EMBARQUES', 'IMPRESORA', 'HP', 'M521DN', 'MULTIFUNCIONAL LASER MONOCROMATICA, RED', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(290, 'PAIMEM02', 'EMBARQUES', 'IMPRESORA', 'HP', 'P1102W', 'IMPRESORA LASER MONOCROMATICA', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(291, 'PAIMEM03', 'EMBARQUES', 'IMPRESORA', 'ZEBRA', 'TLP2844', 'IMPRESORA DE ETIQUETAS TERMICA', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(292, 'PAIMEM04', 'EMBARQUES', 'IMPRESORA', 'ZEBRA', 'GC420T', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(293, 'PAIMEM05', 'EMBARQUES', 'IMPRESORA', 'ZEBRA', 'ZD620', 'IMPRESORA DE ETIQUETAS TERMICA', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(294, 'PAIMEM06', 'EMBARQUES', 'IMPRESORA', 'ZEBRA', 'ZP505', 'IMPRESORA DE ETIQUETAS TERMICA', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(295, 'PAIMEM07', 'EMBARQUES', 'IMPRESORA', 'TSC', 'da210', 'na', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(296, 'PAIMEM08', 'EMBARQUES', 'IMPRESORA', 'EPSON', 'FX-890 ', 'IMPRESORA MATRICIAL', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(297, 'PAIMEM09', 'EMBARQUES', 'IMPRESORA', 'ZEBRA', 'TLP 2844', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(298, 'PAIMEM10', 'EMBARQUES', 'IMPRESORA', 'RIBETEC', 'RT-420ME', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(299, 'PAIMAL01', 'ALMACEN', 'IMPRESORA', 'ZEBRA ', 'ZT411', 'IMPRSORA DE ETIQUETAS', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(300, 'PAIMAL02', 'ALMACEN', 'IMPRESORA', 'HP', 'M521DN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(301, 'PAIMSC01', 'SURTIDO CEDIS', 'IMPRESORA', 'CANON', 'D1620', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(302, 'PAIMSC02', 'SURTIDO CEDIS', 'IMPRESORA', 'ZEBRA', 'ZT411', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(303, 'PAIMBO01', 'BODEGAS', 'IMPRESORA', 'BROTHER', 'T220', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(304, 'PALAIM01', 'SISTEMAS', 'IMPRESORA', 'HP', 'CP1025nw', 'IMPRESORA LASER A COLOR', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(305, 'PALAIM02', 'SISTEMAS', 'IMPRESORA', 'EPSON', 'L3110', 'MULTIFUNCIONAL A COLOR DE TINTA', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(306, 'PALAIM03', 'SISTEMAS', 'IMPRESORA', 'ZEBRA', 'GC420T', 'IMPRESORA ETIQUETAS', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(307, 'PAIMMA01', 'REFACCIONARIA MADERO', 'IMPRESORA', 'EPSON', 'L3150', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(308, 'PAIMMA02', 'REFACCIONARIA MADERO', 'IMPRESORA', 'BIXOLON', 'SRP-330II', 'IMPRESORA DE TICKETS TERMICA ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(309, 'PAIMMA03', 'REFACCIONARIA MADERO', 'IMPRESORA', 'BIXOLON', 'SRP-330II', 'IMPRESORA DE TICKETS TERMICA ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(310, 'PAIMMI01', 'REFACCIONARIA MINERO', 'IMPRESORA', 'EPSON', 'L3150', 'IMPRESORA MULTIFUNCIONAL TINTA CONTINUA COLOR WIFI', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(311, 'PAIMMI02', 'REFACCIONARIA MINERO', 'IMPRESORA', 'BIXOLON', 'SRP-330II', 'IMPRESORA DE TICKETS ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(312, 'PAIMMI03', 'REFACCIONARIA MINERO', 'IMPRESORA', 'BIXOLON', 'SRP-330II', 'IMPRESORA DE TICKETS ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(313, 'PAIMAT01', 'REFACCIONARIA ACTOPAN', 'IMPRESORA', 'EPSON', 'L3150', 'IMPRESORA MULTIFUNCIONAL TINTA CONTINUA COLOR WIFI', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(314, 'PAIMAT02', 'REFACCIONARIA ACTOPAN', 'IMPRESORA', 'BIXOLON', 'SRP-330II', 'IMPRESORA DE TICKETS TERMICA', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(315, 'PAIMAT03', 'REFACCIONARIA ACTOPAN', 'IMPRESORA', 'BIXOLON', 'SRP-330II', 'IMPRESORA DE TICKETS TERMICA', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(316, 'PAIMTU01', 'REFACCIONARIA TULANCINGO', 'IMPRESORA', 'EPSON', 'L3110', 'MULTIFUNCIONAL EPSON USB A COLOR', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(317, 'PAIMTU02', 'TU REFACCIONARIA TULANCINGO', 'IMPRESORA', 'BIXOLON', 'UT750GU', 'IMPRESORA DE TICKETS TERMICA', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(318, 'PAIMTU03', 'TU REFACCIONARIA TULANCINGO', 'IMPRESORA', 'BIXOLON', 'UT750GU', 'IMPRESORA DE TICKETS TERMICA', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(319, 'PAIMRE02', 'RECEPCION', 'IMPRESORA', 'HP', 'Color Laser Jet Pro MFP M283fdw', 'IMPRESORA A COLOR MULTIFUNCIONAL', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(320, 'PAIMCM03', 'COMPRAS', 'IMPRESORA', 'EPSON', 'L3250', 'IMPRESORA MULTIFUNCIONAL,DE TINTA CONTINUA CON WIFI', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(321, 'PAIMRM01', 'RECEPCION DE MATERIALES', 'IMPRESORA', 'HP', 'M521DN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(322, 'PAIMRM02', 'RECEPCION DE MATERIALES', 'IMPRESORA', 'ZEBRA', 'ZT411', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(323, 'PAIMAL03', 'ALMACEN', 'IMPRESORA', 'HP', '', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(324, 'PAIMAL04', 'ALMACEN', 'IMPRESORA', 'HP', 'M406DN', 'IMPRESORA LASER', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(325, 'PAIMAL05', 'ALMACEN', 'IMPRESORA', 'HP', 'M406DN', 'IMPRESORA LASER', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(326, 'PAIMAL06', 'ALMACEN', 'IMPRESORA', 'HP', 'M406DN', 'IMPRESORA LASER', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(327, 'PAIMAL07', 'ALMACEN', 'IMPRESORA', 'HP', 'M406DN', 'IMPRESORA LASER', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(328, 'PAIMAL08', 'ALMACEN', 'IMPRESORA', 'HP', 'M406DN', 'IMPRESORA LASER', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(329, 'PAIMAL09', 'ALMACEN', 'IMPRESORA', 'HP', 'M406DN', 'IMPRESORA LASER', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(330, 'PAIMEM11', 'EMBARQUES', 'IMPRESORA', 'CANON', 'D1620', 'MULTIFUNCIONAL CANON D1620 LASER MONOCROMATICA RED', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(331, 'PAIMCC03', 'CREDITO Y COBRANZA', 'IMPRESORA', 'CANON', 'D1620', 'IMPRESORA LASER MULTIFUNCIONAL', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(332, 'PALARE01', 'RECEPCION', 'LAPTOP', 'HP', '15-AC114LA', 'CI5-5200U 8GB WIN10 HOME HDD 500GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(333, 'PALAJR01', 'JURIDICO', 'LAPTOP', 'LENOVO', 'S340-14IWL', 'CI5-8265U WIN11 HOME SL 21H2 SSD 125GB HDD 1TB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(334, 'PALATL02', 'TELEMARKETING', 'LAPTOP', 'HP', '15-DW1XXX', 'CI7-10510U 8GB WIN10 PRO SSD 512GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(335, 'PALAAC01', 'ATENCION A CLIENTES', 'LAPTOP', 'HP', '250 G9', 'LAPTOP CI7-1225U 8GB WIN11 PRO 22H2 SSD 250GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(336, 'PALAAC02', 'ATENCION A CLIENTES', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'LAPTOP CI5-1135G7 8GB WIN11 PRO 21H2 SSD 250GB HDD 1TB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(337, 'PALAAC03', 'ATENCION A CLIENTES', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'LAPTOP CI5-1135G7 8GB WIN11 PRO 23H2 SSD 250GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(338, 'PALAAC04', 'ATENCION A CLIENTES', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'LAPTOP CI5-1135G7 8GB WIN10 PRO 22H2 SSD 250GB HDD 1TB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(339, 'PALAAC05', 'ATENCION A CLIENTES', 'LAPTOP', 'HP', '240 G8', 'LAPTOP CI5-1135G7 8GB WIN11 PRO 22H2 SSD 250GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(340, 'PALADM01', 'DATOS MAESTROS', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'LAPTOP CI5-1135G7 8GB WIN11 PRO 21H2 SSD 250GB HDD 1TB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(341, 'PALAVT01', 'VENTAS', 'LAPTOP', 'HP', '250 G8', 'CI7-1165G7 8GB 512GB WIN 11 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(342, 'PALAVT02', 'VENTAS', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'CI5-1135G7 8GB 256GB WIN 10 PRO 22H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(343, 'PALAVT03', 'VENTAS', 'LAPTOP', 'HP', '250 G8', 'CI7-1165G7 16GB WIN 11 PRO 23H2 SSD 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(344, 'PALAVT04', 'VENTAS', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'CI5-1135G7 8GB 256GB WIN 10 PRO 22H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(345, 'PALAVT05', 'VENTAS', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'CI5-1135G7 8GB 256GB WIN 11 PRO 22H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(346, 'PALAVT06', 'VENTAS', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'CI5-1135G7 8GB 256GB WIN 10 PRO 22H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(347, 'PALAVT07', 'VENTAS', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'CI5-1135G7 8GB 256GB WIN 10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(348, 'PALAVT08', 'VENTAS', 'LAPTOP', 'DELL', 'VOSTRO 14 3400', 'CI5-1135G7 8GB 256GB WIN 10 PRO 22H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(349, 'PALAVT09', 'VENTAS', 'LAPTOP', 'HP', 'ZBOOK FIREFLY G8', 'CI7-1165G7 16GB 512GB WIN 10 PRO 22H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(350, 'PALAVT10', 'VENTAS', 'LAPTOP', 'HP', '240 G8', 'CI5-1135G7 8GB 256GB WIN 11 HOME SL 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(351, 'PALAVT11', 'VENTAS', 'LAPTOP', 'HP', 'PROBOOK 440 G9', 'CI3-1215U 8GB WIN11 PRO SSD 256GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(352, 'PALAVT12', 'VENTAS', 'LAPTOP', 'LENOVO', '80XH', 'CI3-6006U 8GB 240GB WIN11 HOME SL 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(353, 'PALAVT13', 'VENTAS', 'LAPTOP', 'HP', '250 G8', 'CI7-1165G7 16GB WIN11 PRO 23H2 SSD 120GB + HDD 1TB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(354, 'PALAVT14', 'VENTAS', 'LAPTOP', 'HP', '14-AM004ALA', 'CELERON N3060 4GB WIN 10 HOME 22H2 HDD 1TB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(355, 'PALAVT15', 'VENTAS', 'LAPTOP', 'DELL', 'VOSTRO 5301 P121G', 'CI7-1165G7 8GB WIN11 PRO 21H2 SSD 512GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(356, 'PALAVT16', 'VENTAS', 'LAPTOP', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(357, 'PALAVT17', 'VENTAS', 'LAPTOP', 'HP', '240 G8', 'CI3-1115 8GB WIN 11 HOME SINGLE 22H2 SSD 500GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(358, 'PALACE01', 'ADMINISTRACION CEDIS', 'LAPTOP', 'HP', '250 G8', 'CI7-1165G7 8GB WIN10 PRO 22H2 SSD 512GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(359, 'PALACE02', 'ADMINISTRACION CEDIS', 'LAPTOP', 'HP', '250 G8', '11 GEN CI5-1135G7 16GB WIN11 PEO 23H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(360, 'PALACE03', 'ADMINISTRACION CEDIS', 'LAPTOP', 'HP', '250 G8', '11 GEN CI5-1135G7 16GB WIN11 PEO 22H2 SSD 240GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(361, 'PALACE04', 'ADMINISTRACION CEDIS', 'LAPTOP', 'DELL', '3493', 'CI5-1035G1 16GB WIN10 HOME 22H2 SSD 256GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(362, 'PALAIN01', 'INVENTARIOS', 'LAPTOP', 'HP', '240 G8', 'CI5-1135G7 8GB SSD 512GB WIN 11 HOME 23H2', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(363, 'PALAIN02', 'INVENTARIOS', 'LAPTOP', 'ACER', 'A114-32-C896', 'CELERON 4GB WIN10 HOME SL 22H2 SSD 64GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(364, 'PALAIN03', 'INVENTARIOS', 'LAPTOP', 'HP', '240 G8', 'CI5-10210U 8GB WIN 10 PRO 22H2 SSD 256GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(365, 'PALAIN04', 'INVENTARIOS', 'LAPTOP', 'ACER', 'ASPIRE A114-32', 'CELERON N4020 4GB WIN10 HOME SL 22H2 SSD 64GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(366, 'PALAIN05', 'INVENTARIOS', 'LAPTOP', 'DELL', 'VOSTRO 3420', 'CI5-1235U 8GB WIN11 PRO 23H2  SSD 256 GB ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(367, 'PALAIN06', 'INVENTARIOS', 'LAPTOP', 'HP', '240 G8', 'CI5-10210U 8GB WIN11 PRO 23H2 SSD 256GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(368, 'PALAME01', 'MERCADOTECNIA', 'LAPTOP', 'HP', '240 G8', 'CI5-10210U 8GB WIN 11 PRO 22H2 SSD 256GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(369, 'PALAME02', 'MERCADOTECNIA', 'LAPTOP', 'LENOVO', 'THINKPAD W541', 'CI7-4910MQ 16GB WIN10 PRO 22H2 SSD 1TB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(370, 'PALADE01', 'DEVOLUCIONES', 'LAPTOP', 'HP', '15-DY2508LA', 'CI3-1115G4 8GB SSD 512GB WIN10 HOME', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(371, 'PALAMP01', 'MODELADO DE PRODUCTOS', 'LAPTOP', 'HP', '250 G8 ', 'CI7-1065G7 16GB WIN10 PRO 22H2 SSD 500GB + HDD 1TB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(372, 'PALAMP02', 'MODELADO DE PRODUCTOS', 'LAPTOP', 'HP', '250 G8 ', 'CI7-1065G7 16GB WIN10 PRO 22H2 SSD M2 500GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(373, 'PALAEM01', 'EMBARQUES', 'LAPTOP', 'HP', '240G6', 'CELERON N4000 4GB WIN10 HOME SL 22h2 SDD 240GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(374, 'PALAAL01', 'ALMACEN', 'LAPTOP', 'HP', '15-DA0001LA', 'CELERON N4000 4GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(375, 'PALARA01', 'REABASTOS', 'LAPTOP', 'HP', '240 G6', 'CELERON N4000 4GB WINDOWS 10 HOME SL 21H2 SSD 120GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(376, 'PALARA02', 'REABASTOS', 'LAPTOP', 'HP', '15-DA0001LA', 'CELERON N4000 4GB WIN10 HOME 22H2 SSD 120GB (ADATA)', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(377, 'PALARA03', 'REABASTOS', 'LAPTOP', 'HP', '240 G4', 'CELERON N3050 4GB WIN10 PRO SSD 240GB (KGT)', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(378, 'PALARA04', 'REABASTOS', 'LAPTOP', 'HP', '240 G4', 'CELERON N3050 4GB WIN10 PRO SSD 240GB (KGT)', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(379, 'PALARA05', 'REABASTOS', 'LAPTOP', 'LENOVO', '100-14IBD', 'CI3-5005 4GB WIN11 HOME 21H2 SSD 240 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(380, 'PALARA06', 'REABASTOS', 'LAPTOP', 'HP', '240 G6', 'CELERON N4000 4GB WIN10 HOME SL 21H2 SSD 120GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(381, 'PALAIF01', 'IFUEL', 'LAPTOP', 'HP', '240 G6', 'CELERON N4000 4GB WIN10 HOME SL 21H2 SSD 120GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(382, 'PALAAD01', 'ADQUISICIONES', 'LAPTOP', 'HP', '250 G8', 'CI3-1115G4 8GB WIN 11 PRO 21H2 SSD  512GB 15.6PLG', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(383, 'PALABO01', 'BODEGAS', 'LAPTOP', 'LENOVO', 'V14 G1 IML', 'CI3-10110U 8GB WIN10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(384, 'PALABO02', 'BODEGAS', 'LAPTOP', 'LENOVO', 'V130-14IKB', 'CI5-7200U 8GB WIN10 PRO 21H2 SSD 240GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(385, 'PALABO03', 'BODEGAS', 'LAPTOP', 'HP', '240 G4', 'CELERON N3050 4GB WIN 10 PRO 22H2 SSD 240GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(386, 'PALABO04', 'BODEGAS', 'LAPTOP', 'HP', '240 G6', 'CELERON N4000 4GB WIN10 HOME 22H2 HDD 500GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(387, 'PALABO05', 'BODEGAS', 'LAPTOP', 'HP', '240 G6', 'CELERON N4000 4GB WIN 10 HOME 22H2 HOME SL SSD 240GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(388, 'PALABO06', 'BODEGAS', 'LAPTOP', 'DELL', 'LATITUDE 3160', 'PENTIUM N3710 4GB WIN 10 PRO 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(389, 'PALABO07', 'BODEGAS', 'LAPTOP', 'HP', '240 G6', 'CELERON N4000 4GB WIN 10 HOME SL 22H2 HDD 500GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(390, 'PALABO08', 'BODEGAS', 'LAPTOP', 'HP', '240 G6', 'CELERON N4000 4GB WIN 10 HOME SL 22H2 HDD 500GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(391, 'PALABO09', 'BODEGAS', 'LAPTOP', 'HP', '240 G4', 'CELERON N3050 4GB WIN 10 PRO 22H2 HDD 500GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(392, 'PALAFL01', 'FLOTILLAS', 'LAPTOP', 'HP', '14-N08LA', 'CI5-4200U 8GB WIN10 HOME 22H2 SSD 120GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(393, 'PALASI01', 'SISTEMAS', 'LAPTOP', 'HP', '15-DK005LA', 'CI7-9750H 16GB WIN 11 PRO 22H2 SSD 240GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(394, 'PALASI02', 'SISTEMAS', 'LAPTOP', 'APPLE', 'A2289', 'CI5 8GB macOS VENTURA 13.0.1 SSD 250 GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(395, 'PALASI03', 'SISTEMAS', 'LAPTOP', 'HP', '250 G8', 'CI7-1165G7 16GB WIN 11 PRO 22H2 SSD 512GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(396, 'PALASI04', 'SISTEMAS', 'LAPTOP', 'LENOVO', 'Ideapad 530s-14IKB', 'CI7-8550U 8GB WIN 11 PRO 22H2 SSD 256 GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(397, 'PALASI05', 'SISTEMAS', 'LAPTOP', 'HP', 'PROBOOK 440 G9', 'CI3-1215U 8GB WIN11 PRO 22H2  SSD 256 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(398, 'PALASI06', 'SISTEMAS', 'LAPTOP', 'HP', '250 G8', 'CI7-1165G7 8GB WIN 11 PRO 22H2 HDD 1TB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(399, 'PALASI07', 'SISTEMAS', 'LAPTOP', 'HP', 'Inspiron 15', 'CI7-7700HQ 8GB WIN 10 PRO 22H2 SSD ', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(400, 'PALATU01', 'REFACCIONARIA TULANCINGO', 'LAPTOP', 'ASUS', 'A441N', 'CELERON- N3350 4GB WIN 10 HOME 22H2 120 GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(401, 'PALAVT18', 'VENTAS', 'LAPTOP', 'HP', '240 G8', 'CI3-1115G4 8GB WIN 11 HOME 22H2 SSD 480GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(402, 'PALATL03', 'TELEMARKETING', 'LAPTOP', 'HP', '15-DY2795WM', 'CI5-1135G7 8GB WIN10 PRO 22H2 SSD 240 GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(403, 'PALATL04', 'TELEMARKETING', 'LAPTOP', 'HP', '15-DY2795WM', 'CI5-1135G7 8GB WIN10 PRO 22H2 SSD 240 GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(404, 'PALATL05', 'TELEMARKETING', 'LAPTOP', 'HP', '80F6', 'CORE I3-5005U 8GB WIN 10 PRO 22H2 SSD 240 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(405, 'PALATL06', 'TELEMARKETING', 'LAPTOP', 'HP', '15-DY2795WM', 'CI5-1135G7 8GB WIN10 PRO 22H2 SSD 256 GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(406, 'PALATL07', 'TELEMARKETING', 'LAPTOP', 'HP', '15-DY2795WM', 'CI5-1135G7 8GB WIN10 PRO 22H2 SSD 256 GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(407, 'PALASI08', 'SISTEMAS', 'LAPTOP', 'DELL', 'VOSTRO 3420', 'CI5-1235U 8GB WIN 11 PRO 22H2 SSD 256 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(408, 'PALAAL02', 'ALMACEN', 'LAPTOP', 'HP', '240 G6', 'CELERON N4000 4GB WINDOWS 11 PRO MINIOS 21H2 SSD 120GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(409, 'PALABO10', 'BODEGAS', 'LAPTOP', 'HP', '240 G8', 'CI3-111G4 8GB WIN 11 HOME SSD 256', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(410, 'PALABO11', 'BODEGAS', 'LAPTOP', 'HP', '240 G8', 'CI3-1115G4 8GB WIN 11 HOME 22H2 SSD  256 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(411, 'PALAVT19', 'VENTAS', 'LAPTOP', 'HP', '240 G9', 'CI3-1215U 8GB  WIN 11 HOME 22H2 SSD 512 GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(412, 'PALAVT20', 'VENTAS', 'LAPTOP', 'HP', '240 G9', 'CI3-1215U 8GB WIN 11 HOME 22H2  SSD 512 GB', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(413, 'PALAAS01', 'ASISTENTE DE DIRECCION', 'LAPTOP', 'ASUS', 'TP501U', 'CI7-6500 8GB  WIN10 PRO 22H2 SSD 240 GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(414, 'PALARA07', 'REABASTOS', 'LAPTOP', 'HP', '15-DA0001LA', 'CELERON N4000 4GB WINDOWS 10 PRO SSD 120GB', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(415, 'PALAVT21', '', 'LAPTOP', 'DELL', 'LATITUDE 3160', 'PENTIUM(R) N3710 4GB WIN 10 PRO 22H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(416, 'PALAVT22', '', 'LAPTOP', 'HP', 'PROBOOK 440 14INCH G9', 'CORE I3-1215U 8GB WIN 11 PRO 23H2', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(417, 'PALAIN07', 'INVENTARIOS', 'LAPTOP', 'HP', '15-DA0001LA', 'CELERON 4GB WIN11 HOME SL 23H2 SSD 240GB', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(418, 'PALAAS02', 'ASISTENTE DE DIRECCION', 'LAPTOP', 'HP', 'PROBOOK 440 G9', 'CI5-1235U 16GB WIN11 PRO SSD 512GB N/P: 9A225LT', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(419, 'PALADG01', 'DIRECCION GERNERAL', 'LAPTOP', 'HP', 'Z BOOK FIREFLY G10', 'CI7-1355U 16GB SSD 512GB WINDOWS 11 PRO 23H2 16PLG', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(420, 'PALAVT23', 'VENTAS', 'LAPTOP', 'HP', '240 G9', 'CI5-1235U 8GB WINDOWS 10 HOME SSD 512GB 14PLG', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(421, 'PALASI09', 'SISTEMAS', 'LAPTOP', 'LENOVO', 'THINKBOOK 14 G4 ', 'CI7-1255U WIN 11 PRO 16GB SSD 512GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(422, 'PANBCM01', 'COMPRAS', 'NOBREAK', '', 'isb nbks1000', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(423, 'PANBCM04', 'COMPRAS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(424, 'PANBCM05', 'COMPRAS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(425, 'PANBCM06', 'COMPRAS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(426, 'PANBCM02', 'COMPRAS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(427, 'PANBCM03', 'COMPRAS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(428, 'PANBCM07', 'COMPRAS', 'NOBREAK', '', 'cdp sin modelo', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(429, 'PANBCC01', 'CREDITO Y COBRANZA', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(430, 'PANBCC02', 'CREDITO Y COBRANZA', 'NOBREAK', '', 'FORZA NT-511', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(431, 'PANBCC03', 'CREDITO Y COBRANZA', 'NOBREAK', '', 'NO ', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(432, 'PANBCC04', 'CREDITO Y COBRANZA', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(433, 'PANBCC05', 'CREDITO Y COBRANZA', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(434, 'PANBCC06', 'CREDITO Y COBRANZA', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(435, 'PANBCC07', 'CREDITO Y COBRANZA', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(436, 'PANBCC08', 'CREDITO Y COBRANZA', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(437, 'PANBCC09', 'CREDITO Y COBRANZA', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(438, 'PANBCC10', 'CREDITO Y COBRANZA', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(439, 'PANBCC11', 'CREDITO Y COBRANZA', 'NOBREAK', '', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(440, 'PANBCC12', 'CREDITO Y COBRANZA', 'NOBREAK', '', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(441, 'PANBCC13', 'CREDITO Y COBRANZA', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(442, 'PANBPE01', 'PRECIOS ESPECIALES', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(443, 'PANBRH01', 'RECURSOS HUMANOS', 'NOBREAK', 'ISB Sola Basic', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(444, 'PANBRE01', 'AD Adquisiciones', 'NOBREAK', 'ISB Sola Basic', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(445, 'PANBSM01', 'SERVICIO MEDICO', 'NOBREAK', 'FORZA', 'NT-511', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(446, 'PANBCO02', 'CONTABILIDAD', 'NOBREAK', 'ISB Sola Basic', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(447, 'PANBCO03', 'CONTABILIDAD', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(448, 'PANBCO04', 'CONTABILIDAD', 'NOBREAK', 'ISB Sola Basic', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(449, 'PANBCO05', 'CONTABILIDAD', 'NOBREAK', '', 'nbks1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(450, 'PANBAU01', 'AUDITORIA', 'NOBREAK', '', 'no tiene', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(451, 'PANBTL02', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(452, 'PANBTL03', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(453, 'PANBTL04', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(454, 'PANBTL05', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(455, 'PANBTL26', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(456, 'PANBTL07', 'TELEMARKETING', 'NOBREAK', '', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(457, 'PANBTL30', 'TELEMARKETING', 'NOBREAK', '', 'FORZA NT-511', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(458, 'PANBTL08', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(459, 'PANBTL09', 'TELEMARKETING', 'NOBREAK', '', 'NO', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(460, 'PANBTL11', 'TELEMARKETING', 'NOBREAK', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(461, 'PANBTL10', 'TELEMARKETING', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(462, 'PANBTL12', 'TELEMARKETING', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(463, 'PANBTL06', 'TELEMARKETING', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(464, 'PANBTL13', 'TELEMARKETING', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(465, 'PANBTL14', 'TELEMARKETING', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(466, 'PANBTL15', 'TELEMARKETING', 'NOBREAK', '', 'NB750', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(467, 'PANBTL16', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(468, 'PANBTL17', 'TELEMARKETING', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(469, 'PANBTL18', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(470, 'PANBTL19', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(471, 'PANBTL20', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(472, 'PANBTL21', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(473, 'PANBTL22', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(474, 'PANBTL29', 'TELEMARKETING', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(475, 'PANBTL32', 'TELEMARKETING', 'NOBREAK', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(476, 'PANBTL24', 'TELEMARKETING', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(477, 'PANBTL25', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(478, 'PANBTL01', 'TELEMARKETING', 'NOBREAK', '', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(479, 'PANBTL27', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(480, 'PANBTL28', 'TELEMARKETING', 'NOBREAK', '', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(481, 'PANBFI01', 'FINANZAS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(482, 'PANBFI02', 'FINANZAS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(483, 'PANBFI03', 'FINANZAS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000 ', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(484, 'PANBFI04', 'FINANZAS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(485, 'PANBFI05', 'FINANZAS', 'NOBREAK', '', 'nbks1000 ', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(486, 'PANBVT13', 'VENTAS', 'NOBREAK', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(487, 'PANBCD04', 'ADMINISTRACION CEDIS', 'NOBREAK', '', 'nbks1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(488, 'PANBCD03', 'ADMINISTRACION CEDIS', 'NOBREAK', '', 'NO', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(489, 'PANBCD02', 'ADMINISTRACION CEDIS', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(490, 'PANBCD01', 'ADMINISTRACION CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS 1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(491, 'PANBME01', 'MERCADOTECNIA', 'NOBREAK', 'CYBERPOWER', 'UT750GUETIQUETA: PANBME01', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(492, 'PANBME02', 'MERCADOTECNIA', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(493, 'PANBVI01', 'VIGILANCIA', 'NOBREAK', '', '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(494, 'PANBDE01', 'DEVOLUCIONES', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(495, 'PANBDE04', 'DEVOLUCIONES', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(496, 'PANBDE05', 'DEVOLUCIONES', 'NOBREAK', '', 'no', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(497, 'PANBDE02', 'DEVOLUCIONES', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(498, 'PANBDE03', 'DEVOLUCIONES', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(499, 'PANBEM01', 'EMBARQUES', 'NOBREAK', '', 'SMARTBITT NB500', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(500, 'PANBEM02', 'EMBARQUES', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(501, 'PANBEM03', 'EMBARQUES', 'NOBREAK', '', 'NO', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(502, 'PANBEM04', 'EMBARQUES', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(503, 'PANBEM05', 'EMBARQUES', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(504, 'PANBEM06', 'EMBARQUES', 'NOBREAK', 'CYBERPOWER', 'UT550GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(505, 'PANBEM07', 'EMBARQUES', 'NOBREAK', '', 'NBKS1000', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(506, 'PANBAL02', 'ALMACEN', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(507, 'PANBAL01', 'ALMACEN', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(508, 'PANBAL03', 'ALMACEN', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(509, 'PANBAL04', 'ALMACEN', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(510, 'PANBAL05', 'ALMACEN', 'NOBREAK', 'CYBERPOWER', 'CPS4425SL', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(511, 'PANBAL06', 'ALMACEN', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(512, 'PANBAL07', 'ALMACEN', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(513, 'PANBAL08', 'ALMACEN', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(514, 'PANBAL09', 'PICKING', 'NOBREAK', '', 'no', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(515, 'PANBSC01', 'SURTIDO CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(516, 'PANBSC02', 'SURTIDO CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(517, 'PANBSC03', 'SURTIDO CEDIS', 'NOBREAK', '', 'NO', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(518, 'PANBSC04', 'SURTIDO CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(519, 'PANBSC05', 'SURTIDO CEDIS', 'NOBREAK', '', 'NO', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(520, 'PANBSC06', 'SURTIDO CEDIS', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(521, 'PANBSC07', 'SURTIDO CEDIS', 'NOBREAK', '', 'NO', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(522, 'PANBSC08', 'SURTIDO CEDIS', 'NOBREAK', '', 'NT-511', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(523, 'PANBMI01', 'REFACCIONARIA MINERO', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(524, 'PANBMI02', 'REFACCIONARIA MINERO', 'NOBREAK', 'CYBERPOWER ', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(525, 'PANBMI03', 'REFACCIONARIA MINERO', 'NOBREAK', 'CYBERPOWER ', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(526, 'PANBMI04', 'REFACCIONARIA MINERO', 'NOBREAK', 'CYBERPOWER ', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(527, 'PANBAT01', 'REFACCIONARIA ACTOPAN', 'NOBREAK', '', 'CYBERPOWER UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(528, 'PANBAT02', 'REFACCIONARIA ACTOPAN', 'NOBREAK', '', 'CYBERPOWER UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(529, 'PANBAT03', 'REFACCIONARIA ACTOPAN', 'NOBREAK', '', 'CYBERPOWER UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(530, 'PANBAT04', 'REFACCIONARIA ACTOPAN', 'NOBREAK', '', 'CYBERPOWER UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(531, 'PANBTU01', 'REFACCIONARIA TULANCINGO', 'NOBREAK', 'CYBERPOWER ', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(532, 'PANBTU02', 'REFACCIONARIA TULANCINGO', 'NOBREAK', 'CYBERPOWER ', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(533, 'PANBTU03', 'REFACCIONARIA TULANCINGO', 'NOBREAK', 'CYBERPOWER ', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(534, 'PANBTU04', 'REFACCIONARIA TULANCINGO', 'NOBREAK', 'CYBERPOWER ', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(535, 'PANBCO06', 'CONTABILIDAD', 'NOBREAK', 'CYBER POWER', 'UT7550GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(536, 'PANBTL33', 'TELEMARKETING', 'NOBREAK', 'ISB SOLA BASIC', 'NBKS 1000', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(537, 'PANBMA01', 'REFACCIONARIA MADERO', 'NOBREAK', 'Cyberpower', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(538, 'PANBMA02', 'REFACCIONARIA MADERO', 'NOBREAK', 'Cyberpower', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(539, 'PANBMA03', 'REFACCIONARIA MADERO', 'NOBREAK', 'Cyberpower', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(540, 'PANBMA04', 'REFACCIONARIA MADERO', 'NOBREAK', 'CYBERPOWER ', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(541, 'PANBME03', 'MERCADOTECNIA', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);
INSERT INTO `pachuca` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(542, 'PANBFI06', 'FINANZAS', 'NOBREAK', 'FORZA', 'NT-511', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(543, 'PANBFI07', 'FINANZAS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(544, 'PANBCM08', 'COMPRAS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(545, 'PANBAL10', 'ALMACEN', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(546, 'PADDCO01', 'Contabilidad', 'Disco Duro Externo', 'TOSHIBA', 'DT320', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(547, 'PADDAD07', 'ADUANA', 'Disco Duro Externo', 'WD GREEN', 'HD-1635', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(548, 'PADDSI08', 'SISTEMAS', 'Disco Duro Externo', 'TOSHIBA', 'HD-1620', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(549, 'PADDSI09', 'SISTEMAS', 'Disco Duro Externo', 'SEAGATE', 'SRD0PV1', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(550, 'PADDSI10', 'SISTEMAS', 'Disco Duro Externo', 'ADATA ', 'HD710P-2T', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(551, 'PADDSI11', 'SISTEMAS', 'Disco Duro Externo', 'ADATA ', 'HV620S-2T', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(552, 'PADDME12', 'MERCADOTECNIA', 'Disco Duro Externo', 'ADATA ', 'HD710P-2T', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(553, 'PAMNDM01', 'DM DATOS MAESTROS', 'MN MONITOR', 'DELL', 'E2221HN', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(554, 'PAMNVT15', 'VT VENTAS', 'MN MONITOR', 'ACER', 'G185HV', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(555, 'PAMNVT15', 'VT VENTAS', 'MN MONITOR', 'SAMSUMG', 'B1930N', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(556, 'PAMNVT16', 'VT VENTAS', 'MN MONITOR', 'ACER', 'V206HQL', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(557, 'PAMNVT17', 'VT VENTAS', 'MN MONITOR', 'SAMSUMG', 'B1930N', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(558, 'PAMNVT18', 'VT VENTAS', 'MN MONITOR', 'SAMSUMG', 'B1930N', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(559, 'PAIMAL10', 'ALMACEN', 'IMPRESORA', 'HP', 'M430', 'MULTIFUNCIONAL HP M430 LASER MONOCROMATICA RED', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puebla`
--

CREATE TABLE `puebla` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puebla`
--

INSERT INTO `puebla` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'PUPCCD02', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3020', 'CI3-13100 8GB WIN 11 PRO 22H2 240GB', '', '100', 'DELL', '', '100', 'DELL', '', '100', '', '', NULL, '', '', NULL, '1 al 8', 'CAMARAS NUEVAS', '100', 'MERAKI', 'NUEVO', '100'),
(2, 'PUPCCD04', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3020', 'CI3-13100 8GB 256 GB SSD WIN11 PRO 22H2', '', '100', 'DELL', '', '100', 'DELL', '', '100', '', '', NULL, '', '', NULL, '9-16', 'CAMARAS NUEVAS', '100', 'SWITCH', 'NUEVO', '100'),
(3, 'PUPCCD01', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3020', 'CI3-13100 8GB 256 GB SSD WIN11 PRO 22H2', '', '100', 'DELL', '', '100', 'DELL', '', '100', '', '', NULL, '', '', NULL, '17-24', 'CAMARAS NUEVAS', '100', 'NODOS', '9 NODOS NUEVOS', '100'),
(4, 'PUPCCD05', 'CEDIS', 'PC ESCRITORIO', 'LENOVO', 'THINKCENTRE M92P', 'CI5-3470 4GB RAM WIN 10 PRO SSD ', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '25-32', 'CAMARAS NUEVAS', '100', 'ACCES POINT', 'NINGUNA', '90'),
(5, 'PUPCCD03', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G2', 'CI3-6100 8GB WIN10 PRO SSD 120GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '1-10', 'DVR 2 CAMARAS NUEVAS', '100', '', '', ''),
(6, 'PUPCCD06', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'QUARONI', 'PENTIUM G2010 8GB WIN 10 PRO SSD 240 HDD 1TB', '', '60', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, 'DVR', 'DVR I 32 CANALES DVR II 16 CANALES', '100', '', '', ''),
(7, 'PUPCCD07', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-8100 4GB WIN 10 PRO SSD 240', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, 'DISCO DURO', '3 HHD 8TB', '100', '', '', ''),
(8, 'PUPCCD08', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI3-8100 4GB WIN 10 PRO 22H2 SSD 240', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '3 NUEVAS', '100', '', '', ''),
(9, 'PUMNCD02', 'CEDIS', 'MONITOR', 'HP', 'VOSTRO  E2222HS', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'PUMNCD04', 'CEDIS', 'MONITOR', 'DELL', 'E2222HS', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'PUMNCD01', 'CEDIS', 'MONITOR', 'DELL', 'E2222HS', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'PUMNCD05', 'CEDIS', 'MONITOR', 'LENOVO', 'LT1953', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'PUMNCD03', 'CEDIS', 'MONITOR', 'HP', '19KA', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'PUMNCD06', 'CEDIS', 'MONITOR', 'HP', '19K', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'PUMNCD07', 'CEDIS', 'MONITOR', 'HP', '19K', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'PUMNCD08', 'CEDIS', 'MONITOR', 'HP', 'V193 ', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'PUIMFC01', 'FC FACTURACION', 'IMPRESORA', 'HP', 'CLASS D1620', 'IMPRESORA BLANCO Y NEGRO', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'PUIMCD01', 'CEDIS', 'IMPRESORA', 'CANON', 'D1620', 'MULTIFUNCIONAL CANON D1620 LASER MONOCROMATICA', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'PUIMCD02', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'PUIMCD03', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'PUHHCD01', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'PUHHCD02', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(23, 'PUHHCD03', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(24, 'PULACD01', 'CEDIS', 'LAPTOP', 'HP', '240 G8', 'CI5-1135G7 8GB 256GB WIN 11 PRO 22H2 14PLG', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(25, 'PUNBCD02', 'CEDIS', 'NOBREAK', 'CYBERPOWER', ' UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(26, 'PUNBCD03', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(27, 'PUNBCD05', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(28, 'PUNBCD01', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(29, 'PUNBCD04', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(30, 'PUNBCD07', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(31, 'PUNBCD08', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(32, 'PUNBSI01', 'SISTEMAS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(33, 'PUNBSI02', 'SISTEMAS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(34, 'PUNBCD06', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(35, 'PUMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MERAKI MX67', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(36, 'PUMXCD02', 'CEDIS', 'FIREWALL', 'CISCO', 'MERAKI MX60', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(37, 'PULCCD01', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'El LI4278 escaneo de códigos de barras 1D', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(38, 'PULCCD02', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'El LI4278 escaneo de códigos de barras 1D', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queretaro`
--

CREATE TABLE `queretaro` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `queretaro`
--

INSERT INTO `queretaro` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'QRPCCD02', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 8GB WIN 10 PRO 22H2  SSD 240 GB', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 'QRPCCD01', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3020', '13TH CI3-13100 8GB WIN 11 PRO  23H2', '', '80', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(3, 'QRPCCD03', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'ACTIVE COOL', 'WIN 7 ULTIMATE 8GB HDD 1TB', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(4, 'QRPCCD04', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI5-3330 8GB WIN10 PRO 22H2 HDD 1TB', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(5, 'QRPCCD05', 'CEDIS', 'PC ESCRITORIO', 'ENSAMBLADA', 'NA', 'CI3-13100 8GB  WIN10 PRO 22H2 HDD 1TB', '', '60', 'GENERICO', '', '60', 'GENERICO', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(6, 'QRMNCD01', 'CEDIS', 'MONITOR', 'DELL', 'E2222HS', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(7, 'QRMNAL02', 'ALMACEN', 'MONITOR', 'DELL', 'E2222HS', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(8, 'QRMNCD02', 'CEDIS', 'MONITOR', 'HP', 'V214b', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'QRMNCD03', 'CEDIS', 'MONITOR', 'ACER', 'V206HQL', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'QRMNCD04', 'CEDIS', 'MONITOR', 'ACER', 'V206HQL', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'QRMNCD05', 'CEDIS', 'MONITOR', 'ACER', 'V206HQL', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'QRIMCD01', 'CEDIS', 'IMPRESORA', 'HP', 'LaserJet Enterprise M430f ', 'IMPRESORA MONOCROMATICA ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'QRHHCD01', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'QRHHCD02', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'QRHHCD03', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'QRNBCD01', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'QRNBNAL02', 'ALMACEN', 'NOBREAK', 'CYBER POWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'QRMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MX64', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `san_luis`
--

CREATE TABLE `san_luis` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `san_luis`
--

INSERT INTO `san_luis` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'SLPCCD01', 'CEDIS', 'PC ESCRITORIO', 'HP', '400G7', 'CI3-10100 8 GB WIN 11 PRO SSD 240 GB', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 'SLPCCD02', 'CEDIS', 'PC ESCRITORIO', 'HP', 'M10079-002', 'CI3-10100 8GB WIN 11 PRO SSD 240', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(3, 'SLPCCD03', 'CEDIS', 'PC ESCRITORIO', 'HP', 'M10079-002', 'CI3-10100 8GB  WIN 11 PRO SSD 240 GB', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(4, 'SLPCCD04', 'CEDIS', 'PC ESCRITORIO', 'HP', 'M10079-002', 'CI3-10100 8GB  WIN 11 PRO SSD 240 GB', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(5, 'SLPCCD05', 'CEDIS', 'PC ESCRITORIO', 'HP', 'M10079-002', 'CI3-10100 8GB WIN 11 PRO 23H2 SSD 240', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(6, 'SLMNCD01', 'CEDIS', 'MONITOR', 'HP', 'HP 400G7', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(7, 'SLMNCD02', 'CEDIS', 'MONITOR', 'HP', 'P204V', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(8, 'SLMNCD03', 'CEDIS', 'MONITOR', 'HP', 'P204V ', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'SLMNCD04', 'CD CEDIS', 'MN MONITOR', 'HP', 'P204V', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'SLIMCD01', 'CEDIS', 'IMPRESORA', 'CANON', 'D1620 LASSER', 'IMPRESORA MULTIFUNCIONAL MONOCROMATICA', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'SLIMCD02', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'SLIMCD03', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'SLHHCD01', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'SLHHCD02', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'SLLACD01', 'CEDIS', 'LAPTOP', 'DELL', 'VOSTRO 3401', 'CI3-1005G1 12GB WIN11 PRO 23H2 SSD 256GB 14PLG', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'SLNBCD01', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'SLNBCD02', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'SLNBCD03', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'SLNBCD04', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'SLNBCD05', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'SLLCCD01', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'Escaneo de códigos de barras 1D', '', '90', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'SLMXCD01', 'CEDIS', 'SWITCH O ACCESS POINT', 'CISCO', 'MX67', '', '', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL),
(23, 'SLLCCD02', 'CD CEDIS', 'LC LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'Escaneo de códigos de barras 1D', '', '90', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(24, 'SLLCCD03', 'CD CEDIS', 'LC LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'Escaneo de códigos de barras 1D', '', '90', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tuxtla`
--

CREATE TABLE `tuxtla` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tuxtla`
--

INSERT INTO `tuxtla` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'TGPCCD01', 'CEDIS', 'PC ESCRITORIO', 'HP', 'PRO DESK 600 G1 SFF', 'CI7-4770 12GB WIN10 PRO SSH2 SSD 240GB', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '1 al 8', 'NINGUNA', '100', 'MERAKI', 'NINGUNA', '90'),
(2, 'TGPCCD02', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3020', 'CI5-4590 12GB WIN10 PRO 22H2 SSD 240GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '9-16', 'CAMARA 10 NO SE VE', '87.5', 'SWITCH', 'NINGUNA', '90'),
(3, 'TGPCCD03', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 12GB WIN10 PRO 22H2 SSD 240GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '17-24', 'CAMARA 19, 20 NO SE VEN', '75', 'NODOS', 'NINGUNA', '100'),
(4, 'TGPCCD04', 'CEDIS', 'PC ESCRITORIO', 'HP', '600 G1 SFF', 'CI7-4770 8GB WIN10 PRO 22H2 SSD 240GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, '25-32', 'CAMARA 25 NO SE VE', '87.5', 'ACCES POINT', 'NINGUNA', '90'),
(5, 'TGPCCD05', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3020', 'CI5-4590 8GB WIN10 PRO SSD 240GB', '', '80', 'LOGITECH', '', '100', 'LOGITECH', '', '100', '', '', NULL, '', '', NULL, 'DVR', 'PROVISION', '90', '', '', ''),
(6, 'TGMNCD01', 'CEDIS', 'MONITOR', 'HP', 'V214B', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DISCO DURO', 'HDD 4GB', '90', '', '', ''),
(7, 'TGMNCD02', 'CEDIS', 'MONITOR', 'HP', 'P201', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '2', '90', '', '', ''),
(8, 'TGMNCD03', 'CEDIS', 'MONITOR', 'HP', 'S1931A', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'TGMNCD04', 'CEDIS', 'MONITOR', 'HP', 'P201', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'TGMNCD05', 'CEDIS', 'MONITOR', 'HP', 'V194', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'TGIMCD01', 'CEDIS', 'IMPRESORA', 'HP', 'D1620', 'MULTIFUNCIONAL CANON D1620 LASER MONOCROMATICA', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'TGIMCD02', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'TGIMCD03', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'TGHHCD01', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'TGHHCD02', 'CEDIS', 'HAND HELD', 'NEWLAND', 'NLS-MT65', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'TGLACD01', 'CEDIS', 'LAPTOP', 'HP', '240 G8', 'CI5-1135G7 8GB WIN11 PRO 22H2 SSD 256GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'TGNBCD01', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'TGNBCD02', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'TGNBCD03', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(20, 'TGNBCD04', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(21, 'TGNBCD05', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(22, 'TGMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MX67', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`) VALUES
(1, 'Jonathan', '$2y$10$Wsy3hBNnLpByTjAquHxdquCAgFc1F206oYJ/f4n5DRTsWvJgm4eoi'),
(2, 'Adriana', '$2y$10$NilvARFB4epTEol6w4mRh.oroeTdmikBobwpoGAlO4FWr7.BZXq6K'),
(3, 'Cristian', '$2y$10$L526pytK.ZJgSs8GYithZuIlTScZoGiogKL6lOwyoNCfpGXbwA24W'),
(4, 'Carlos', '$2y$10$Xlw6XYiwzk52pTPRZfeKpuAKnjbgKWO68HpEat/cQCqUXez07R/0S'),
(5, 'Misael', '$2y$10$NilvARFB4epTEol6w4mRh.oroeTdmikBobwpoGAlO4FWr7.BZXq6K');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veracruz`
--

CREATE TABLE `veracruz` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `veracruz`
--

INSERT INTO `veracruz` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'VELACD01', 'CEDIS', 'LAPTOP', 'HP', '240 G8', 'CI5-1135G7 8GB WIN11 PRO 23H2 SSD 256GB', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(2, 'VEMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MERAKI MX67', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villahermosa`
--

CREATE TABLE `villahermosa` (
  `Id` int(100) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `teclado` varchar(200) NOT NULL,
  `observaciones_teclado` varchar(200) NOT NULL,
  `porcentaje_teclado` varchar(200) DEFAULT NULL,
  `mouse` varchar(200) NOT NULL,
  `observaciones_mouse` varchar(200) NOT NULL,
  `porcentaje_mouse` varchar(200) DEFAULT NULL,
  `pantalla` varchar(200) NOT NULL,
  `observaciones_pantalla` varchar(200) NOT NULL,
  `porcentaje_pantalla` varchar(200) DEFAULT NULL,
  `nobreak` varchar(200) NOT NULL,
  `observaciones_nobreak` varchar(200) NOT NULL,
  `porcentaje_nobreak` varchar(200) DEFAULT NULL,
  `camaras` varchar(200) NOT NULL,
  `observaciones_camaras` varchar(200) NOT NULL,
  `porcentaje_camaras` varchar(200) DEFAULT NULL,
  `redes` varchar(200) NOT NULL,
  `observaciones_redes` varchar(200) NOT NULL,
  `porcentaje_redes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `villahermosa`
--

INSERT INTO `villahermosa` (`Id`, `clave`, `area`, `equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `estado`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'VHPCCD02', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G9', 'CI3-12100 8GB WIN11 PRO 23 H2 SSD 256GB', '', '100', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '1 al 8', 'NO SE VE CANAL 1', '87.5', 'MERAKI', 'NUEVO', '100'),
(2, 'VHPCCD01', 'CEDIS', 'PC ESCRITORIO', 'HP', '280 G5 SMALL', 'CI3-10105 8GB WIN10 PRO 22H2  SSD 240GB', '', '80', 'HP', '', '80', 'HP', '', '80', '', '', NULL, '', '', NULL, '1 al 8', 'DVR 2\r\nNO SE VISUALIZAN', '0', 'SWITCH', 'NINGUNA', '90'),
(3, 'VHPCCD03', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI 7-3770 8GB RAM WIN 7  PROFESSIONAL 500GB', '', '60', 'LOGITECH', '', '80', 'LOGITECH', '', '80', '', '', NULL, '', '', NULL, '9-16', 'DVR 2\r\nNO SE VISUALIZAN', '0', 'NODOS', 'REHUBICACION', '50'),
(4, 'VHPCCD04', 'CEDIS', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 7010', 'CI7-3770 8GB WIN10 PRO 8GB SSD 120GB', '', '60', 'LOGITECH', '', '80', 'LOGITECH', '', '80', '', '', NULL, '', '', NULL, '', '', '', 'ACCES POINT', 'NINGUNA', '90'),
(5, 'VHMNCD01', 'CEDIS', 'MONITOR', 'HP', 'P24V G4', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DVR', 'DVR 2 POSIBLE EQUIPO DAÑADO', '50', '', '', ''),
(6, 'VHMNCD02', 'CEDIS', 'MONITOR', 'HP', 'P24v G5', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DISCO DURO', '2 HDD 5GB', '90', '', '', ''),
(7, 'VHMNCD03', 'CEDIS', 'MONITOR', 'DELL', 'E2213c', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', 'POSIBLE FUENTE DAÑADA', '50', '', '', ''),
(8, 'VHMNCD04', 'CEDIS', 'MONITOR', '', '', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(9, 'VHIMCD01', 'CEDIS', 'IMPRESORA', 'CANON', 'D1620', 'Multifuncional Canon D1620 láser monocromática', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(10, 'VHIMCD02', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(11, 'VHIMCD03', 'CD CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', '', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(12, 'VHIMCD04', 'CEDIS', 'IMPRESORA', 'ZEBRA', 'ZQ310', 'IMPRESORA ETIQUETAS ', '', '0', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(13, 'VHHHCD01', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(14, 'VHHHCD02', 'CEDIS', 'HAND HELD', 'ZEBRA', 'MC330M', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(15, 'VHNBGC01', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(16, 'VHNBCD02', 'CEDIS', 'NOBREAK', 'CYBERPOWER', 'UT750GU', '', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(17, 'VHMXCD01', 'CEDIS', 'FIREWALL', 'CISCO', 'MERAKI MX67', '', '', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(18, 'VHMXCD02', 'CEDIS', 'FIREWALL', 'CISCO', 'MX60', '', '', '60', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL),
(19, 'VHLCCD01', 'CEDIS', 'LECTOR CODIGO DE BARRAS', 'Symbol', 'LI4278', 'LI4278 escaneo de códigos de barras 1D', '', '80', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cancun`
--
ALTER TABLE `cancun`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `chihuahua`
--
ALTER TABLE `chihuahua`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `cordoba`
--
ALTER TABLE `cordoba`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `cuernavaca`
--
ALTER TABLE `cuernavaca`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `culiacan`
--
ALTER TABLE `culiacan`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `guadalajara`
--
ALTER TABLE `guadalajara`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `hermosillo`
--
ALTER TABLE `hermosillo`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `leon`
--
ALTER TABLE `leon`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `merida`
--
ALTER TABLE `merida`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `monterrey`
--
ALTER TABLE `monterrey`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `oaxaca`
--
ALTER TABLE `oaxaca`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `pachuca`
--
ALTER TABLE `pachuca`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `puebla`
--
ALTER TABLE `puebla`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `queretaro`
--
ALTER TABLE `queretaro`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `san_luis`
--
ALTER TABLE `san_luis`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tuxtla`
--
ALTER TABLE `tuxtla`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `veracruz`
--
ALTER TABLE `veracruz`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `villahermosa`
--
ALTER TABLE `villahermosa`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cancun`
--
ALTER TABLE `cancun`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `chihuahua`
--
ALTER TABLE `chihuahua`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `cordoba`
--
ALTER TABLE `cordoba`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cuernavaca`
--
ALTER TABLE `cuernavaca`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `culiacan`
--
ALTER TABLE `culiacan`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `guadalajara`
--
ALTER TABLE `guadalajara`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `hermosillo`
--
ALTER TABLE `hermosillo`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `leon`
--
ALTER TABLE `leon`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `merida`
--
ALTER TABLE `merida`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `monterrey`
--
ALTER TABLE `monterrey`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `oaxaca`
--
ALTER TABLE `oaxaca`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `pachuca`
--
ALTER TABLE `pachuca`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT de la tabla `puebla`
--
ALTER TABLE `puebla`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `queretaro`
--
ALTER TABLE `queretaro`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `san_luis`
--
ALTER TABLE `san_luis`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tuxtla`
--
ALTER TABLE `tuxtla`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `veracruz`
--
ALTER TABLE `veracruz`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `villahermosa`
--
ALTER TABLE `villahermosa`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
