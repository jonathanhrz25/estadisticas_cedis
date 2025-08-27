-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-09-2024 a las 01:29:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

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
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

INSERT INTO `cancun` (`Id`, `area`, `tipo_equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `porcentaje_equipo`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, '', 'PC ESCRITORIO', 'HP', '280 G3', 'Ci3-9100 8GB WIN10 PRO 22H2 SSD 240 GB HP', 'CAMBIO DE SSD, CAMBIO DE PILA, FORMATEAR', '0', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', '1-8', 'CAMARA 8 NO SE VE', '87.50', 'MERAKI', 'NINGUNA', '100'),
(2, 'FACTURACION', 'PC ESCRITORIO', 'HP', '280 G3', 'Ci3-9100 4GB WIN11 PRO 22H2 HHD 1 TB', 'CAMBIAR S.O Y DISCO DURO(LENTITUD)', '0', 'HP', 'TECLAS SE TRABAN', '50', 'HP', 'NO RESPONDE BIEN', '50', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', '9-16', 'CAMARA 9 NO SE VE', '87.50', 'SWITCH', 'NINGUNA', '100'),
(3, 'GERENTE', 'PC ESCRITORIO', 'HP', '280 G3', 'Ci3-9100 4GB WIN10 PRO 22H2 HHD 1 TB', 'CAMBIAR DISCO DURO(LENTITUD)', '50', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', '17-24', 'NINGUNA', '100', 'NODOS', 'FALTA UN NODO PARA IMPRESORA', '88.89'),
(4, 'JEFE DE PISO', 'PC ESCRITORIO', 'HP', '280 G3', 'Ci3-9100 4GB WIN10 PRO 22H2 HHD 1 TB', 'CAMBIAR DISCO DURO(LENTITUD)', '50', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', '25-32', 'CAMARA 26 NO SE VE, 27,28 y 29', '37.50', 'ACCES POINT', 'NINGUNA', '100'),
(5, 'RECIBO', 'PC ESCRITORIO', 'HP', '280 G3', 'Ci3-9100 4GB WIN10 PRO 22H2 HHD 1 TB', 'CAMBIAR DISCO DURO(LENTITUD)', '50', 'HP', 'TECLAS SE TRABAN', '50', 'HP', 'NO RESPONDE BIEN', '50', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', '33-40', '-', NULL, '', '', NULL),
(6, 'MESA 3', 'PC ESCRITORIO', 'HP', '280 G3', 'Ci3-9100 4GB WIN10 PRO 22H2 SSD 120 GB HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', 'DVR', 'PROVICION', '90', '', '', NULL),
(7, 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G3', 'Ci3-9100 4GB WIN11 PRO 22H2 HHD 1 TB', 'CAMBIAR S.O Y DISCO DURO(LENTITUD)', '0', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', 'DISCO DURO', '2 HHD 8TB', '90', '', '', NULL),
(8, 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G3', 'Ci3-9100 4GB WIN11 PRO 22H2 HHD 1 TB', 'CAMBIAR S.O Y DISCO DURO(LENTITUD)', '0', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', 'FUENTES DE PODER', '2', '90', '', '', NULL),
(9, 'FACTURACION', 'IMPRESORA', 'HP', 'M521', '', 'FUNCIONAL', '90', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chihuahua`
--

CREATE TABLE `chihuahua` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

INSERT INTO `chihuahua` (`Id`, `area`, `tipo_equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `porcentaje_equipo`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'MESA 1', 'ESCRITORIO', 'HP', '', 'CI5 RAM 4 GB RAM WINDOWS 11 HDD 500', 'FALTA INCREMENTAR MAS RAM PARA SOPORTAR EL SO', '80', 'TRUEFLASHIX', 'TECLAS DESPNTADAS', '0', 'TRUEFLASHIX', 'SEMI NUEVO', '0', 'HP', 'ACEPTABLE', '80', 'no cuenta', 'no cuenta', '0', '45505', 'NO SE VEN', NULL, 'MERAKI', 'SUCIO', '80'),
(2, 'LIDER DE ALMACEN', 'ESCRITORIO', 'ENSAMBLADA', '', 'CI5 RAM 8 GB WINDOWS 10 120 GB SHD', 'ACEPTABLE', '80', 'TRUEFLASHIX', 'LE FALLAN LAS TECLA ESPACIADORA', '0', 'TRUEFLASHIX', 'SEMI NUEVO', '0', 'HP', 'ACEPTABLE', '80', 'no cuenta', 'no cuenta', '0', '42614', 'NO SE VEN', NULL, 'SWITCH', 'CAT 5 FUNCIONAL', '50'),
(3, 'FACTURACION', 'ESCRITORIO', 'ENSAMBLADA', '', 'CI5 RAM 8 GB WINDOWS 10 120 GB SHD', 'ACEPTABLE', '80', 'TRUEFLASHIX', 'FALLO EN LA TECLA SHIFT', '0', 'TRUEFLASHIX', 'SEMI NUEVO', '0', 'LG', 'ACEPTABLE', '80', 'no cuenta', 'no cuenta', '0', '17-24', 'NO SE VEN', NULL, 'NODOS', 'SOLO 5 DE 10', '40'),
(4, 'GERENCIA', 'ESCRITORIO', 'ENSAMBLADA', '', 'CI5 RAM 8 GB WINDOWS 10 240 GB SHD', 'ACEPTABLE', '80', 'TRUEFLASHIX', 'LAS TECLAS SE TRABAN', '0', 'TRUEFLASHIX', 'SEMI NUEVO', '0', 'LG', 'ACEPTABLE', '80', 'no cuenta', 'no cuenta', '0', '25-32', 'NO SE VEN', NULL, 'ACCES POINT', 'ACEPTABLES', '90'),
(5, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DVR', 'ACEPTABLE', '70', '', '', NULL),
(6, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DISCO DURO', 'ACEPTABLE', '70', '', '', NULL),
(7, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', 'NO OPERAN', '0', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuernavaca`
--

CREATE TABLE `cuernavaca` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

INSERT INTO `cuernavaca` (`Id`, `area`, `tipo_equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `porcentaje_equipo`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'GERENTE', 'PC ESCRITORIO', 'QUARONI', '', 'Ci3 8GB WIN10 PRO 22H2 HDD 1 TB', 'CAMBIAR DISCO DURO(LENTITUD)CAMBIO', '50', 'LOGITECH', 'FUNCIONAL', '90', 'LOGITECH', 'FUNCIONAL', '90', 'HP', 'FUNCIONAL', '90', 'SI', 'NO RETIENE CARGA', '50', '1-8', 'RETIRADAS POR REMODELACION', '0', 'MERAKI', 'NINGUNA', '100'),
(2, 'TELEMARKETING', 'PC ESCRITORIO', 'LENOVO', '', 'Ci5 4GB WIN10 PRO 22H2 HDD 500 G', 'CAMBIAR DISCO DURO(LENTITUD)', '50', 'PERFECT CHOICE', 'FUNCIONAL', '90', 'PERFECT CHOICE', 'FUNCIONAL', '90', 'LENOVO', 'FUNCIONAL', '90', 'NO', 'NO HAY', '0', '9-16', 'RETIRADAS POR REMODELACION', '0', 'SWITCH', 'NINGUNA', '80'),
(3, 'LIDER DE ALMACEN', 'PC ESCRITORIO', 'LENOVO', '', 'AMD A8 PRO 8 GB WIN10 PRO SSD 240', 'LENTITUD,RAM, SSD', '50', 'PERFECT CHOICE', 'TECLAS NO VISIBLES', '50', 'PERFECT CHOICE', 'NO RESPONDE BIEN', '50', 'DELL', 'FUNCIONAL', '90', 'NO', 'NO HAY', '0', '17-24', 'RETIRADAS POR REMODELACION', '0', 'NODOS', 'RETIRADOS POR REMODELACION', '0'),
(4, 'FACTURACION', 'PC ESCRITORIO', 'TRUE BAS X', '', 'Ci3-3220 8GB WIN10 PRO 22H2 HDD 1 TB', 'CAMBIAR DISCO DURO(LENTITUD)', '50', 'PERFECT CHOICE', 'TECLAS NO VISIBLES', '50', 'PERFECT CHOICE', 'NO RESPONDE BIEN', '50', 'ACER', 'FUNCIONAL', '90', 'SI', 'NO RETIENE CARGA', '50', '25-32', 'RETIRADAS POR REMODELACION', '0', 'ACCES POINT', 'RETIRADOS POR REMODELACION', '50'),
(5, 'MESA', 'PC ESCRITORIO', 'HP', '', 'Ci5 4GB WIN11 PRO 22H2 HDD 1 TB', 'CAMBIAR S.O Y DISCO DURO(LENTITUD),RAM', '0', 'PERFECT CHOICE', 'TECLAS NO VISIBLES', '50', 'PERFECT CHOICE', 'NO RESPONDE BIEN', '50', 'HP', 'FUNCIONAL', '90', 'NO', 'NO HAY', '0', '33-40', '-', NULL, '', '', NULL),
(6, 'FACTURACION', 'IMPRESORA', 'CANNON', '', '', 'FUNCIONAL', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DVR', 'PINETRON', '0', '', '', NULL),
(7, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DISCO DURO', '-', '0', '', '', NULL),
(8, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '1', '0', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `culiacan`
--

CREATE TABLE `culiacan` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

INSERT INTO `culiacan` (`Id`, `area`, `tipo_equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `porcentaje_equipo`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'GERENCIA', 'PC ESCRITORIO', 'TRUE BAS X', '', 'Ci3 4GB WIN7 ULTIMATE HDD 500 GB TOSHIBA', 'EQUIPO ENSAMBLADO CON PLACA LOGITECH SE LE DARA LIMEZA', '60', 'LOGITECH MK 120', 'TECLADO NUEVO', '100', 'LOGITECH MK 120', 'MOUSE NUEVO', '100', 'LG 14\"', 'ESTADO ACEPTABLE', '70', 'DESCOMPUESTO', 'EL NOBRAKE YA NO RETIENE CARGA', '20', '1-8', '', '', 'MERAKI', '', ''),
(2, 'TLK', 'PC ESCRITORIO', 'HP', '', 'WIN 10 ETERPRICE CI5 4GB WD 1 TB', 'NINGUNA, SE LE DARA LIMPIEZA', '80', 'LOGITECH MK 120', 'TECLADO NUEVO', '100', 'LOGITECH MK 120', 'MOUSE NUEVO', '100', 'LG 14\"', 'ESTADO ACEPTABLE', '70', 'NO CUENTA', 'NO CUENTA', '0', '9-16', '', '', 'SWITCH', '', ''),
(3, 'FACTURACION', 'PC ESCRITORIO', 'TRUE BAS X', '', 'Ci5 8GB WIN7 ULTIMATE HDD 1 TB TOSHIBA', 'EQUIPO ENSAMBLADO CON PLACA LOGITECH SE LE DARA LIMEZA', '60', 'LOGITECH MK 120', 'TECLADO NUEVO', '100', 'LOGITECH MK 120', 'MOUSE NUEVO', '100', 'LG 14\"', 'ESTADO ACEPTABLE', '80', 'NO CUENTA', 'NO CUENTA', '0', '17-24', '', '', 'NODOS', '', ''),
(4, 'ALMACEN 1', 'PC ESCRITORIO', 'TRUE BAS X', '', 'Ci3 4GB WIN7 ULTIMATE HDD 500 GB TOSHIBA', 'EQUIPO ENSAMBLADO CON PLACA LOGITECH SE LE DARA LIMEZA', '50', 'LOGITECH MK 120', 'TECLADO NUEVO', '100', 'LOGITECH MK 120', 'MOUSE NUEVO', '100', 'LG 14\"', 'ESTADO ACEPTABLE', '70', 'NO CUENTA', 'NO CUENTA', '0', '25-32', '', '', 'ACCES POINT', '', ''),
(5, 'ALMACEN 2', 'PC ESCRITORIO', 'TRUE BAS X', '', 'Ci3 4GB WIN7 ULTIMATE HDD 500 GB TOSHIBA', 'EQUIPO ENSAMBLADO CON PLACA LOGITECH SE LE DARA LIMEZA', '50', 'LOGITECH MK 120', 'TECLADO NUEVO', '100', 'LOGITECH MK 120', 'MOUSE NUEVO', '100', 'LG 14\"', 'ESTADO ACEPTABLE', '70', 'NO CUENTA', 'NO CUENTA', '0', '33-40', '', '', '', '', ''),
(6, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DVR', '', '', '', '', ''),
(7, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DISCO DURO', '', '', '', '', ''),
(8, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guadalajara`
--

CREATE TABLE `guadalajara` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hermosillo`
--

CREATE TABLE `hermosillo` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leon`
--

CREATE TABLE `leon` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `merida`
--

CREATE TABLE `merida` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

INSERT INTO `merida` (`Id`, `area`, `tipo_equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `porcentaje_equipo`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'GERENCIA', 'PC ESCRITORIO', 'HP', 'prodesk 600 g1 sff', 'Ci7 16GB WIN10 PRO 22H2 SSD 240 GB HP', 'NINGUNA', '100', 'CYBERPOWER UT750GU', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '90', 'HP', 'FUNCIONAL', '100', '1-8', 'NINGUNA', '100', 'MERAKI', 'NINGUNA', '100'),
(2, 'FACTURURACION', 'PC ESCRITORIO', 'ENSAMBLADA', '', 'Ci5 8GB WIN10 PRO 22H2 SSD 240 GB HP', 'NINGUNA', '100', 'CYBERPOWER UT750GU', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '90', 'HP', 'FUNCIONAL', '100', '9-16', 'NINGUNA', '100', 'SWITCH', 'NINGUNA', '100'),
(3, 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'vostro 3681', 'Ci3 4GB WIN10 SINGLE LENGUAJE 22H2 SSD 240 GB HP', 'CAMBIAR S.O', '50', 'CYBERPOWER UT750GU', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '90', 'DELL', 'FUNCIONAL', '100', '17-24', 'NINGUNA', '100', 'NODOS', '1 NODO DA?ADO', '85.71'),
(4, 'LIDER DE ALMACEN', 'PC ESCRITORIO', 'HP', '208 G3 SFF BUSINESS PC', 'Ci5 4GB WIN11 PRO 22H2 SSD 240 GB HP', 'CAMBIAR S.O', '50', 'CYBERPOWER UT750GU', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '90', 'HP', 'FUNCIONAL', '100', '25-32', 'CAMARA 29 EN BLANCO Y NEGRO', '87.50', 'ACCES POINT', 'NINGUNA', '100'),
(5, 'EMBARQUES', 'PC ESCRITORIO', 'HP', '', 'Ci3 8GB WIN10 PRO 22H2 SSD 240 GB HP', 'NINGUNA', '100', 'CYBERPOWER UT750GU', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '90', 'HP', 'FUNCIONAL', '100', '33-40', '-', NULL, '', '', NULL),
(6, 'RECIBO', 'PC ESCRITORIO', 'ENSAMBLADA', '', 'Ci5 8GB WIN11 PRO 22H2 SSD 240 GB HP', 'CAMBIAR S.O', '50', 'CYBERPOWER UT750GU', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '90', 'GENERICO', 'FUNCIONAL', '100', 'DVR', 'DAHUA', '100', '', '', NULL),
(7, 'FACTURURACION', 'IMPRESORA', 'HP', '', 'M521', 'IMPRESIONES EN MALA CALIDAD', '70', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DISCO DURO', '2 HHD 8TB', '100', '', '', NULL),
(8, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '2', '100', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monterrey`
--

CREATE TABLE `monterrey` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oaxaca`
--

CREATE TABLE `oaxaca` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

INSERT INTO `oaxaca` (`Id`, `area`, `tipo_equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `porcentaje_equipo`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G4', 'CI3 4GB WIN10 PRO 22H2 SSD 120GB', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', '1-8', 'CAMARA 8 NO SE VE', '87.50', 'MERAKI', 'NINGUNA', '100'),
(2, 'JEFE DE MESAS', 'PC ESCRITORIO', 'HP', '280 G4', 'CI3-9100 8GB WIN10 PRO 22H2 SSD 120GB', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '90', 'NO', 'NO HAY', '0', '9-16', 'NINGUNA', '100', 'SWITCH', 'NINGUNA', '90'),
(3, 'FACTURACION', 'PC ESCRITORIO', 'HP', '280 G4', 'Ci3 4GB WIN10 PRO 22H2 SSD 120GB', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', '17-24', 'CAMARA 24 NO SE VE', '87.50', 'NODOS', 'NINGUNA', '100'),
(4, 'RECIBO', 'PC ESCRITORIO', 'HP', '280 G4', 'Ci3 4GB WIN10 PRO 22H2 HDD 1TB', 'CAMBIAR DISCO DURO(LENTITUD)', '50', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '90', 'SI', 'FUNCIONAL', '100', '25-32', 'CAMARA 25 Y 26 NO SE VEN', '75', 'ACCES POINT', 'NINGUNA', '100'),
(5, 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G4', 'Ci3 4GB WIN11 PRO 23H2 HDD 1TB', 'CAMBIAR S.O Y DISCO DURO(LENTITUD)', '0', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', '33-40', '', NULL, '', '', NULL),
(6, 'LIDER DE ALMACEN', 'PC ESCRITORIO', 'HP', '280 G4', 'Ci3 4GB WIN10 PRO 22H2 HDD 1TB', 'CAMBIAR DISCO DURO(LENTITUD)', '50', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', 'DVR', 'PROVICION', '90', '', '', NULL),
(7, 'GERENTE', 'PC ESCRITORIO', 'HP', '280 G4', 'Ci3-9100 4GB WIN10 PRO 22H2 HDD 1TB', 'CAMBIAR DISCO DURO(LENTITUD)', '50', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', 'DISCO DURO', '2 HHD 4GB', '90', '', '', NULL),
(8, 'FACTURACION', 'IMPRESORA', 'HP', '', 'M521', 'FUNCIONAL', '90', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '2', '90', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pachuca`
--

CREATE TABLE `pachuca` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puebla`
--

CREATE TABLE `puebla` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

INSERT INTO `puebla` (`Id`, `area`, `tipo_equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `porcentaje_equipo`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'GERENCIA', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3020', 'CI3-13100 8GB 256 GB SSD WIN11 PRO 22H2', 'NINGUNA', '100', 'DELL', 'nuevo', '100', 'DELL', 'nuevo', '100', 'DELL', 'NUEVO', '100', 'CYBERPOWER UT750GU', 'nuevo', '100', '1-8', 'NINGUNA', '100', 'MERAKI', '', '90'),
(2, 'JEFE DE ALMACEN', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3020', 'CI3-13100 8GB 256 GB SSD WIN11 PRO 22H2', 'NINGUNA', '100', 'DELL', 'nuevo', '100', 'DELL', 'nuevo', '100', 'DELL', 'NUEVO', '100', 'CYBERPOWER UT750GU', 'nuevo', '100', '9-16', 'NINGUNA', '100', 'SWITCH', '', '100'),
(3, 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G2', 'CI3-6100 8GB WIN10 PRO SSD 120GB', 'NINGUNA', '100', 'LOGITECH', 'nuevo', '100', 'LOGITECH', 'nuevo', '100', 'HP', 'SEMI NUEVO', '90', 'CYBERPOWER UT750GU', 'nuevo', '100', '17-24', 'NINGUNA', '100', 'NODOS', '', '100'),
(4, 'FACTURACION', 'PC ESCRITORIO', 'DELL', 'VOSTRO 3020', 'CI3-13100 8GB WIN 11 PRO 22H2 SSD 240GB', 'NINGUNA', '100', 'HP', 'nuevo', '100', 'HP', 'nuevo', '100', 'HP', 'NUEVO', '100', 'CYBERPOWER UT750GU', 'nuevo', '100', '25-32', 'NINGUNA', '100', 'ACCES POINT', '', '100'),
(5, 'LOGISTICA', 'PC ESCRITORIO', 'LENOVO', 'THINKCENTRE M92P', 'CI5-3470 4GB WIN 10 PRO SSD 240', 'RAM', '90', 'LOGITECH', 'nuevo', '100', 'LOGITECH', 'nuevo', '100', 'LENOVO', 'SEMI NUEVO', '90', 'CYBERPOWER UT750GU', 'nuevo', '100', '33-42', 'NINGUNA', '100', '', '', NULL),
(6, 'MESA 1', 'PC ESCRITORIO', 'QUARONI', '', 'PENTIUM G2010 8GB WIN 10 PRO SSD 240 HDD 1TB', 'NINGUN?', '80', 'LOGITECH', 'nuevo', '100', 'LOGITECH', 'nuevo', '100', 'HP', 'SEMI NUEVO', '90', 'CYBERPOWER UT750GU', 'nuevo', '100', 'DVR', 'DAHUA', '100', '', '', NULL),
(7, 'MESA 2', 'PC ESCRITORIO', 'HP', '280 G3', 'CI3-8100 4GB WIN 10 PRO 22H2 SSD 240', 'RAM', '90', 'LOGITECH', 'nuevo', '100', 'LOGITECH', 'nuevo', '100', 'HP', 'SEMI NUEVO', '90', 'CYBERPOWER UT750GU', 'nuevo', '100', 'DISCO DURO', '2 HHD 8TB', '100', '', '', NULL),
(8, 'MESA 3', 'PC ESCRITORIO', 'HP', '280 G3', 'CI3-8100 4GB WIN 10 PRO 22H2 SSD 240', 'RAM', '90', 'LOGITECH', 'nuevo', '100', 'LOGITECH', 'nuevo', '100', 'HP', 'SEMI NUEVO', '90', 'CYBERPOWER UT750GU', 'nuevo', '100', 'FUENTES DE PODER', 'EPCOM', '100', '', '', NULL),
(9, 'FACTURACION', 'IMPRESORA', 'CANON', 'D1600', '', 'NUEVA', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queretaro`
--

CREATE TABLE `queretaro` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `san_luis`
--

CREATE TABLE `san_luis` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tuxtla`
--

CREATE TABLE `tuxtla` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

INSERT INTO `tuxtla` (`Id`, `area`, `tipo_equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `porcentaje_equipo`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'GERENTE', 'LAPTOP', 'HP', '240 G8', 'CI5-1135G7 8GB WIN11 PRO 22H2 SSD 256GB', 'NINGUNA', '100', '-', '-', NULL, '-', '-', NULL, '-', '-', NULL, '-', '-', NULL, '1-8', 'NINGUNA', '100', 'MERAKI', 'NINGUNA', '100'),
(2, 'FACTURACION', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3020', 'CI5-4590 12GB WIN10 PRO 22H2 SSD 240GB', 'NINGUNA', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'HP P201', 'NINGUNA', '90', 'CYBERPOWER UT750GU', 'NUEVO', '100', '9-16', 'CAMARA 10 NO SE VE', '87.50', 'SWITCH', 'NINGUNA', '90'),
(3, 'LIDER DE ALMACEN', 'PC ESCRITORIO', 'HP', 'PRO DESK 600 G1 SFF', 'CI7-4770 12GB WIN10 PRO SSH2 SSD 240GB', 'NINGUNA', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'HP V214B', 'NINGUNA', '90', 'CYBERPOWER UT750GU', 'NUEVO', '100', '17-24', 'CAMARA 19, 20 NO SE VEN', '75', 'NODOS', 'NINGUNA', '100'),
(4, 'JEFE DE PISO', 'PC ESCRITORIO', 'HP', '280 G3 SFF', 'CI5-9500 12GB WIN10 PRO 22H2 SSD 240GB', 'NINGUNA', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'HP S1931A', 'NINGUNA', '90', 'CYBERPOWER UT750GU', 'NUEVO', '100', '25-32', 'CAMARA 25 NO SE VE', '87.50', 'ACCES POINT', 'NINGUNA', '100'),
(5, 'TELEMARKETING', 'PC ESCRITORIO', 'DELL', 'OPTIPLEX 3020', 'CI5-4590 8GB WIN10 PRO SSD 240GB', 'NINGUNA', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'HP P201', 'NINGUNA', '90', 'CYBERPOWER UT750GU', 'NUEVO', '100', '33-40', '-', NULL, '', '', NULL),
(6, 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '600 G1 SFF', 'CI7-4770 8GB WIN10 PRO 22H2 SSD 240GB', 'NINGUNA', '100', 'LOGITECH', 'NUEVO', '100', 'LOGITECH', 'NUEVO', '100', 'HP V194', 'NINGUNA', '90', 'CYBERPOWER UT750GU', 'NUEVO', '100', 'DVR', 'PROVICION', '90', '', '', NULL),
(7, 'FACTURACION', 'IMPRESORA', 'CANNON', '', '', 'NUEVA', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DISCO DURO', 'HDD 4GB', '90', '', '', NULL),
(8, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '2', '90', '', '', NULL);

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
(1, 'Jonathan', '$2y$10$pFlej50I3jIpl8PlIjmfsOmK/ONTxk7ONIxfwcDqEZ8f4KhFZO3cC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villahermosa`
--

CREATE TABLE `villahermosa` (
  `Id` int(100) NOT NULL,
  `area` varchar(200) NOT NULL,
  `tipo_equipo` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `especificaciones` varchar(200) NOT NULL,
  `observaciones_equipo` varchar(200) NOT NULL,
  `porcentaje_equipo` varchar(200) DEFAULT NULL,
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

INSERT INTO `villahermosa` (`Id`, `area`, `tipo_equipo`, `marca`, `modelo`, `especificaciones`, `observaciones_equipo`, `porcentaje_equipo`, `teclado`, `observaciones_teclado`, `porcentaje_teclado`, `mouse`, `observaciones_mouse`, `porcentaje_mouse`, `pantalla`, `observaciones_pantalla`, `porcentaje_pantalla`, `nobreak`, `observaciones_nobreak`, `porcentaje_nobreak`, `camaras`, `observaciones_camaras`, `porcentaje_camaras`, `redes`, `observaciones_redes`, `porcentaje_redes`) VALUES
(1, 'ALMACEN', 'PC ESCRITORIO', 'DELL ', '7010', 'Ci7 8GB WIN7 PRO 22H2 HDD 500 GB', 'CAMBIAR S.O Y DISCO DURO(LENTITUD)', '0', 'DELL', 'TECLAS NO VISIBLES', '50', 'DELL', 'NO RESPONDE BIEN', '50', 'DELL', 'NINGUNA', '90', 'NO', 'NO HAY', '0', '1-8', 'DVR I', '100', 'MERAKI', 'NINGUNA', '100'),
(2, 'TELEMARKETING', 'PC ESCRITORIO', 'HP', '280 G9', 'CI3-12100 8GB WIN11 PRO 23 H2 SSD 240 GB', 'NUEVO', '100', 'HP', 'TECLAS NO VISIBLES', '50', 'HP', 'NO RESPONDE BIEN', '50', 'HP', 'NINGUNA', '90', 'NO', 'NO HAY', '0', '9-16', 'DVR II', '100', 'SWITCH', 'NINGUNA', '90'),
(3, 'FACTURISTA', 'PC ESCRITORIO', 'DELL', '', 'Ci5 4GB WIN10 PRO 22H2 SSD 120', 'NINGUNA', '100', 'DELL', 'NINGUNA', '100', 'DELL', 'NINGUNA', '100', 'DELL', 'NINGUNA', '90', 'SI', 'NO RETIENE CARGA', '50', '17-24', 'DVR II, 3 CAMRAS RETIRADAS POR REMODELACION', '62.50', 'NODOS', 'NINGUNA', '90'),
(4, 'GERENTE', 'PC ESCRITORIO', 'HP', '', '', 'NUEVA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '100', 'HP', 'NINGUNA', '90', 'NO', 'NO HAY', '0', '25-32', '', NULL, 'ACCES POINT', 'NINGUNA', '90'),
(5, 'MESA 1', 'PC ESCRITORIO', '', '', 'AMD A6 12GB WIN7 ULTIMATE HDD 500GB', 'CAMBIO DE EQUIPO', '0', 'GENERICO', 'EQUIPO VIEJO', '50', 'GENERICO', 'NO RESPONDE BIEN', '50', 'GENERICO', 'EQUIPO VIEJO', '50', 'NO', 'NO HAY', '0', '33-40', '', NULL, '', '', NULL),
(6, 'FACTURACION', 'IMPRESORA', 'CANNON', '', 'D1620', 'NUEVA', '100', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DVR', 'DAHUA', '100', '', '', NULL),
(7, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'DISCO DURO', 'DVR IY II HDD 5GB', '90', '', '', NULL),
(8, '', '', '', '', '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, 'FUENTES DE PODER', '2', '90', '', '', NULL);

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
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `chihuahua`
--
ALTER TABLE `chihuahua`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cuernavaca`
--
ALTER TABLE `cuernavaca`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `culiacan`
--
ALTER TABLE `culiacan`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `guadalajara`
--
ALTER TABLE `guadalajara`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hermosillo`
--
ALTER TABLE `hermosillo`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `leon`
--
ALTER TABLE `leon`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `merida`
--
ALTER TABLE `merida`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `monterrey`
--
ALTER TABLE `monterrey`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oaxaca`
--
ALTER TABLE `oaxaca`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pachuca`
--
ALTER TABLE `pachuca`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puebla`
--
ALTER TABLE `puebla`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `queretaro`
--
ALTER TABLE `queretaro`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `san_luis`
--
ALTER TABLE `san_luis`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tuxtla`
--
ALTER TABLE `tuxtla`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `villahermosa`
--
ALTER TABLE `villahermosa`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
