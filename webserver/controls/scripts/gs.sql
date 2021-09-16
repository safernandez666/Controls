-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql-server
-- Tiempo de generación: 10-10-2020 a las 22:38:16
-- Versión del servidor: 8.0.19
-- Versión de PHP: 7.4.1

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
CREATE DATABASE IF NOT EXISTS `gs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `gs`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controles`
--

CREATE TABLE `controles` (
  `id_control` int NOT NULL,
  `titulo` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `contenido` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `status` int DEFAULT NULL,
  `creado` date DEFAULT NULL,
  `ano` int DEFAULT NULL,
  `modificado` date DEFAULT NULL,
  `responsable` int DEFAULT NULL,
  `usuario` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `periodo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int NOT NULL,
  `estado` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `color` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Truncar tablas antes de insertar `estados`
--

TRUNCATE TABLE `estados`;
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
  `id_referencia` int NOT NULL,
  `id_control` int DEFAULT NULL,
  `accion` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `observacion` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `evidencia` varchar(250) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `mes` int DEFAULT NULL,
  `ano` int DEFAULT NULL,
  `nro_referencia` int DEFAULT NULL,
  `modificacion` date DEFAULT NULL,
  `status` int NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

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
  MODIFY `id_control` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `referencias`
--
ALTER TABLE `referencias`
  MODIFY `id_referencia` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

