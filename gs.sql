-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2018 a las 21:12:45
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controles`
--

CREATE TABLE `controles` (
  `id_control` int(11) NOT NULL,
  `titulo` varchar(250) COLLATE latin1_bin DEFAULT NULL,
  `contenido` varchar(250) COLLATE latin1_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `creado` date DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `modificado` date DEFAULT NULL,
  `responsable` int(11) DEFAULT NULL,
  `usuario` varchar(250) COLLATE latin1_bin DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Volcado de datos para la tabla `controles`
--

INSERT INTO `controles` (`id_control`, `titulo`, `contenido`, `status`, `creado`, `ano`, `modificado`, `responsable`, `usuario`, `periodo`) VALUES
(1, 'Gestion de Incidentes', 'GestiÃ³n de Incidentes', 3, '2018-05-07', 2018, NULL, 1, 'newton', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(250) COLLATE latin1_bin NOT NULL,
  `color` varchar(250) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `estado`, `color`) VALUES
(1, 'Controlado', 'green'),
(2, 'Pendiente', 'red');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referencias`
--

CREATE TABLE `referencias` (
  `id_referencia` int(11) NOT NULL,
  `id_control` int(11) DEFAULT NULL,
  `accion` varchar(250) COLLATE latin1_bin DEFAULT NULL,
  `observacion` varchar(250) COLLATE latin1_bin DEFAULT NULL,
  `evidencia` varchar(250) COLLATE latin1_bin DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `nro_referencia` int(11) DEFAULT NULL,
  `modificacion` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Volcado de datos para la tabla `referencias`
--

INSERT INTO `referencias` (`id_referencia`, `id_control`, `accion`, `observacion`, `evidencia`, `mes`, `ano`, `nro_referencia`, `modificacion`, `status`) VALUES
(1, 1, NULL, NULL, NULL, 1, 2018, 1, NULL, 2),
(2, 1, NULL, NULL, NULL, 2, 2018, 2, NULL, 2),
(3, 1, NULL, NULL, NULL, 3, 2018, 3, NULL, 2),
(4, 1, NULL, NULL, NULL, 4, 2018, 4, NULL, 2),
(5, 1, NULL, NULL, NULL, 5, 2018, 5, NULL, 2),
(6, 1, NULL, NULL, NULL, 6, 2018, 6, NULL, 2),
(7, 1, NULL, NULL, NULL, 7, 2018, 7, NULL, 2),
(8, 1, NULL, NULL, NULL, 8, 2018, 8, NULL, 2),
(9, 1, NULL, NULL, NULL, 9, 2018, 9, NULL, 2),
(10, 1, NULL, NULL, NULL, 10, 2018, 10, NULL, 2),
(11, 1, NULL, NULL, NULL, 11, 2018, 11, NULL, 2),
(12, 1, NULL, NULL, NULL, 12, 2018, 12, NULL, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `controles`
--
ALTER TABLE `controles`
  ADD PRIMARY KEY (`id_control`);

--
-- Indices de la tabla `referencias`
--
ALTER TABLE `referencias`
  ADD PRIMARY KEY (`id_referencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `controles`
--
ALTER TABLE `controles`
  MODIFY `id_control` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `referencias`
--
ALTER TABLE `referencias`
  MODIFY `id_referencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
