-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-08-2018 a las 10:57:41
-- Versión del servidor: 5.7.23-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gs`
--
CREATE DATABASE IF NOT EXISTS `gs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gs`;

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
(1, 'Gestion de usuarios y contrasenas', 'Revisar que los permisos otorgados son los apropiados', 3, NULL, 2012, NULL, 2, NULL, 4),
(2, 'Gestion de Back-up', 'Revisar que la informacion se resguarda segun las politicas definidas', 3, NULL, 2012, NULL, 1, NULL, 12),
(3, 'Gestion de la Capacidad de los sistemas', 'Corroborar que el Ãrea ejecutora aplica el control en termino', 3, NULL, 2012, NULL, 1, NULL, 4),
(4, 'Analisis de Vulnerabilidades', 'Detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos', 3, NULL, 2012, NULL, 1, NULL, 12),
(5, 'Test de Intrusion', 'Pruebas activas para detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos', 3, NULL, 2012, NULL, 1, NULL, 1),
(6, 'Gestion del mantenimiento de equipos informaticos y ambientales', 'Corroborar que se aplique el mantenimiento sobre los equipos en los terminos recomendados por los fabricantes', 3, NULL, 2012, NULL, 2, NULL, 12),
(7, 'Acceso Fisico a Areas restringidas - CPD y CPA', 'Verificar accesos indevidos a las areas criticas', 3, NULL, 2012, NULL, 2, NULL, 4),
(8, 'Monitoreo de los Puestos de Trabajo', 'Seguimiento de Software instalado en las terminales', 3, NULL, 2012, NULL, 1, NULL, 2),
(9, 'Gestion sobre eventos de seguridad (Logs) y pistas de auditoria', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2012, NULL, 1, NULL, 12),
(10, 'Intrusion Detection', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2012, NULL, 1, NULL, 12),
(11, 'Seguimiento de concientizacion inicial de usuarios', 'Verificar que todos los usuarios acepten las politicas de la organizaciÃ³', 3, NULL, 2012, NULL, 2, NULL, 1),
(12, 'Uso aceptable de correo electronico.', 'Veriricar que se restrinjan acciones indevidas y no sean propicias para el negocio', 3, NULL, 2012, NULL, 2, NULL, 12),
(13, 'Gestion de cambios', 'Verificar que se registren los cambios y que estos sean realizados en forma apropiada', 3, NULL, 2012, NULL, 2, NULL, 12),
(14, 'Gestion de incidentes de seguridad', 'Verificar que se registren los incidentes y que estos sean solucionados en forma apropiada', 3, NULL, 2012, NULL, 2, NULL, 12),
(15, 'Gestion de Back-up', 'Revisar que la informacion se resguarda segun las politicas definidas', 3, NULL, 2013, NULL, 1, NULL, 12),
(16, 'Gestion de la Capacidad de los sistemas', 'Corroborar que el Ãrea ejecutora aplica el control en termino', 3, NULL, 2013, NULL, 1, NULL, 4),
(17, 'Analisis de Vulnerabilidades', 'Detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos', 3, NULL, 2013, NULL, 1, NULL, 12),
(18, 'Gestion del tablero de Metricas e Indicadores', 'Mantener un reporte para la deteccion de desviaciones sobre el SGSI', 3, NULL, 2013, NULL, 2, NULL, 4),
(19, 'Gestion del mantenimiento de equipos informaticos y ambientales', 'Corroborar que se aplique el mantenimiento sobre los equipos en los terminos recomendados por los fabricantes', 3, NULL, 2013, NULL, 2, NULL, 12),
(20, 'Acceso Fisico a Areas restringidas - CPD y CPA', 'Verificar accesos indevidos a las areas criticas', 3, NULL, 2013, NULL, 2, NULL, 4),
(21, 'Gestion de escritorios limpios', 'Verificar que los usuarios protejan la informacio', 3, NULL, 2013, NULL, 2, NULL, 4),
(22, 'Monitoreo de los Puestos de Trabajo', 'Seguimiento de Software instalado en las terminales', 3, NULL, 2013, NULL, 1, NULL, 2),
(23, 'Gestion sobre eventos de seguridad (Logs) y pistas de auditoria', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2013, NULL, 1, NULL, 12),
(24, 'Intrusion Detection', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2013, NULL, 1, NULL, 12),
(25, 'Seguimiento de concientizacion inicial de usuarios', 'Verificar que todos los usuarios acepten las politicas de la organizacio', 3, NULL, 2013, NULL, 2, NULL, 1),
(26, 'Uso aceptable de correo electronico.', 'Veriricar que se restrinjan acciones indevidas y no sean propicias para el negocio', 3, NULL, 2013, NULL, 2, NULL, 12),
(27, 'Gestion de cambios', 'Verificar que se registren los cambios y que estos sean realizados en forma apropiada', 3, NULL, 2013, NULL, 2, NULL, 12),
(28, 'Gestion de incidentes de seguridad', 'Verificar que se registren los incidentes y que estos sean solucionados en forma apropiada', 3, NULL, 2013, NULL, 2, NULL, 12),
(29, 'Gestion de Perfiles de usuarios', 'Revisar los permisos de acceso otorgados a los usuarios sobre los sistemas de red y software aplicativos', 3, NULL, 2013, NULL, 2, NULL, 1),
(30, 'Gestion de Autenticacion', 'Revisar las politicas de autenticacion de los sistemas de la empresa.', 3, NULL, 2013, NULL, 2, NULL, 4),
(31, 'Gestion de Back-up', 'Revisar que la informacion se resguarda segun las politicas definidas', 3, NULL, 2014, NULL, 1, NULL, 12),
(32, 'Gestion de la Capacidad de los sistemas', 'Corroborar que el Ãrea ejecutora aplica el control en termino', 3, NULL, 2014, NULL, 1, NULL, 4),
(33, 'Analisis de Vulnerabilidades', 'Detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos', 3, NULL, 2014, NULL, 1, NULL, 12),
(34, 'Test de Intrusion', 'Pruebas activas para detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos', 3, NULL, 2014, NULL, 1, NULL, 1),
(35, 'Gestion del tablero de Metricas e Indicadores', 'Mantener un reporte para la deteccion de desviaciones sobre el SGSI', 3, NULL, 2014, NULL, 2, NULL, 4),
(36, 'Gestion del mantenimiento de equipos informaticos y ambientales', 'Corroborar que se aplique el mantenimiento sobre los equipos en los terminos recomendados por los fabricantes', 3, NULL, 2014, NULL, 2, NULL, 12),
(37, 'Acceso Fisico a Areas restringidas - CPD y CPA', 'Verificar accesos indevidos a las areas criticas', 3, NULL, 2014, NULL, 2, NULL, 4),
(38, 'Gestion de escritorios limpios', 'Verificar que los usuarios protejan la informacio', 3, NULL, 2014, NULL, 2, NULL, 4),
(39, 'Monitoreo de los Puestos de Trabajo', 'Seguimiento de Software instalado en las terminales', 3, NULL, 2014, NULL, 1, NULL, 2),
(40, 'Gestion sobre eventos de seguridad (Logs) y pistas de auditoria', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2014, NULL, 1, NULL, 12),
(41, 'Intrusion Detection', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2014, NULL, 1, NULL, 12),
(42, 'Seguimiento de concientizacion inicial de usuarios', 'Verificar que todos los usuarios acepten las politicas de la organizaciÃ³', 3, NULL, 2014, NULL, 2, NULL, 1),
(43, 'Uso aceptable de correo electronico.', 'Veriricar que se restrinjan acciones indevidas y no sean propicias para el negocio', 3, NULL, 2014, NULL, 2, NULL, 12),
(44, 'Gestion de cambios', 'Verificar que se registren los cambios y que estos sean realizados en forma apropiada', 3, NULL, 2014, NULL, 2, NULL, 12),
(45, 'Gestion de incidentes de seguridad', 'Verificar que se registren los incidentes y que estos sean solucionados en forma apropiada', 3, NULL, 2014, NULL, 2, NULL, 12),
(46, 'Gestion de Perfiles de usuarios', 'Revisar los permisos de acceso otorgados a los usuarios sobre los sistemas de red y software aplicativos', 3, NULL, 2014, NULL, 2, NULL, 1),
(47, 'Gestion de Autenticacion', 'Revisar las politicas de Autenticacion de los sistemas de la empresa.', 3, NULL, 2014, NULL, 2, NULL, 4),
(48, 'Gestion de Back-up', 'Revisar que la informacion se resguarda segun las politicas definidas', 3, NULL, 2015, NULL, 1, NULL, 12),
(49, 'Gestion de la Capacidad de los sistemas', 'Corroborar que el Area ejecutora aplica el control en termino', 3, NULL, 2015, NULL, 1, NULL, 4),
(50, 'Analisis de Vulnerabilidades', 'Detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos', 3, NULL, 2015, NULL, 1, NULL, 12),
(51, 'Test de Intrusion', 'Pruebas activas para detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos', 3, NULL, 2015, NULL, 1, NULL, 1),
(52, 'Gestion del tablero de Metricas e Indicadores', 'Mantener un reporte para la deteccion de desviaciones sobre el SGSI', 3, NULL, 2015, NULL, 2, NULL, 4),
(53, 'Gestion del mantenimiento de equipos informaticos y ambientales', 'Corroborar que se aplique el mantenimiento sobre los equipos en los terminos recomendados por los fabricantes', 3, NULL, 2015, NULL, 2, NULL, 12),
(54, 'Acceso Fisico a Areas restringidas - CPD y CPA', 'Verificar accesos indevidos a las areas criticas', 3, NULL, 2015, NULL, 2, NULL, 4),
(55, 'Gestion de escritorios limpios', 'Verificar que los usuarios protejan la informacio', 3, NULL, 2015, NULL, 2, NULL, 4),
(56, 'Monitoreo de los Puestos de Trabajo', 'Seguimiento de Software instalado en las terminales', 3, NULL, 2015, NULL, 1, NULL, 2),
(57, 'Gestion sobre eventos de seguridad (Logs) y pistas de auditoria', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2015, NULL, 1, NULL, 12),
(58, 'Intrusion Detection', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2015, NULL, 1, NULL, 12),
(59, 'Seguimiento de concientizacion inicial de usuarios', 'Verificar que todos los usuarios acepten las politicas de la organizaciÃ³', 3, NULL, 2015, NULL, 2, NULL, 1),
(60, 'Uso aceptable de correo electronico.', 'Veriricar que se restrinjan acciones indevidas y no sean propicias para el negocio', 3, NULL, 2015, NULL, 2, NULL, 12),
(61, 'Gestion de cambios', 'Verificar que se registren los cambios y que estos sean realizados en forma apropiada', 3, NULL, 2015, NULL, 2, NULL, 12),
(62, 'Gestion de incidentes de seguridad', 'Verificar que se registren los incidentes y que estos sean solucionados en forma apropiada', 3, NULL, 2015, NULL, 2, NULL, 12),
(63, 'Gestion de Perfiles de usuarios', 'Revisar los permisos de acceso otorgados a los usuarios sobre los sistemas de red y software aplicativos', 3, NULL, 2015, NULL, 2, NULL, 2),
(64, 'Gestion de Autenticacion', 'Revisar las politicas de Autenticacion de los sistemas de la empresa.', 3, NULL, 2015, NULL, 2, NULL, 4),
(65, 'Gestion de Back-up', 'Revisar que la informacion se resguarda segun las politicas definidas', 3, NULL, 2016, NULL, 1, NULL, 12),
(66, 'Gestion de la Capacidad de los sistemas', 'Corroborar que el Ãrea ejecutora aplica el control en termino', 3, NULL, 2016, NULL, 1, NULL, 4),
(67, 'Analisis de Vulnerabilidades', 'Detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos', 3, NULL, 2016, NULL, 1, NULL, 12),
(68, 'Gestion del tablero de Metricas e Indicadores', 'Mantener un reporte para la deteccion de desviaciones sobre el SGSI', 3, NULL, 2016, NULL, 2, NULL, 4),
(69, 'Gestion del mantenimiento de equipos informaticos y ambientales', 'Corroborar que se aplique el mantenimiento sobre los equipos en los terminos recomendados por los fabricantes', 3, NULL, 2016, NULL, 2, NULL, 12),
(70, 'Acceso Fisico a Areas restringidas - CPD y CPA', 'Verificar accesos indevidos a las areas criticas', 3, NULL, 2016, NULL, 2, NULL, 4),
(71, 'Gestion de escritorios limpios', 'Verificar que los usuarios protejan la informacio', 3, NULL, 2016, NULL, 2, NULL, 4),
(72, 'Monitoreo de los Puestos de Trabajo', 'Seguimiento de Software instalado en las terminales', 3, NULL, 2016, NULL, 1, NULL, 2),
(73, 'Gestion sobre eventos de seguridad (Logs) y pistas de auditoria', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2016, NULL, 1, NULL, 12),
(74, 'Intrusion Detection', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2016, NULL, 1, NULL, 12),
(75, 'Seguimiento de concientizacion inicial de usuarios', 'Verificar que todos los usuarios acepten las politicas de la organizaciÃ³', 3, NULL, 2016, NULL, 2, NULL, 1),
(76, 'Uso aceptable de correo electronico.', 'Veriricar que se restrinjan acciones indevidas y no sean propicias para el negocio', 3, NULL, 2016, NULL, 2, NULL, 12),
(77, 'Gestion de cambios', 'Verificar que se registren los cambios y que estos sean realizados en forma apropiada', 3, NULL, 2016, NULL, 2, NULL, 12),
(78, 'Gestion de incidentes de seguridad', 'Verificar que se registren los incidentes y que estos sean solucionados en forma apropiada', 3, NULL, 2016, NULL, 2, NULL, 12),
(79, 'Gestion de Perfiles de usuarios', 'Revisar los permisos de acceso otorgados a los usuarios sobre los sistemas de red y software aplicativos', 3, NULL, 2016, NULL, 2, NULL, 2),
(80, 'Gestion de Autenticacion', 'Revisar las politicas de Autenticacion de los sistemas de la empresa.', 3, NULL, 2016, NULL, 2, NULL, 4),
(81, 'Gestion de Back-up', 'Revisar que la informacion se resguarda segun las politicas definidas', 3, NULL, 2017, NULL, 1, NULL, 12),
(82, 'Gestion de la Capacidad de los sistemas', 'Corroborar que el Ãrea ejecutora aplica el control en termino', 3, NULL, 2017, NULL, 1, NULL, 4),
(83, 'Analisis de Vulnerabilidades', 'Detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos', 3, NULL, 2017, NULL, 1, NULL, 12),
(84, 'Gestion del tablero de Metricas e Indicadores', 'Mantener un reporte para la deteccion de desviaciones sobre el SGSI', 3, NULL, 2017, NULL, 2, NULL, 4),
(85, 'Gestion del mantenimiento de equipos informaticos y ambientales', 'Corroborar que se aplique el mantenimiento sobre los equipos en los terminos recomendados por los fabricantes', 3, NULL, 2017, NULL, 2, NULL, 12),
(86, 'Acceso Fisico a Areas restringidas - CPD y CPA', 'Verificar accesos indevidos a las areas criticas', 3, NULL, 2017, NULL, 2, NULL, 4),
(87, 'Gestion de escritorios limpios', 'Verificar que los usuarios protejan la informacio', 3, NULL, 2017, NULL, 2, NULL, 4),
(88, 'Monitoreo de los Puestos de Trabajo', 'Seguimiento de Software instalado en las terminales', 3, NULL, 2017, NULL, 1, NULL, 2),
(89, 'Gestion sobre eventos de seguridad (Logs) y pistas de auditoria', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2017, NULL, 1, NULL, 12),
(90, 'Intrusion Detection', 'Verificar que se detecten todos los eventos de seguridad', 3, NULL, 2017, NULL, 1, NULL, 12),
(91, 'Seguimiento de concientizacion inicial de usuarios', 'Verificar que todos los usuarios acepten las politicas de la organizaciÃ³', 3, NULL, 2017, NULL, 2, NULL, 1),
(92, 'Uso aceptable de correo electronico.', 'Veriricar que se restrinjan acciones indevidas y no sean propicias para el negocio', 3, NULL, 2017, NULL, 2, NULL, 12),
(93, 'Gestion de cambios', 'Verificar que se registren los cambios y que estos sean realizados en forma apropiada', 3, NULL, 2017, NULL, 2, NULL, 12),
(94, 'Gestion de incidentes de seguridad', 'Verificar que se registren los incidentes y que estos sean solucionados en forma apropiada', 3, NULL, 2017, NULL, 2, NULL, 12),
(95, 'Gestion de Perfiles de usuarios', 'Revisar los permisos de acceso otorgados a los usuarios sobre los sistemas de red y software aplicativos', 3, NULL, 2017, NULL, 2, NULL, 2),
(96, 'Gestion de Autenticacion', 'Revisar las politicas de Autenticacion de los sistemas de la empresa.', 3, NULL, 2017, NULL, 2, NULL, 4),
(97, 'EstÃ¡ndares de configuraciÃ³', 'Controlar la aplicaciÃ³n de los estandares de configuraciÃ³n a los activos productivos', 3, NULL, 2017, NULL, 1, NULL, 2),
(98, 'Gestion de Backup\'s', 'Revisar que la informacion se resguarda segun las politicas definidas.', 3, NULL, 2018, NULL, 1, NULL, 1),
(99, 'Gestion de la Capacidad de los Sistemas.', 'Corroborar que el Area ejecutora aplica el control en termino.', 3, NULL, 2018, NULL, 1, NULL, 3),
(100, 'Estandares de Configuracion', 'Controlar la aplicacion de los estandares de configuracion a los activos productivos.', 3, NULL, 2018, NULL, 1, NULL, 6),
(101, 'Gestion sobre Eventos de Seguridad | Log\'s y Pistas', 'Verificar que se detecten todos los eventos de seguridad.', 3, NULL, 2018, NULL, 1, NULL, 1),
(102, 'Analisis de Vulnerabilidades', 'Detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos.', 3, NULL, 2018, NULL, 1, NULL, 1),
(103, 'Test de Intrusion', 'Pruebas activas para detectar irregularidades en los sistemas que pueden ser aprovechados por posibles intrusos.', 3, NULL, 2018, NULL, 1, NULL, 12),
(104, 'Monitoreo de Puestos de Trabajo', 'Seguimiento de Software instalado en las terminales.', 3, NULL, 2018, NULL, 1, NULL, 6),
(105, 'Deteccion de Intrusos', 'Verificar que se detecten todos los eventos de seguridad.', 3, NULL, 2018, NULL, 1, NULL, 1),
(106, 'Gestion de Incidentes de Seguridad', 'Verificar que se registren los incidentes y que estos sean solucionados en forma apropiada.', 3, NULL, 2018, NULL, 2, NULL, 1),
(107, 'Gestion de Escritorios Limpios', 'Verificar que los usuarios protejan la informacion.', 3, NULL, 2018, NULL, 2, NULL, 3),
(108, 'Gestion de Perfiles de Usuario y Administradores', 'Revisar los permisos de acceso otorgados a los usuarios sobre los sistemas de red y software aplicativos.', 3, NULL, 2018, NULL, 2, NULL, 6),
(109, 'Acceso Fisico a areas restringidas | CPD y CPA', 'Verificar accesos indebidos a las areas criticas.', 3, NULL, 2018, '2018-07-17', 2, NULL, 3),
(110, 'Uso aceptable de Correo Electronico', 'Verificar que se restringan acciones indebidas y no sean propicias para el negocio.', 3, NULL, 2018, '2018-07-17', 2, NULL, 1),
(111, 'Gestion del mantenimiento de equipos informaticos', 'Corroborar que se aplique el mantenimiento sobre los equipos en los terminos previstos.', 3, NULL, 2018, NULL, 2, NULL, 12),
(112, 'Gestion de Autenticacion (Usuarios y ContraseÃ±as)', 'Revisar las politicas de autenticacion de los sistemas de la empresa.', 3, NULL, 2018, '2018-07-17', 2, NULL, 3),
(113, 'Gestion de Cambios', 'Verificar que se registren los cambios y que estos sean realizados en forma apropiada.', 3, NULL, 2018, NULL, 2, NULL, 1),
(114, 'Gestion del Tablero de Metricas e Indicadores', 'Mantener un reporte para la deteccion de desviaciones sobre el SGSI.', 3, NULL, 2018, NULL, 2, NULL, 3),
(115, 'Seguimiento de Concientizacion Inicial de Usuarios', 'Verificar que todos los usuarios acepten las politicas de la organizacion.', 3, NULL, 2018, NULL, 2, NULL, 12);

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
  `observacion` varchar(1000) COLLATE latin1_bin DEFAULT NULL,
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
(1, 1, 'Se eliminaron los usuarios indicados por RRHH y se bloquearon los usuarios con mas de 90 dias sin conexiÃ³n.', 'Se procedio a ejecutar los procesos de control de usuarios.', 'Drupal TAG=Gestion de Ususarios y ContraseÃ±as 032012.zip', 3, 2012, NULL, '2012-03-12', 1),
(2, 1, 'Se eliminaron los usuarios indicados por RRHH y se bloquearon los usuarios con mas de 90 dias sin conexiÃ³n.', 'Se procedio a ejecutar el proceso de control de control de usuarios', 'Drupal TAG: Gestion de usuarios y contraseÃ±as: 10-2012', 10, 2012, NULL, '2012-10-02', 1),
(3, 1, 'Se eliminaron los usuarios indicados por RRHH y se bloquearon los usuarios con mas de 90 dias sin conexiÃ³n.', 'Se procedio a ejecutar los procesos de control de usuarios', 'Drupal TAG: Gestion de usuarios y contraseÃ±as/Evidencias: 12-2012.zip', 12, 2012, NULL, '2012-12-12', 1),
(4, 1, 'Se eliminaron los usuarios indicados por RRHH y se bloquearon los usuarios con mas de 90 dias sin conexiÃ³n.', 'Se procedio a ejecutar los procesos de control de usuarios.', 'Drupal TAG=Gestion de Ususarios y ContraseÃ±as 6_2012_users.zip', 6, 2012, NULL, '2012-06-13', 1),
(5, 2, '', 'Se evidenciaron Mensaje The media surface is damaged en DES el 27, en DSS el 20, en FindProd el 19, en Market 27 y en POLA5 el dias 12. Advertencias de Error en los Backups de Brokerp el 5, DSS 06,13 y 14, en POLA5 05,12,19 y 26 y en RRHH los dias 20', 'Drupal TAG=Gestion de Backups 2012_08_Agosto.rar', 9, 2012, NULL, '2012-09-30', 1),
(6, 2, '', 'Se evidenciaron Mensaje The media surface is damaged en DSS 11, 15, 25, 26, 29 y 31 en FINDPROD el 3, en FINDTEST 18 y 19. En POLA5 16 y 30. Mensajes de ERROR el 02, 09, 17 y 23 en POLA5, en TST el 05, 15 y 18.', 'Drupal TAG=Gestion de Backups 2012_10_Octubre.rar', 10, 2012, NULL, '2012-10-31', 1),
(7, 2, '', 'Fallo el Backup de Pola5 del 13, 16, 18, 25 y 26 el 11 de Findprod y el 19 en Fintest con el Mensaje The media surface is damaged. Se evidenciaron errores con caracterÃ­sticas de advertencia para los siguientes backups: el 05, 13 y 27 en DSS, 09 y 11', 'Drupal TAG=Gestion de Backups 2012_01 Enero.rar', 1, 2012, NULL, '2012-01-31', 1),
(8, 2, '', 'Fallo el Backup de Pola5 del 06, 08, 09 y el 14 en Finptest con el Mensaje The media surface is damaged. Se evidenciaron errores en Brokerd el 02, en DSS el 15, 22 y 29, Market el 14,19 y 26, el 09, 10, 13, 20 27 en POLA5', 'Drupal TAG=Gestion de Backups 2012_03_Marzo.rar', 3, 2012, NULL, '2012-03-31', 1),
(9, 2, '', 'Se evidenciaron errores en ART los dias 07, 08, 11, 26 y 28 en DSS el 06, 07, 11 y 19. En FINDPROD 19 y FINDTEST el 05 y 25. En Market 04, 11, 18 y 25. En POLA5 05, 06, 12, 13, 21, 26 y 28. Aparecieron en FINDTEST, el 18, en DSS, el 07 y en POLA5 el ', 'Drupal TAG=Gestion de Backups 2012_06_Junio.rar', 6, 2012, NULL, '2012-06-30', 1),
(10, 2, '', 'Se evidenciaron Mensaje The media surface is damaged en DSS el 23, FindProd 15, en POLA5 el 22,24,28 y 29. Advertencias de Error en los Backups de ART del dia 13, FindProd los dias 14 y 22, FindTEST el 03 y POLA5 los dias 06,10,15,22,28 y 29.', 'Drupal TAG=Gestion de Backups 2012_08_Agosto.rar', 8, 2012, NULL, '2012-08-30', 1),
(11, 2, '', 'Se evidenciaron Mensaje The media surface is damaged en DSS el 15 y en POLA5 el 07, 13, 14, 15 y el 21. Errores en AMCOD el 02, DSSD el 02, en FINDPROD el 02, 19 y 30. En FINDTEST el 02. En Market el 03, en POLA5 el 01 08 13 15 y 27. En RRHH el 02 16', 'Drupal TAG=Gestion de Backups 2012_11_Noviembre.rar', 11, 2012, NULL, '2012-11-30', 1),
(12, 2, '', 'Fallo el Backup de Pola5 del03 y el 16 en Finprod con el Mensaje The media surface is damaged. Se evidenciaron errores en amcod el 02, dss el 02, 10 y 16, fondprod el 16, fintest 24, 13 en market, 08, 14 y 22 en POLA5 y el 08 y 10 en TST', 'Drupal TAG=Gestion de Backups 2012_02_Febero.rar', 2, 2012, NULL, '2012-02-29', 1),
(13, 2, '', 'Fallo el Backup de RRHH del 23 con el Mensaje The media surface is damaged. Se evidenciaron errores en ART el 09, en DSS el 11,19 y 26. En FINDPROD el 19. En Market el 23, en POLA5 el 24 y el 19 y 20 en RRHH', 'Drupal TAG=Gestion de Backups 2012_04_ABRIL.rar', 4, 2012, NULL, '2012-04-30', 1),
(14, 2, '', 'Se evidenciaron Mensaje The media surface is damaged en DSS los dias 06 y 26, en POLA5 el 03 y en FINTEST el 10. Advertencias de Error en los Backups de ART del 05,06 y 13. BROKERP el 16 y 30. En DES el 16.Los dias 05 y 16 en DSS. En FINPROD el 06,19', 'Drupal TAG=Gestion de Backups 2012_07_Julio.rar', 7, 2012, NULL, '2012-07-30', 1),
(15, 2, '', 'Se evidenciaron errores en DSS los dias 03, 10, 17 y 24 en DSS. El 18 y 28 en FINDPROD, el 11, 14, 23 y 28 en MARKET. El 02 y 08 en POLA5 y el 11 en RRHH', 'Drupal TAG=Gestion de Backups 2012_05_Mayo.rar', 5, 2012, NULL, '2012-05-30', 1),
(16, 3, '', 'No se ha desarrollado el Procedimiento de Referencia', '', 4, 2012, NULL, '2012-04-10', 1),
(17, 3, '', 'El procedimiento se encuentra pendiente de publicaciÃ³', '', 7, 2012, NULL, '2012-07-12', 1),
(18, 3, '', '', 'El procedimiento se encuentra pendiente de publicaciÃ³', 10, 2012, NULL, '2012-10-31', 1),
(19, 3, '', 'No se ha desarrollado el Procedimiento de Referencia', '', 1, 2012, NULL, '2012-01-30', 1),
(20, 3, '', 'No se ha desarrollado el Procedimiento de Referencia', '', 4, 2012, NULL, '2012-04-10', 1),
(21, 3, '', 'El procedimiento se encuentra pendiente de publicaciÃ³', '', 7, 2012, NULL, '2012-07-12', 1),
(22, 3, '', '', 'El procedimiento se encuentra pendiente de publicaciÃ³', 10, 2012, NULL, '2012-10-31', 1),
(23, 3, '', 'No se ha desarrollado el Procedimiento de Referencia', '', 1, 2012, NULL, '2012-01-30', 1),
(24, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_03 Marzo.zip', 3, 2012, NULL, '2012-03-31', 1),
(25, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_11 Noviembre.zip', 11, 2012, NULL, '2012-11-30', 1),
(26, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_06 Junio.zip', 6, 2012, NULL, '2012-06-15', 1),
(27, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_12 Diciembre.zip', 12, 2012, NULL, '2012-12-10', 1),
(28, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_08 Agosto.zip', 8, 2012, NULL, '2012-08-15', 1),
(29, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_10 Octubre.zip', 10, 2012, NULL, '2012-10-02', 1),
(30, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_02 Febrero.zip', 2, 2012, NULL, '2012-02-29', 1),
(31, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_04 Abril.zip', 4, 2012, NULL, '2012-04-20', 1),
(32, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_05 Mayo.zip', 5, 2012, NULL, '2012-05-15', 1),
(33, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_07 Julio.zip', 7, 2012, NULL, '2012-07-16', 1),
(34, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_09 Septiembre.zip', 9, 2012, NULL, '2012-09-09', 1),
(35, 4, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2012_01 Enero.zip', 1, 2012, NULL, '2012-01-23', 1),
(36, 5, 'Observaciones a las Areas Facilitadoras', 'CySec Informes PenTest', 'http://drupal.caja.com/?q=content/test-de-intrusio', 9, 2012, NULL, '2012-09-19', 1),
(37, 6, 'Se procedio al control de dichos reportes.', 'Se solicitaron los reportes de mantenimiento de dicho intrumental a la Gcia de Mantenimiento.', 'En DRUPAL TAG: Gestion de mantenimiento de equipos', 3, 2012, NULL, '2012-03-01', 1),
(38, 7, 'Se procedio al control de dichos reportes.', 'Se solicitaron los reportes de mantenimiento de dicho intrumental a la Gcia de Seguridad.', 'Drupal: Dic_2011_Ene_2012.zip, Feb_2012_Mar_2012.zip', 3, 2012, NULL, '2012-03-01', 1),
(39, 8, 'Se enviÃ³ correo electronico al Gerente de Infraestructura TecnolÃ³gica y al Gerente de MicroinformÃ¡tica solicitando definiciones sobre la AC.', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas. NC-AC-0017.', 'Correo electronico enviado por el TISO con fecha 28/12/2012 y tema \"NC-AC-0017\".', 12, 2012, NULL, '2012-12-28', 1),
(40, 8, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas. NC-AC-0017', '', 6, 2012, NULL, '2012-06-04', 1),
(41, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 9, 2012, NULL, '2012-09-04', 1),
(42, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 10, 2012, NULL, '2012-10-05', 1),
(43, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 2, 2012, NULL, '2012-02-06', 1),
(44, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 4, 2012, NULL, '2012-04-03', 1),
(45, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 6, 2012, NULL, '2012-06-01', 1),
(46, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 8, 2012, NULL, '2012-08-06', 1),
(47, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 1, 2012, NULL, '2012-01-04', 1),
(48, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 12, 2012, NULL, '2012-12-10', 1),
(49, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 3, 2012, NULL, '2012-03-12', 1),
(50, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 5, 2012, NULL, '2012-05-04', 1),
(51, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Drupal TAG=Gestion de Vulnerabilidades 2012_11 Noviembre.zip', 11, 2012, NULL, '2012-11-30', 1),
(52, 9, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 7, 2012, NULL, '2012-07-02', 1),
(53, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 4, 2012, NULL, '2012-04-30', 1),
(54, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 6, 2012, NULL, '2012-06-28', 1),
(55, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 8, 2012, NULL, '2012-08-31', 1),
(56, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 11, 2012, NULL, '2012-11-30', 1),
(57, 10, '', '', 'Drupal TAG=DetecciÃ³n de Intrusos 2012_01 Enero.zip', 1, 2012, NULL, '2012-01-01', 1),
(58, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 9, 2012, NULL, '2012-09-30', 1),
(59, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 3, 2012, NULL, '2012-03-30', 1),
(60, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 5, 2012, NULL, '2012-05-31', 1),
(61, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 7, 2012, NULL, '2012-07-30', 1),
(62, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 12, 2012, NULL, '2012-12-10', 1),
(63, 10, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 10, 2012, NULL, '2012-10-31', 1),
(64, 10, '', '', 'Drupal TAG=DetecciÃ³n de Intrusos 2012_02 Febrero.zip', 2, 2012, NULL, '2012-02-01', 1),
(65, 11, 'Dictado de charlas en el auditorio de la CÃ­a.', 'Se procede a realizar charlas a todas las Gcias de la CÃ­a sobre concientizacion en la seguridad de la informacion.', 'En DRUPAL TAG: ConcientizaciÃ³', 5, 2012, NULL, '2012-05-01', 1),
(66, 12, 'N/A', 'N/A', 'N/A', 9, 2012, NULL, '2012-09-30', 1),
(67, 12, 'Se solicita la informacion a la gerencia de IT.', 'Se procedio a realizar los controles de uso de correo.', 'DRUPAL TAG: Uso de correo electronico: 11-2012.zip', 11, 2012, NULL, '2012-11-14', 1),
(68, 12, 'N/A', 'N/A', 'N/A', 7, 2012, NULL, '2012-07-31', 1),
(69, 12, 'N/A', 'N/A', 'N/A', 4, 2012, NULL, '2012-04-30', 1),
(70, 12, 'N/A', 'N/A', 'N/A', 1, 2012, NULL, '2012-01-31', 1),
(71, 12, 'Se solicita la informacion a la gerencia de IT.', 'Se procedio a realizar los controles sobre el uso de correo.', 'DRUPAL TAG: Uso de correo electronico: 12-2012.zip', 12, 2012, NULL, '2012-12-13', 1),
(72, 12, 'N/A', 'N/A', 'N/A', 8, 2012, NULL, '2012-08-31', 1),
(73, 12, 'Se solicita la informacion a la gerencia de IT.', 'Se procedio a realizar los controles de uso del correo', 'DRUPAL TAG: Uso de correo electronico: 10-2012.zip', 10, 2012, NULL, '2012-10-15', 1),
(74, 12, 'N/A', 'N/A', 'N/A', 5, 2012, NULL, '2012-05-31', 1),
(75, 12, 'Se solicita la informacion a la gerencia de IT', 'Se procedio a realizar dichos controles del uso de correo.', 'En DRUPAL, TAG: 3-2012.zip', 3, 2012, NULL, '2012-03-01', 1),
(76, 12, 'N/A', 'N/A', 'N/A', 2, 2012, NULL, '2012-02-29', 1),
(77, 12, 'Se solicita la informacion a la gerencia de IT', 'Se procedio a realizar dichos controles del uso de correo.', 'En DRUPAL, TAG: 6-2012.zip', 6, 2012, NULL, '2012-06-07', 1),
(78, 13, 'S/C', 'S/C', 'S/C', 11, 2012, NULL, '2012-11-30', 1),
(79, 13, 'S/C', 'S/C', 'S/C', 8, 2012, NULL, '2012-08-31', 1),
(80, 13, 'Se procedio a control el cambio efectuado en dicha solicitud.', 'La Gcia de TI, informÃ³ de cambios.', 'Drupal: Gestion de Cambios abr-Jun_2012', 6, 2012, NULL, '2012-06-14', 1),
(81, 13, 'Se procedio a verificar el cambio efectuado indicado en el requerimiento.', 'La Gerencia de IT enviÃ³ el requerimiento de cambio.', 'DRUPAl: Tag: Gestion de CambiosEvidencias: Registro de Control de Cambios TSR 251012', 10, 2012, NULL, '2012-10-25', 1),
(82, 13, 'S/C', 'S/C', 'S/C', 4, 2012, NULL, '2012-04-30', 1),
(83, 13, 'S/C', 'S/C', 'S/C', 1, 2012, NULL, '2012-01-31', 1),
(84, 13, 'S/C', 'S/C', 'S/C', 9, 2012, NULL, '2012-09-30', 1),
(85, 13, 'Se procedio a control el cambio efectuado en dicha solicitud.', 'La Gcia de TI, informÃ³ de cambios en el FW.', 'Drupal: Formulario de Cambios en Firewalls TSR 20120314.pdf', 3, 2012, NULL, '2012-03-01', 1),
(86, 13, 'S/C', 'S/C', 'S/C', 7, 2012, NULL, '2012-07-31', 1),
(87, 13, 'S/C', 'S/C', 'S/C', 5, 2012, NULL, '2012-05-31', 1),
(88, 13, 'S/C', 'S/C', 'S/C', 2, 2012, NULL, '2012-02-29', 1),
(89, 14, 'Se estan registrando dichos incidentes en Jira.', 'Se estan reformulando los tipos de incidentes de seguridad con la Gcia de TI.', 'En DRUPAL: MDA_Reportes_2012.xls', 6, 2012, NULL, '2012-06-01', 1),
(90, 14, 'Se estan controlando y registrando dichos incidentes en JIRA y se levantan a un archivo excel.', 'Se recibiÃ³ la informacion de la Gerencia de IT', 'DRUPAL: TAG: Incidentes de SeguridadEvidencias: MDA_Reportes_2012_10.xls', 11, 2012, NULL, '2012-11-05', 1),
(91, 14, 'N/A', 'N/A', 'N/A', 4, 2012, NULL, '2012-04-30', 1),
(92, 14, 'Se estÃ¡n registrando y controlando los tipos de incidentes en Jira y se levantan a un archivo excel.', 'Se estÃ¡ evaluando la recategorizaciÃ³n de los incidentes de seguridad.', 'DRUPAL: Tag: Incidentes de seguridadevidencias: MDA_Reportes_2012_8.xls', 8, 2012, NULL, '2012-08-01', 1),
(93, 14, 'N/A', 'N/A', 'N/A', 1, 2012, NULL, '2012-01-31', 1),
(94, 14, 'Se estÃ¡n redefiniendo pero todavia sin evidencia.', 'Se estan reformulando los tipos de incidentes de seguridad con la Gcia de TI.', 'En JIRA.', 3, 2012, NULL, '2012-03-01', 1),
(95, 14, 'Se estan controlando y registrando dichos incidentes en JIRA y se levantan a un archivo excel', 'Se recibiÃ³ la informacion de la gerencia de IT', 'DRUPAL: TAG: Incidentes de SeguridadEvidencias: MDA_Reportes_2012_09.xls', 10, 2012, NULL, '2012-10-02', 1),
(96, 14, 'Se estan controlando y registrando dichos incidentes en Jira y se levantan a un archivo excel.', 'Se recibiÃ³ la informacion de la gerencia de IT.', 'DRUPAL: TAG: Incidentes de SeguridadEvidencias: MDA_Reportes_2012_11.xls', 12, 2012, NULL, '2012-12-13', 1),
(97, 14, 'N/A', 'N/A', 'N/A', 2, 2012, NULL, '2012-02-29', 1),
(98, 14, 'Se estÃ¡n registrando dichos incidentes en JIRA', 'Se estÃ¡n reformulando los tipos de incidentes de seguridad con la gerencia de IT.', 'DRUPAL: MDA_Reportes_2012_5.xls', 5, 2012, NULL, '2012-05-02', 1),
(99, 15, '', 'Datos en el Server /utilbase/backup/log/logs_anteriores', 'DRUPAL TAG = Gestion de Backups', 6, 2013, NULL, '2013-06-30', 1),
(100, 15, '', 'Fallo el Backup en ART el 11, en DSS el 19 en FINPROD 6, 13 y 27 y en MARKET el 04 con el Mensaje The media surface is damaged. Se evidenciaron errores en Brokerp el 23, en DSS el 5, en FINDPROD el 3, 10 y 12, en MARKET el 4 y en RRHH el 12.', 'DRUPAL TAG = Gestion de Backups', 12, 2013, NULL, '2013-12-31', 1),
(101, 15, '', 'Fallo el Backup de DSS el 04 y FinProd el 27 con el Mensaje The media surface is damaged. Se evidenciaron errores en ART el 26, DES el 27, FinProd el 13 y 28 y POLA5 el 05, 14 y 28', 'DRUPAL TAG = Gestion de Backups', 2, 2013, NULL, '2013-02-28', 1),
(102, 15, '', 'Se evidenciaron errores en ART el 30, en Brokerp el 3 en DSS el 10 y 24, en FINDPROD el 3, 15, 18 y 5 en POLA5 el 7 y 8 y en RRHH el 16,18 y 30.', 'DRUPAL TAG = Gestion de Backups', 10, 2013, NULL, '2013-10-31', 1),
(103, 15, '', 'Fallo el Backup en DSS el 03, POLA5 el 04 y 29 y TST el 10 con el Mensaje The media surface is damaged. Se evidenciaron errores en ART el 17 y 23, en Brokerp el 11, en DES el 25, en DSS el 11, en FinProd el 23, 25 y 29, en POLA5 el 04, 09, 16, 23 y 2', 'DRUPAL TAG = Gestion de Backups', 4, 2013, NULL, '2013-04-30', 1),
(104, 15, '', 'Datos en el Server /utilbase/backup/log/logs_anteriores', 'DRUPAL TAG = Gestion de Backups', 7, 2013, NULL, '2013-07-31', 1),
(105, 15, '', 'Datos en el Server /utilbase/backup/log/logs_anteriores', 'DRUPAL TAG = Gestion de Backups', 5, 2013, NULL, '2013-05-31', 1),
(106, 15, '', 'Fallo el Backup en DSS el 01, FinProd el 05, Market el 12 y 27, POLA5 el 05 y 07 y RRHH el 04 con el Mensaje The media surface is damaged. Se evidenciaron errores en ART el 12, en DSS 6, 18 y 26, en FinProd el 6 y el 21, en POLA5 05, 07, 11, 19 y 25 ', 'DRUPAL TAG = Gestion de Backups', 3, 2013, NULL, '2013-03-31', 1),
(107, 15, '', 'Se evidenciaron errores en DSS el 28 y en FINPROD tambien.', 'DRUPAL TAG = Gestion de Backups', 11, 2013, NULL, '2013-11-30', 1),
(108, 15, '', 'Fallo el Backup de DSS del 4, 10  y  30, el de FinProd el 8, 17 y 30, el de Market el 11 y 23, el de POLA5 el 5 y el 08 y el de TST el 10 con el Mensaje The media surface is damaged. Se evidenciaron errores en ART el 29, Brokerp el 30, DSS el 04, Fin', 'DRUPAL TAG = Gestion de Backups', 1, 2013, NULL, '2013-01-31', 1),
(109, 15, '', 'Fallo el Backup en FINTEST el 04, POLA5 el 10, 17 y 24 y en TST el 26 con el Mensaje The media surface is damaged. Se evidenciaron errores en Brokerp el 18, en DES el 26, en DSSD el 26 en POLA5 el 16, 17 y 20 y en TST el 26.', 'DRUPAL TAG = Gestion de Backups', 9, 2013, NULL, '2013-09-30', 1),
(110, 15, '', 'Datos en el Server /utilbase/backup/log/logs_anteriores', 'DRUPAL TAG = Gestion de Backups', 8, 2013, NULL, '2013-08-31', 1),
(111, 16, 'Se informo al Gerente de Infraestructura Tecnologica.', 'Se tomo una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direccion ip es la 172.17.1.20 no cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capa', 'DRUPAL TAG = Gestion de capacidad de los sistemas', 1, 2013, NULL, '2013-01-31', 1),
(112, 16, 'No se requiere accion.', 'Se tomo una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direccion ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capacid', 'DRUPAL TAG = Gestion de capacidad de los sistemas', 10, 2013, NULL, '2013-10-31', 1),
(113, 16, 'No se requiere accion.', 'Se tomo una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direccion ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capacid', 'DRUPAL TAG = Gestion de capacidad de los sistemas', 7, 2013, NULL, '2013-07-31', 1),
(114, 16, 'No se requiere accion.', 'Se tomo una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direccion ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capacid', 'DRUPAL TAG = Gestion de capacidad de los sistemas', 4, 2013, NULL, '2013-04-30', 1),
(115, 16, 'Se informo al Gerente de Infraestructura Tecnologica.', 'Se tomo una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direccion ip es la 172.17.1.20 no cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capa', 'DRUPAL TAG = Gestion de capacidad de los sistemas', 1, 2013, NULL, '2013-01-31', 1),
(116, 16, 'No se requiere accion.', 'Se tomo una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direccion ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capacid', 'DRUPAL TAG = Gestion de capacidad de los sistemas', 10, 2013, NULL, '2013-10-31', 1),
(117, 16, 'No se requiere accion.', 'Se tomo una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direccion ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capacid', 'DRUPAL TAG = Gestion de capacidad de los sistemas', 7, 2013, NULL, '2013-07-31', 1),
(118, 16, 'No se requiere accion.', 'Se tomo una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direccion ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capacid', 'DRUPAL TAG = Gestion de capacidad de los sistemas', 4, 2013, NULL, '2013-04-30', 1),
(119, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_11 Noviembre.zip', 11, 2013, NULL, '2013-11-30', 1),
(120, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_09 Septiembre.zip', 9, 2013, NULL, '2013-09-30', 1),
(121, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_01 Enero.zip', 1, 2013, NULL, '2013-01-31', 1),
(122, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_08 Agosto.zip', 8, 2013, NULL, '2013-08-31', 1),
(123, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_04 Abril.zip', 4, 2013, NULL, '2013-04-30', 1),
(124, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_02 Febrero.zip', 2, 2013, NULL, '2013-02-28', 1),
(125, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_12 Diciembre.zip', 12, 2013, NULL, '2013-12-31', 1),
(126, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_05 Mayo.zip', 5, 2013, NULL, '2013-05-31', 1),
(127, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_10 Octubre.zip', 10, 2013, NULL, '2013-10-31', 1),
(128, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_07 Julio.zip', 7, 2013, NULL, '2013-07-31', 1),
(129, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_03 Marzo.zip', 3, 2013, NULL, '2013-03-29', 1),
(130, 17, '', '', 'Drupal TAG=Gestion de Vulnerabilidades 2013_06 Junio.zip', 6, 2013, NULL, '2013-06-30', 1),
(131, 18, 'Dicho tablero se encuentra en linea, en la Intranet/Herramientas/QlikView/TABLERO_GSI.qvw', 'Se recolecto la informacion de todos las Gcias y sistemas para cargar el tablero.', 'La evidencia del tablero se encuentra en el SGSI, JIRA, RRHH, Drupal, Gestproy, Presupuesto de GSI y el Plan de accion 2012.', 4, 2013, NULL, '2013-04-30', 1),
(132, 19, 'Se procedio al control de dichos reportes.', 'Se solicitaron los reportes de mantenimiento del instrumental a la Gerencia de Mantenimiento.', 'En DRUPAl, TAG: 2-2013.zip', 2, 2013, NULL, '2013-02-26', 1),
(133, 19, 'Se controlaron dichos reportes', 'Se solicitaron los reportes de mantenimiento del instrumental a la Gerencia de Mantenimiento.', 'En DRUPAL', 8, 2013, NULL, '2013-08-28', 1),
(134, 20, 'Se procedio al control de dichos reportes.', 'Se procedio a solicitar los reportes a la Gerencia de Seguridad.', 'En DRUPAL', 8, 2013, NULL, '2013-08-27', 1),
(135, 20, 'Se procedio al control de dichos reportes.', 'Se solicitaron los reportes de accesos a la Gerencia de Seguridad.', 'En DRUPAL, TAG: 2-2013.zip', 2, 2013, NULL, '2013-02-22', 1),
(136, 20, 'Se controlaron dichos accesos.', 'Se procedio a solicitar los reportes a la Gerencia de Seguridad.', 'En Drupal', 12, 2013, NULL, '2013-12-27', 1),
(137, 20, 'Se procedio al control de dichos reportes.', 'Se solicitaron los reportes de accesos a la Gerencia de Seguridad.', 'En DRUPAL, TAG: 1-2013.zip', 1, 2013, NULL, '2013-01-28', 1),
(138, 21, 'Se procedio a comunicar en la Intranet de la CompaÃ±ia, la expliacion y acciones a tomar por parte de los empleados de la empresa sobre la importacia de mantener los escritorios limpios y la informacion confidencial y privada resguardada en lugares s', 'Se procedio junto con RRHH a comunicar al personal la importacia sobre esta cuestion.', 'EstÃ¡ comunicada en la Intranet de la CompaÃ±ia.', 4, 2013, NULL, '2013-04-03', 1),
(139, 21, 'Se analizaron las campaÃ±as a implementar durante los meses de Marzo-Abril.', 'Por la falta de personal debido a las licencias de vacaciones, se decidio analizar las campaÃ±as mÃ¡s efectivas para los escritorios limpios junto al area de RRHH.', 'Cartelera, Intranet y correos de RRHH.', 1, 2013, NULL, '2013-01-25', 1),
(140, 22, 'Se registra la NC-AC-0017', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', '', 1, 2013, NULL, '2013-01-31', 1),
(141, 22, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', 'Se registra la NC-AC-0017', 7, 2013, NULL, '2013-07-31', 1),
(142, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 4, 2013, NULL, '2013-04-30', 1),
(143, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 8, 2013, NULL, '2013-08-31', 1),
(144, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 12, 2013, NULL, '2013-12-31', 1),
(145, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 5, 2013, NULL, '2013-05-31', 1),
(146, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 10, 2013, NULL, '2013-10-31', 1),
(147, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 2, 2013, NULL, '2013-02-28', 1),
(148, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 1, 2013, NULL, '2013-01-31', 1),
(149, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 7, 2013, NULL, '2013-07-31', 1),
(150, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 6, 2013, NULL, '2013-06-30', 1),
(151, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 11, 2013, NULL, '2013-11-30', 1),
(152, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 9, 2013, NULL, '2013-09-30', 1),
(153, 23, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicacion Sentinel', 3, 2013, NULL, '2013-03-31', 1),
(154, 24, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 1, 2013, NULL, '2013-01-31', 1),
(155, 24, '', 'Se observan intentos de ataque de red y de aplicacion que son detectados y bloqueados por  los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'Drupal TAG=Deteccion de Intrusos 2013_04 Abril.zip', 4, 2013, NULL, '2013-04-30', 1),
(156, 24, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 2, 2013, NULL, '2013-02-28', 1),
(157, 24, '', '', 'Se observan intentos de ataque de red y de aplicacion que son detectados y bloqueados por  los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 12, 2013, NULL, '2013-12-31', 1),
(158, 24, '', 'Se observan intentos de ataque de red y de aplicacion que son detectados y bloqueados por  los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'Drupal TAG=Deteccion de Intrusos 2013_08 Agosto.zip', 8, 2013, NULL, '2013-08-31', 1),
(159, 24, '', '', 'Se observan intentos de ataque de red y de aplicacion que son detectados y bloqueados por  los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 10, 2013, NULL, '2013-10-31', 1),
(160, 24, '', 'Se observan intentos de ataque de red y de aplicacion que son detectados y bloqueados por  los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'Drupal TAG=Deteccion de Intrusos 2013_06 Junio.zip', 6, 2013, NULL, '2013-06-30', 1),
(161, 24, 'Se elaboro y comunico la NC-AC-0027', 'No se registraron los intentos de ataque por no encontrarse operativo el FortiAnalizer', '', 3, 2013, NULL, '2013-03-31', 1),
(162, 24, '', '', 'Se observan intentos de ataque de red y de aplicacion que son detectados y bloqueados por  los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 11, 2013, NULL, '2013-11-30', 1),
(163, 24, '', 'Se observan intentos de ataque de red y de aplicacion que son detectados y bloqueados por  los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'Drupal TAG=Deteccion de Intrusos 2013_07 Julio.zip', 7, 2013, NULL, '2013-07-31', 1),
(164, 24, '', '', 'Se observan intentos de ataque de red y de aplicacion que son detectados y bloqueados por  los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 9, 2013, NULL, '2013-09-30', 1),
(165, 24, '', 'Se observan intentos de ataque de red y de aplicacion que son detectados y bloqueados por  los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'Drupal TAG=Deteccion de Intrusos 2013_05 Mayo.zip', 5, 2013, NULL, '2013-05-31', 1),
(166, 25, 'Comunicacion a traves de la Intranet Corporativa.', 'Comunicacion de concientizacion sobre escritorios limpios.-', 'Intranet,', 4, 2013, NULL, '2013-04-03', 1),
(167, 26, 'Se controlo la evidencia de dicho proceso.', 'Se solicito y se recibio de la gerencia de IT los reportes de dicho control.', 'En Drupal', 11, 2013, NULL, '2013-11-29', 1),
(168, 26, 'Se procedio a realizar el control del mes Agosto, para el uso del correo electronico.', 'Se solicito la informacion a la Gerencia de IT.', 'En DRUPAL', 8, 2013, NULL, '2013-08-31', 1),
(169, 26, 'Se procedio al control de dicha proceso', 'Se solicito, y se recibio,  a la Gcia de IT la informacion correspondiente para efectuar dicho control', 'En Drupal', 9, 2013, NULL, '2013-09-27', 1),
(170, 26, 'Se solicito la informacion a la gerencia de tecnologÃ­a.', 'Se procedio a realizar el control del uso del correo electronico,', 'En DRUPAL, TAG: 2-2013.zip', 2, 2013, NULL, '2013-02-22', 1),
(171, 26, 'Se procedio a realizar el control del mes Junio, para el uso del correo electronico.', 'Se solicito la informacion correspondiente  a la Gerencia de IT.', 'En DRUPAL', 6, 2013, NULL, '2013-06-28', 1),
(172, 26, 'Se procedio al control de los reportes entregados por IT.', 'Se requirio a la Gcia de IT los reportes correspondientes a dicho proceso.', 'En drupal', 12, 2013, NULL, '2013-12-27', 1),
(173, 26, 'Se controlo la informacion de dicho proceso.', 'Se solicito, y se recibio,  a la Gcia de IT la informacion correspondiente para efectuar dicho control', 'En Drupal', 10, 2013, NULL, '2013-10-31', 1),
(174, 26, 'Se solicito la informacion y documentacion a la Gerencia de IT.', 'Se procedio a realizar el control, que incluyen la informacion de los meses de Marzo y Abril, para el uso del correo electronico.', 'En Drupal - TAG:Â¿EvidenciaUso de  correo electronicomar_abr_2013.zip', 4, 2013, NULL, '2013-04-23', 1),
(175, 26, 'Se procedio a realizar el control del mes Julio, para el uso del correo electronico.', 'Se requirio la informacion respectiva a la Gerencia de TecnologÃ­a', 'En DRUPAL', 7, 2013, NULL, '2013-07-31', 1),
(176, 26, 'Se volvio a solicitar la informacion a la Gerencia de TecnologÃ­a.', 'No se pudo realizar el control. No se recibio la infomacion de la Gerencia de IT.', 'No hay evidencia.', 3, 2013, NULL, '2013-03-29', 1),
(177, 26, 'Se solicito la informacion a la Gerencia de IT.', 'Se procedio a realizar los controles del uso del correo electronico.', 'En Drupal,  TAG: 1-2013.zip', 1, 2013, NULL, '2013-01-21', 1),
(178, 26, 'Se procedio a realizar el control del mes Mayo, para el uso del correo electronico.', 'Se solicito la informacion a la Gerencia de IT.', 'En DRUPAL', 5, 2013, NULL, '2013-05-30', 1),
(179, 27, 'Se controlaron dichos cambios en JIRA.', 'A partir de este mes la gesttion de cambios se autoomatizo con la herramiente JIRA con las tareas identificadas ITGCI-nÂ°.', 'http://jira.caja.com:20000/login.jsp', 11, 2013, NULL, '2013-11-29', 1),
(180, 27, 'S/C', 'S/C', 'S/C', 2, 2013, NULL, '2013-02-26', 1),
(181, 27, 'S/C', 'S/C', 'S/C', 8, 2013, NULL, '2013-08-30', 1),
(182, 27, 'S/C', 'S/C', 'S/C', 6, 2013, NULL, '2013-06-28', 1),
(183, 27, 'Se controlaron dichos cambios en JIRA.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'http://jira.caja.com:20000/login.jsp', 12, 2013, NULL, '2013-12-31', 1),
(184, 27, 's/c', 'S/c', 'sc/', 10, 2013, NULL, '2013-10-31', 1),
(185, 27, 'S/C', 'S/C', 'S/C', 4, 2013, NULL, '2013-04-30', 1),
(186, 27, 'S/C', 'S/C', 'S/C', 3, 2013, NULL, '2013-03-27', 1),
(187, 27, 'Se controlaron dichos requerimientos.', 'Se recibieron de la Gernecia de TecnologÃ­a, en el transcurso del mes de Septiembre, 6 procesos de gestion de cambios.', 'En DRUPAL', 9, 2013, NULL, '2013-09-30', 1),
(188, 27, 'S/C', 'S/C', 'S/C', 7, 2013, NULL, '2013-07-31', 1),
(189, 27, 'S/C', 'S/C', 'S/C', 5, 2013, NULL, '2013-05-31', 1),
(190, 27, 'S/C', 'S/C', 'S/C', 1, 2013, NULL, '2013-01-30', 1),
(191, 28, 'Se estÃ¡n registrando y controlando dichos incidentes en JIRA y se levanta a un archivo excel.', 'Se recibio la informacion de la Gerencia de IT', 'En DRUPAL, Tag: incidentes de seguridadMDA_Reportes_03_2013', 3, 2013, NULL, '2013-03-27', 1),
(192, 28, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se requirio el evÃ­o de la informacion a la Gerencia de IT.', 'En Drupal - Tag:EvidenciasGestion de incidentesMDA_Reportes_a_20122013.zip', 12, 2013, NULL, '2013-12-30', 1),
(193, 28, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicito y recibio la informacion de la Gcia de IT', 'En Drupal - Tag:EvidenciasGestion de incidentesMDA_Reportes_a_20102013.zip', 10, 2013, NULL, '2013-10-31', 1),
(194, 28, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicito y recibio la informacion de la Gerencia de Sistemas', 'En Drupal - Tag:EvidenciasGestion de incidentesMDA_Reportes_a_20082013.zip', 8, 2013, NULL, '2013-08-29', 1),
(195, 28, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se recibio la informacion de la Gerencia de IT.', 'En Drupal - Tag:EvidenciasGestion de incidentesMDA_Reportes_a_20042013.zip', 4, 2013, NULL, '2013-04-23', 1),
(196, 28, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se recibio la informacion de la gerencia de IT', 'En Drupal - Tag:EvidenciasGestion de incidentesMDA_Reportes_a_20062013.zip', 6, 2013, NULL, '2013-06-26', 1),
(197, 28, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se recibio la informacion de la Gerencia de IT.', 'En Drupal - Tag:EvidenciasGestion de incidentesMDA_Reportes_a_20052013.zip', 5, 2013, NULL, '2013-05-30', 1),
(198, 28, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicito la informacion a la Gcia de IT.', 'En Drupal - Tag:EvidenciasGestion de incidentesMDA_Reportes_a_20112013.zip', 11, 2013, NULL, '2013-11-29', 1),
(199, 28, 'Se estÃ¡n registrando y controlando dichos incidentes en JIRA y se levanta a un archivo excel.', 'Se recibio la informacion de la Gerencia de IT', 'En DRUPAL, Tag: incidentes de seguridadMDA_Reportes_02_2013', 2, 2013, NULL, '2013-02-26', 1),
(200, 28, 'Se estÃ¡n registrando y controlando dichos incidentes en JIRA y se levanta a un archivo excel.', 'Se recibio la informacion de la Gerencia de IT.', 'En DRUPAL, TAG: Incidentes de seguridadMDA_Reportes_01_2013', 1, 2013, NULL, '2013-01-31', 1),
(201, 28, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se recibio la informacion solicitada a la Gerencia de IT.', 'En Drupal - Tag:EvidenciasGestion de incidentesMDA_Reportes_a_20072013.zip', 7, 2013, NULL, '2013-07-31', 1),
(202, 28, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicito y recibio la informacion de la Grenecia de Sistemas', 'En Drupal - Tag:EvidenciasGestion de incidentesMDA_Reportes_a_20092013.zip', 9, 2013, NULL, '2013-09-27', 1),
(203, 29, 'Se consensuo con dicha gerencia la reformulacion de perfiles de sucurales del interior y metro, las mismas se definieron por funciones dentro de la sucursal. Estan en plena prueba piloto.', 'Se reviso con la Gerencia de Sucursales (Metro e Interiror) los perfiles de usuarios.', 'En la aplicacion Polaris se encuetran definidas los nuevos perfiles.', 6, 2013, NULL, '2013-06-12', 1),
(204, 30, 'Se eliminaron los usuarios indicados por RRHH y se bloquearon los usuarios con mas de 90 dias sin conexion..', 'Se procedio a realizar el proceso de control de usuarios.', 'En Drupal: /Gestion de usuarios y contraseÃ±as/01_2013.zip(users)', 4, 2013, NULL, '2013-04-30', 1),
(205, 30, 'Se eliminaron los usuarios indicados por RRHH y se bloquearon los usuarios con mas de 90 dias sin conexion..', 'procedio a realizar el proceso de control de usuarios.', 'En DRUPAL', 8, 2013, NULL, '2013-08-30', 1),
(206, 30, 'Se eliminaron los usuarios indicados por RRHH y se bloquearon los usuarios con mas de 90 dias sin conexion.', 'Se procedio a efectuar el procesos de control de usuarios.', 'En Drupal: /Gestion de usuarios y contraseÃ±as/01_2013.zip(users)', 1, 2013, NULL, '2013-01-10', 1),
(207, 30, 'Se eliminaron los usuarios indicados por RRHH y se bloquearon los usuarios con mas de 90 dias sin conexion..', 'procedio a realizar el proceso de control de usuarios.', 'En DRUPAL', 10, 2013, NULL, '2013-10-11', 1),
(208, 31, '', 'Se evidenciaron errores en DSS el 04, en FINPROD el 7, en ART el 8 y en RRHH el 23 y 28.', 'DRUPAL TAG = Gestion de Backups', 4, 2014, NULL, '2014-04-30', 1),
(209, 31, '', 'Se evidenciaron errores en Findprod el 5, DSS el 19 y en Findtest el 13.', 'DRUPAL TAG = Gestion de Backups', 11, 2014, NULL, '2014-11-30', 1),
(210, 31, '', 'Se evidenciaron errores en DSS el 6, FINTEST el 13, en DSS el 18, BROKERP el 25 y en DSS el 26', 'DRUPAL TAG = Gestion de Backups', 2, 2014, NULL, '2014-02-28', 1),
(211, 31, '', 'Fallo el Backup en ARTel 25, en DES el 19 y en RRHH el 19 con el Mensaje The media surface is damaged. Se evidenciaron errores en ART el 22, DES el 11, 25 y 26, en DSS 2,3  y 25, en RRHH el 19 y TST el 12.', 'DRUPAL TAG = Gestion de Backups', 9, 2014, NULL, '2014-09-30', 1),
(212, 31, '', 'Fallo el Backup en ART el 1 y 16, DES el 7 y 25, en DSS el 2, en Findprod el 7, en Findtest el 17 y en Market el 7 con el Mensaje The media surface is damaged. Se evidenciaron errores en Findprod el 3 y 17, ART el 1, MARKET el 18 y 23.', 'DRUPAL TAG = Gestion de Backups', 7, 2014, NULL, '2014-07-31', 1),
(213, 31, '', 'Fallo el Backup en ART el 22 y en FINDPROD el 6 y 14 con el Mensaje The media surface is damaged. Se evidenciaron errores en Findprod el 5, 14 y 27.', 'DRUPAL TAG = Gestion de Backups', 5, 2014, NULL, '2014-05-31', 1),
(214, 31, '', 'Fallo el Backup en Findprod el 15, 17, 22 y el fintest el 11 y jiraprd el 22 con el Mensaje The media surface is damaged. Se evidenciaron errores en Finprod el 1 y 29, en Infraprod el 15 y en Jiraprd el 15.', 'DRUPAL TAG = Gestion de Backups', 12, 2014, NULL, '2014-12-31', 1),
(215, 31, '', 'Se evidenciaron errores en RRHH 10 y 19, en DSS el 14 y 27.', 'DRUPAL TAG = Gestion de Backups', 3, 2014, NULL, '2014-03-31', 1),
(216, 31, '', 'Fallo el Backup en FINTEST el 9 con el Mensaje The media surface is damaged. Se evidenciaron errores en Findprod el 30, TST el 10, ART el 27, Brokerp el 1 y 14 y en DSS ek 8.', 'DRUPAL TAG = Gestion de Backups', 10, 2014, NULL, '2014-10-31', 1),
(217, 31, '', 'Se evidenciaron errores en POLA5 el 9, en FINDPROD el 10, 28 y 21, en DSS el 21, el RRHH  el 22 y el 27, en DES el 23 y en ART el 28.', 'DRUPAL TAG = Gestion de Backups', 1, 2014, NULL, '2014-01-31', 1),
(218, 31, '', 'Fallo el Backup en RRHH el 20 con el Mensaje The media surface is damaged. Se evidenciaron errores en Findprod el 26, en RRHH el 05 y 20, en pola5 el 05 y 26.', 'DRUPAL TAG = Gestion de Backups', 8, 2014, NULL, '2014-08-31', 1),
(219, 31, '', 'Fallo el Backup DSS el 25, en Findprod el 16 y en RRHH el 5 con el Mensaje The media surface is damaged. Se evidenciaron errores en Findprod el 11, 12 y 23 y en AMCOD el 24.', 'DRUPAL TAG = Gestion de Backups', 6, 2014, NULL, '2014-06-30', 1),
(220, 32, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2014_04_matrix.zip\nhttp://drupal.caja.com/system/files/2014_04_orion.zip', 4, 2014, NULL, '2014-04-30', 1),
(221, 32, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2014_01_matrix.zip\nhttp://drupal.caja.com/system/files/2014_01_orion.zip', 1, 2014, NULL, '2014-01-31', 1),
(222, 32, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2014_10_matrix.zip\nhttp://drupal.caja.com/system/files/2014_10_orion.zip', 10, 2014, NULL, '2014-10-31', 1),
(223, 32, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2014_07_matrix.zip\nhttp://drupal.caja.com/system/files/2014_07_orion.zip', 7, 2014, NULL, '2014-07-31', 1),
(224, 32, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2014_04_matrix.zip\nhttp://drupal.caja.com/system/files/2014_04_orion.zip', 4, 2014, NULL, '2014-04-30', 1),
(225, 32, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2014_01_matrix.zip\nhttp://drupal.caja.com/system/files/2014_01_orion.zip', 1, 2014, NULL, '2014-01-31', 1),
(226, 32, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2014_10_matrix.zip\nhttp://drupal.caja.com/system/files/2014_10_orion.zip', 10, 2014, NULL, '2014-10-31', 1),
(227, 32, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2014_07_matrix.zip\nhttp://drupal.caja.com/system/files/2014_07_orion.zip', 7, 2014, NULL, '2014-07-31', 1),
(228, 33, '', '', 'http://drupal.caja.com/system/files/2014_09%20Septiembre.zip', 9, 2014, NULL, '2014-09-23', 1),
(229, 33, '', '', 'http://drupal.caja.com/system/files/2014_03%20Marzo.zip', 3, 2014, NULL, '2014-03-31', 1),
(230, 33, '', '', 'http://drupal.caja.com/system/files/2014_05%20Mayo.zip', 5, 2014, NULL, '2014-05-31', 1),
(231, 33, '', '', 'http://drupal.caja.com/system/files/2014_01%20Enero_0.zip', 1, 2014, NULL, '2014-01-31', 1),
(232, 33, '', '', 'http://drupal.caja.com/system/files/2014_11%20Noviembre_0.zip', 11, 2014, NULL, '2014-11-27', 1),
(233, 33, '', '', 'http://drupal.caja.com/system/files/2014_04%20Abril.zip', 4, 2014, NULL, '2014-04-30', 1),
(234, 33, '', '', 'http://drupal.caja.com/system/files/2014_06%20Junio.zip', 6, 2014, NULL, '2014-06-30', 1),
(235, 33, '', '', 'http://drupal.caja.com/system/files/2014_08%20Agosto.zip', 8, 2014, NULL, '2014-08-31', 1),
(236, 33, '', '', 'http://drupal.caja.com/system/files/2014_02%20Febrero.zip', 2, 2014, NULL, '2014-02-28', 1),
(237, 33, '', '', 'http://drupal.caja.com/system/files/2014_12%20Diciembre_0.zip', 12, 2014, NULL, '2014-12-29', 1),
(238, 33, '', '', 'http://drupal.caja.com/system/files/2014_10%20Octubre_0.zip', 10, 2014, NULL, '2014-10-30', 1),
(239, 33, '', '', 'http://drupal.caja.com/system/files/2014_07%20Julio.zip', 7, 2014, NULL, '2014-07-31', 1),
(240, 34, 'El CISO (Marcelo EstoL), envÃ­a el reporte al Gerente de Infraestructura TecnolÃ³gica (Rodolfo Mazzini) para su remediaciÃ³n.', '', 'http://drupal.caja.com/content/test-de-intrusio', 12, 2014, NULL, '2014-12-17', 1),
(241, 35, 'Se realizÃ³ la actualizaciÃ³n de las tablas del  tablero.', 'Se recolectÃ³ la informacion para cargar tablero de control.', 'En Qlickview', 10, 2014, NULL, '2014-10-30', 1),
(242, 35, 'Se realizÃ³ el proceso de actualizaciÃ³n del tablero.', 'Se recolectÃ³ la informacion para cargar tablero de control.', 'En Qlickview', 7, 2014, NULL, '2014-07-31', 1),
(243, 35, 'Se cargaron los parametros para su actualizaciÃ³', 'Se recolectÃ³ la informacion para cargar tablero de control.', 'En Qlickview', 4, 2014, NULL, '2014-04-30', 1),
(244, 36, 'Se controla la evidencia solictada.', 'Se solicitaron los reportes de mantenimiento del instrumental a la Gerencia de Mantenimiento.', 'En Drupal', 5, 2014, NULL, '2014-05-13', 1),
(245, 37, 'Se controlaron dichos accesos.', 'Se procedio a solicitar la informacion a la Gerencia de Seguridad.', 'En Drupal', 4, 2014, NULL, '2014-04-30', 1),
(246, 37, 'Se controlaron los accesos', 'Se solicito la informacion correspondiente', 'En Drupal', 10, 2014, NULL, '2014-10-31', 1),
(247, 37, 'Se controla dicha informaciÃ³', 'Se solicitaron los listados al sector correspondiente.', 'En drupal', 12, 2014, NULL, '2014-12-30', 1),
(248, 37, 'Se controlaron dichos acceos', 'Se solicito la informacion a la Gcia de Seguridad', 'En Drupal', 7, 2014, NULL, '2014-07-31', 1),
(249, 38, 'Se comunicÃ³ a traves de mail y en la Intranet de la Cia sobre la importancia de este proceso.', 'Se procedio conjuntamente con la Gerencia de RRHH a informar de dicho proceso.', 'En la Intranet y Drupal', 4, 2014, NULL, '2014-04-16', 1),
(250, 39, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', 'Se registra la NC-AC-0017', 7, 2014, NULL, '2014-07-31', 1),
(251, 39, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', 'Se registra la NC-AC-0017', 1, 2014, NULL, '2014-01-31', 1),
(252, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 12, 2014, NULL, '2014-12-31', 1);
INSERT INTO `referencias` (`id_referencia`, `id_control`, `accion`, `observacion`, `evidencia`, `mes`, `ano`, `nro_referencia`, `modificacion`, `status`) VALUES
(253, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 9, 2014, NULL, '2014-09-30', 1),
(254, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 4, 2014, NULL, '2014-04-30', 1),
(255, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 7, 2014, NULL, '2014-07-31', 1),
(256, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 2, 2014, NULL, '2014-02-28', 1),
(257, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 5, 2014, NULL, '2014-05-31', 1),
(258, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 10, 2014, NULL, '2014-10-31', 1),
(259, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 8, 2014, NULL, '2014-08-31', 1),
(260, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 3, 2014, NULL, '2014-03-31', 1),
(261, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 6, 2014, NULL, '2014-06-30', 1),
(262, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 1, 2014, NULL, '2014-01-31', 1),
(263, 40, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 11, 2014, NULL, '2014-11-28', 1),
(264, 41, '', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados por los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'http://drupal.caja.com/system/files/2014_05%20Mayo_0.zip', 5, 2014, NULL, '2014-05-31', 1),
(265, 41, '', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados por los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'http://drupal.caja.com/system/files/2014_03%20Marzo_0.zip', 3, 2014, NULL, '2014-03-31', 1),
(266, 41, '', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados por los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'http://drupal.caja.com/system/files/2014_07%20Julio_0.zip', 7, 2014, NULL, '2014-07-31', 1),
(267, 41, '', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados por los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'http://drupal.caja.com/system/files/2014_01%20Enero_1.zip', 1, 2014, NULL, '2014-01-31', 1),
(268, 41, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2014_11.pdf', 11, 2014, NULL, '2014-11-28', 1),
(269, 41, '', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados por los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'http://drupal.caja.com/system/files/2014_09%20Septiembre_0.zip', 9, 2014, NULL, '2014-09-30', 1),
(270, 41, '', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados por los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'http://drupal.caja.com/system/files/2014_04%20Abril_0.zip', 4, 2014, NULL, '2014-04-30', 1),
(271, 41, '', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados por los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'http://drupal.caja.com/system/files/2014_06%20Junio_0.zip', 6, 2014, NULL, '2014-06-30', 1),
(272, 41, '', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados por los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'http://drupal.caja.com/system/files/2014_02%20Febrero_0.zip', 2, 2014, NULL, '2014-02-28', 1),
(273, 41, '', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados por los firewalls FW-IntCorp-Primario_CC (FGT3KB3408600334) y FW-IntCorp-Secundario_DR (FGT3KB3409600299)', 'http://drupal.caja.com/system/files/2014_08%20Agosto_0.zip', 8, 2014, NULL, '2014-08-31', 1),
(274, 41, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2014_12.pdf', 12, 2014, NULL, '2014-12-31', 1),
(275, 41, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2014_10.pdf', 10, 2014, NULL, '2014-10-31', 1),
(276, 42, 'Se procedio a comunicar a todo el personal, con una cominicacion interna (maiL),, sobre la importancia de los escritrios limpios relacionado con la documentacion  impresa.', 'Se realizÃ³ una verificaciÃ³n, con recorrida sobre las distintas oficinas, sobre el tema de la documentacion sobre dejada a la vista.', 'ComunicaciÃ³n Intranet de la CompaÃ±ia.', 4, 2014, NULL, '2014-04-14', 1),
(277, 43, 'S/C jira ITGCI-2583', 'S/C', 'S/C', 8, 2014, NULL, '2014-08-29', 1),
(278, 43, 'Se controlo la informacion recibida.', 'se solicita la informacion a la gerencia de IT.', 'En Drupal', 11, 2014, NULL, '2014-11-28', 1),
(279, 43, 'Se procedio con el control de los reportes.', 'Se procedio a solicitar la info al sector de IT para su control.', 'En Drupal', 6, 2014, NULL, '2014-06-30', 1),
(280, 43, 'Se veificÃ³ la informacion recibida.', 'Se solicita la informacion al area de IT correspondiente.', 'En Drupal', 9, 2014, NULL, '2014-09-30', 1),
(281, 43, 'Se controla la informacion recibida', 'Se solicito y se recibiÃ³ de la gerencia de IT los reportes de dicho control.', 'En Drupal', 4, 2014, NULL, '2014-04-30', 1),
(282, 43, 'Se procedio con el control de los reportes.', 'se solicita la informacion a la gerencia de IT.', 'En Drupal', 5, 2014, NULL, '2014-05-30', 1),
(283, 43, 'Se procedio con el control de los reportes.', 'Se solicito y se recibiÃ³ de la gerencia de IT los reportes de dicho control.', 'En Drupal', 3, 2014, NULL, '2014-03-10', 1),
(284, 43, 'Se controla la informacion.', 'se solicita la informacion a la gerencia de IT.', 'En Dupal', 12, 2014, NULL, '2014-12-30', 1),
(285, 43, 'S/C Jira ITGCI-2583', 'S/C', 'S/C', 7, 2014, NULL, '2014-07-31', 1),
(286, 43, 'Se procedio al control de la misma', 'se solicita la informacion a la gerencia de IT.', 'En Drupal', 10, 2014, NULL, '2014-10-31', 1),
(287, 43, 'Se controla la evidencia entregada por IT', 'Se solicito y se recibiÃ³ de la gerencia de IT los reportes de dicho control.', 'En Drupal', 1, 2014, NULL, '2014-01-31', 1),
(288, 44, 'Se controlaron dichos procedimientos.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 11, 2014, NULL, '2014-11-28', 1),
(289, 44, 'Se procedio con el control.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'http://jira.caja.com:20000/login.jsp', 4, 2014, NULL, '2014-04-30', 1),
(290, 44, 'Se procedio con el control de los mismos', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 8, 2014, NULL, '2014-08-29', 1),
(291, 44, 'Se procedio al control de lo reportado en JIRA', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'http://jira.caja.com:20000/login.jsp', 2, 2014, NULL, '2014-02-28', 1),
(292, 44, 'Se controlaron los Jiras en especial el del barracuda (ITGCI-2583).', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 9, 2014, NULL, '2014-09-30', 1),
(293, 44, 'Se controlaron dichos cambios en Jira', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 12, 2014, NULL, '2014-12-30', 1),
(294, 44, 'Se procedio con el control.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 10, 2014, NULL, '2014-10-31', 1),
(295, 44, 'Se controlaron dichas tareas', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'http://jira.caja.com:20000/login.jsp', 3, 2014, NULL, '2014-03-31', 1),
(296, 44, 'Se procedio con el control.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'http://jira.caja.com:20000/login.jsp', 5, 2014, NULL, '2014-05-30', 1),
(297, 44, 'Se controla la informacion de los JIRAS', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 7, 2014, NULL, '2014-07-31', 1),
(298, 44, 'Se controlaron dichos cambios en JIRA.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'http://jira.caja.com:20000/login.jsp', 1, 2014, NULL, '2014-01-31', 1),
(299, 44, 'Se controlaron dichos cambios en JIRA', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 6, 2014, NULL, '2014-06-30', 1),
(300, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion a la gerencia de IT', 'En JIRA', 4, 2014, NULL, '2014-04-30', 1),
(301, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion a TI', 'en jira', 11, 2014, NULL, '2014-11-28', 1),
(302, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion respectiva a la gerencia de IT', 'En JIRA', 2, 2014, NULL, '2014-02-28', 1),
(303, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion a la gerencia de IT', 'En JIRA.', 5, 2014, NULL, '2014-05-30', 1),
(304, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion a IT', 'En Jira', 9, 2014, NULL, '2014-09-30', 1),
(305, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion a la gcia de tecnologÃ­a', 'En Jira', 7, 2014, NULL, '2014-07-31', 1),
(306, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion a la gcia de IT', 'En Jira', 12, 2014, NULL, '2014-12-30', 1),
(307, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se requiriÃ³ la informacion a la gerencia de sistemas', 'En JIRA', 3, 2014, NULL, '2014-03-31', 1),
(308, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se requiriÃ³ la informacion a la gcia de sistemas', 'en jira', 10, 2014, NULL, '2014-10-31', 1),
(309, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita  a la  gerencia de IT la informacion relacionada.', 'En JIRA', 1, 2014, NULL, '2014-01-31', 1),
(310, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion a la Gcia de IT', 'En Jira', 8, 2014, NULL, '2014-08-29', 1),
(311, 45, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion a la gerencia de IT', 'En Jira', 6, 2014, NULL, '2014-06-30', 1),
(312, 46, 'Se procedio a cambiar por las nuevas categorÃ­as a todos los usuarios de Metro y GBA con el aval de las gcia de negocios corespondientes.', 'Se procedio a realizar el control de categorÃ­as de usuarios referido al proyecto de RecategorizaciÃ³n de Polaris en todas las agencias de Metro y Gran Buenos Aires en conjunto con el area de negocios correspondiente.', 'En Drupal.', 9, 2014, NULL, '2014-09-05', 1),
(313, 47, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron los usuarios correspondientes a los controles de dicho proceso.', 'Se procedÃ­o a generar los reportes de conexiÃ³n de usuarios  y la Gerencia de RRHH enviÃ³ las novedades de usuarios.', 'En Drupal', 5, 2014, NULL, '2014-05-16', 1),
(314, 47, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron los usuarios correspondientes a los controles de dicho proceso.', 'Se procedÃ­o a generar los reportes de conexiÃ³n de usuarios  y la Gerencia de RRHH enviÃ³ las novedades de usuarios.', 'En Drupal.', 12, 2014, NULL, '2014-12-23', 1),
(315, 47, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron los usuarios correspondientes a los controles de dicho proceso.', 'Se procedÃ­o a generar los reportes de conexiÃ³n de usuarios  y la Gerencia de RRHH enviÃ³ las novedades de usuarios.', 'En Drupal', 9, 2014, NULL, '2014-09-30', 1),
(316, 47, 'Se eliminaron los usuarios comunicados por la Gerencia de RRHH y se bloquearon los usuarios con mas de 90 dias sin conexiÃ³n..', 'Se procedio a realizar el proceso de control de usuarios.', 'En DRUPAL', 2, 2014, NULL, '2014-02-27', 1),
(317, 48, '', 'Fallo el Backup en Findprod el 19 y Infraprd el 9 con el Mensaje The media surface is damaged. Se evidenciaron errores en Findprod el 7, en Fintest el 21, en Infraprd el 26, en ART el 19 y en DSS el 7 y 14.', 'DRUPAL TAG = Gestion de Backups', 1, 2015, NULL, '2015-01-31', 1),
(318, 48, '', 'Se registro The Media Surface en FINPROD el 22, y errores en ART el 6 y 13, DES1 el 21 y 28, en DSSD el 8, en DSS el 8, 22 y 29, en FINPROD el 13 y 22, en FINTEST el 21, en MARKET el 10, en RRHH el 13 y el TST el 16 y 24.', 'DRUPAL TAG = Gestion de Backups', 4, 2015, NULL, '2015-04-30', 1),
(319, 48, '', 'Aparece error en DES el 19. En FINDPROD 03, 11y 25. En FINTEST el  05. En TST los dias 19 y 26.\n\nAparece The media Surface en FINPROD los dias 2, 4 y 9. En TST los dias 12 y 13.', '2015_09_Septiembre', 9, 2015, NULL, '2015-09-30', 1),
(320, 48, '', 'Se evidenciaron errores en AMCOD el 2, 23 y 30, en DES1 el 16, en DSS el 15, 22 y 29, en FINPROD el 6, 15, 27 y 30, en FINTEST el 23 y 31, en INSPIRE el 17 y en RRHH el 13. Se registro The media Surface en FINPROD el 15 y el 29 y en FINTEST el 8 y 30', 'DRUPAL TAG = Gestion de Backups', 7, 2015, NULL, '2015-07-31', 1),
(321, 48, '', 'Fallo el Backup en FINDPROD el 25 con el Mensaje The media surface is damaged. Se evidenciaron errores en Findprod el 2, 9, 11 y 25 en Market el 27 en DSS el 20 y 25 y en Brokerp el dia 2..', 'DRUPAL TAG = Gestion de Backups', 2, 2015, NULL, '2015-02-28', 1),
(322, 48, '', 'Se evidenciaron errores en ART el 4, en FINPROD el 13, 20 y 23, en MARKET el 15 y en TST el 28. Se registro The Media Surface en INFRAPRD el 8 y en TST el 28.', 'DRUPAL TAG = Gestion de Backups', 5, 2015, NULL, '2015-05-31', 1),
(323, 48, '', 'Aparece The media Surface el DSS el 08 y 29. En FINDPROD el 30. El FINTEST 24. En RRHH el 16. En TST el 17.\n\nAparece error en AMCOD el dia 17. En DSS el 01, 02, 08, 15, 16 y 23. En FINDPROD 07 y 09, el 16 y el 23. En FINTEST el 17 y 24. En JIRAPRD el', '2015_11_Noviembre', 11, 2015, NULL, '2015-11-30', 1),
(324, 48, '', 'Aparece The media Surface en FINPROD los dias 7 y 21. En NEWPOLARIS el dia 13.\n\nAparece error AMCOD el dia 15, en DES el dia 22, en DSS el 9, 13 y 14. El FINPROD 1, 5, 7, 13, 28, 29 y 30. En JIRAPRD el 26. En DSS el 20. POLA5 el 13.', '2015_10_Octubre', 10, 2015, NULL, '2015-10-31', 1),
(325, 48, '', 'Aparece The media Surface los dias 26 en FINDPROD y 27 en FINDPROD y FINDTEST.\n\nSe observan errores en AMCOD el dia 20, DSSD el 6, en DSS los dias 12, 14, 19, 20 y 21. En FINDPROD el 3, 5, 27 y 31. En JIRAPROD el dia 10. En RRHH el dia 31. En TST los', '2015_08_Agosto', 8, 2015, NULL, '2015-08-31', 1),
(326, 48, '', 'Se registro The Media Surface el 15, errores en AMCOD el 4, BROKERD el 4, en DES1 el 4 y 18, en DSSD el 18, en DSS el 10, en FINPROD el 1, 3 y 15, en FINTEST el 19, en INFRADES el 18, en INSPIRE el 2, en MARKET el 26 y en POLA5 el 17 y 18.', 'DRUPAL TAG = Gestion de Backups', 6, 2015, NULL, '2015-06-30', 1),
(327, 48, '', 'Se registraron errores en ART el 2, MARKET el 11 y 18, DES el 11 y 12, en TST el 12, en DES1 el 12 y 19. Se evidencio The Media Surface en DSS el 11, 12 y 13 y en JIRAPRD el 16.', 'DRUPAL TAG = Gestion de Backups', 3, 2015, NULL, '2015-03-31', 1),
(328, 49, 'Se informa al Ã¡rea responsable', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2015_05_0.zip', 6, 2015, NULL, '2015-06-01', 1),
(329, 49, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2015_02_0.zip', 3, 2015, NULL, '2015-03-02', 1),
(330, 49, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2015_11_0.zip', 12, 2015, NULL, '2015-12-03', 1),
(331, 49, 'Se informa al Ã¡rea responsable', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2015_08_0.zip', 9, 2015, NULL, '2015-09-03', 1),
(332, 49, 'Se informa al Ã¡rea responsable', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2015_05_0.zip', 6, 2015, NULL, '2015-06-01', 1),
(333, 49, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2015_02_0.zip', 3, 2015, NULL, '2015-03-02', 1),
(334, 49, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2015_11_0.zip', 12, 2015, NULL, '2015-12-03', 1),
(335, 49, 'Se informa al Ã¡rea responsable', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2015_08_0.zip', 9, 2015, NULL, '2015-09-03', 1),
(336, 50, '', '', 'http://drupal.caja.com/system/files/2015_06.zip', 6, 2015, NULL, '2015-06-12', 1),
(337, 50, '', '', 'http://drupal.caja.com/system/files/2015_01.zip', 1, 2015, NULL, '2015-01-15', 1),
(338, 50, '', '', 'http://drupal.caja.com/system/files/2015_10.zip', 10, 2015, NULL, '2015-10-15', 1),
(339, 50, '', '', 'http://drupal.caja.com/system/files/2015_12.zip', 12, 2015, NULL, '2015-12-11', 1),
(340, 50, '', '', 'http://drupal.caja.com/system/files/2015_04.zip', 4, 2015, NULL, '2015-04-16', 1),
(341, 50, '', '', 'http://drupal.caja.com/system/files/2015_08.zip', 8, 2015, NULL, '2015-08-14', 1),
(342, 50, '', '', 'http://drupal.caja.com/system/files/2015_02.zip', 2, 2015, NULL, '2015-02-12', 1),
(343, 50, '', '', 'http://drupal.caja.com/system/files/2015_07.zip', 7, 2015, NULL, '2015-07-16', 1),
(344, 50, '', '', 'http://drupal.caja.com/system/files/2015_11.zip', 11, 2015, NULL, '2015-11-13', 1),
(345, 50, '', '', 'http://drupal.caja.com/system/files/2015_05.zip', 5, 2015, NULL, '2015-05-14', 1),
(346, 50, '', '', 'http://drupal.caja.com/system/files/2015_09.zip', 9, 2015, NULL, '2015-09-11', 1),
(347, 50, '', '', 'http://drupal.caja.com/system/files/2015_03.zip', 3, 2015, NULL, '2015-03-17', 1),
(348, 51, '', '', 'http://drupal.caja.com/system/files/2015.pdf', 12, 2015, NULL, '2015-12-02', 1),
(349, 52, 'Se analizaron los desvios y los planes de accio', 'Se procedio a informar al ComitÃ© los indicadores de Gestion.', 'En Drupal', 9, 2015, NULL, '2015-09-01', 1),
(350, 52, 'Se analizaron los desvios y planes de accio', 'Se procedio a informar al ComitÃ© los indicadores de Gestion.', 'En Drupal', 6, 2015, NULL, '2015-06-23', 1),
(351, 52, 'Ae analizaron los desvio y los planes a seguir.', 'Se procedio a informar al ComitÃ© los indicadores de Gestion.', 'En Drupal', 12, 2015, NULL, '2015-12-14', 1),
(352, 53, 'Se controlo la evidencia solicitada.', 'Se solicitaron los reportes de mantenimiento del instrumental a la Gerencia de AdministraciÃ³n y Mantenimiento.', 'En Drupal', 3, 2015, NULL, '2015-03-30', 1),
(353, 54, 'Se controlaron los accesos hasta el 10-08-2015.', 'Se procedio a solicitar la informacion correspondiente a la Gcia de Seguridad.', 'En Drupal', 8, 2015, NULL, '2015-08-11', 1),
(354, 54, 'Se controlaron los accesos hasta el 30/11/15', 'Se procedio a solicitar la informacion correspondiente a la Gcia de Seguridad.', 'En Drupal', 12, 2015, NULL, '2015-12-09', 1),
(355, 54, 'Se controlaron los accesos hasta el 24-03-2015.', 'Se procedio a solicitar la informacion correspondiente a la Gcia de Seguridad.', 'En Drupal', 3, 2015, NULL, '2015-03-25', 1),
(356, 54, 'Se controlaron los accesos hasta el 29-06-2015.', 'Se procedio a solicitar la informacion correspondiente a la Gcia de Seguridad.', 'En Drupal', 6, 2015, NULL, '2015-06-29', 1),
(357, 55, 'Se comunicÃ³ por medios graficos en los Office y en la Intranet de la Cia sobre la importancia de este proceso.', 'Se procedio conjuntamente con la Gerencia de RRHH a informar de dicho proceso.', 'En la Intranet de la CÃ­a', 1, 2015, NULL, '2015-01-22', 1),
(358, 56, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', '', 7, 2015, NULL, '2015-07-31', 1),
(359, 56, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', '', 1, 2015, NULL, '2015-01-31', 1),
(360, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 4, 2015, NULL, '2015-04-30', 1),
(361, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 11, 2015, NULL, '2015-11-30', 1),
(362, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 10, 2015, NULL, '2015-10-29', 1),
(363, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 2, 2015, NULL, '2015-02-27', 1),
(364, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 8, 2015, NULL, '2015-08-31', 1),
(365, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 6, 2015, NULL, '2015-06-30', 1),
(366, 57, 'Se crea un ticket en Jira y se informa a la gerencia de infraestructura tecnolÃ³gica.', 'Ne se registran todos los eventos controlados en Sentinel.\n\nEl conector de syslog que recibe informacion del firewall reporta el siguiente mensaje desde el 1/5/2015: \"No connection detected from the source 172.17.1.53\"', 'http://jira.caja.com:20000/browse/ITGCI-5412', 5, 2015, NULL, '2015-05-29', 1),
(367, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 3, 2015, NULL, '2015-03-31', 1),
(368, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 9, 2015, NULL, '2015-09-28', 1),
(369, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 1, 2015, NULL, '2015-01-30', 1),
(370, 57, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 7, 2015, NULL, '2015-07-31', 1),
(371, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_02_0.pdf', 3, 2015, NULL, '2015-03-02', 1),
(372, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_08_0.pdf', 9, 2015, NULL, '2015-09-01', 1),
(373, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_06_0.pdf', 7, 2015, NULL, '2015-07-01', 1),
(374, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_04_0.pdf', 5, 2015, NULL, '2015-05-04', 1),
(375, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_11.pdf', 12, 2015, NULL, '2015-12-04', 1),
(376, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_01.pdf', 2, 2015, NULL, '2015-02-02', 1),
(377, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_03_0.pdf', 4, 2015, NULL, '2015-04-01', 1),
(378, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_09_0.pdf', 10, 2015, NULL, '2015-10-01', 1),
(379, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_07_0.pdf', 8, 2015, NULL, '2015-08-03', 1),
(380, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_05_0.pdf', 6, 2015, NULL, '2015-06-01', 1),
(381, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2014_12_0.pdf', 1, 2015, NULL, '2015-01-05', 1),
(382, 58, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_10_0.pdf', 11, 2015, NULL, '2015-11-02', 1),
(383, 59, 'Se analizaron temas de seguridad en las redes sociales sobre la aplicacion Whatsapp', 'Se incorporÃ³ una nota en la revista La Caja sobre CyberDelincuencia.', 'http://drupal.caja.com/content/concientizaci%C3%B3', 4, 2015, NULL, '2015-04-30', 1),
(384, 60, 'Se reviso la informacion recibida de IT.', 'Se solicito la informacion respectiva a la gerencia de infraestructura tecnologica', 'En Drupal', 12, 2015, NULL, '2015-12-30', 1),
(385, 60, 'Se reviso la documentacion recibida.', 'Se solicito la informacion respectiva a la gerencia de infraestructura tecnologica', 'En Drupal', 8, 2015, NULL, '2015-08-31', 1),
(386, 60, 'Se relevÃ³ la informacion suministrada por IT.', 'Se solicito la informacion respectiva a la gerencia de infraestructura tecnologica', 'En Drupal', 6, 2015, NULL, '2015-06-30', 1),
(387, 60, 'Se controla la evidencia recibida.', 'Se solicita al area de IT la informacion respectiva.', 'En Drupal', 1, 2015, NULL, '2015-01-30', 1),
(388, 60, 'Se controla la documentacion respectiva,', 'Se solicito la informacion respectiva a la gerencia de infraestructura tecnologica.', 'En drupal', 4, 2015, NULL, '2015-04-30', 1),
(389, 60, 'Se reviso la evidencia recibida de IT.', 'Se solicito la informacion respectiva a la gerencia de infraestructura tecnologica', 'En drupal', 11, 2015, NULL, '2015-11-30', 1),
(390, 60, 'Se controla la informacion suministrada por la gcia de IT.', 'Se solicito la informacion respectiva a la gerencia de infraestructura tecnologica', 'En drupal', 9, 2015, NULL, '2015-09-30', 1),
(391, 60, 'Se controla la evidencia recibida.', 'Se solicito la informacion respectiva a la gerencia de infraestructura tecnologica', 'En Drupal', 7, 2015, NULL, '2015-07-31', 1),
(392, 60, 'Se reviso la informarciÃ³n recibida de IT y se controla.', 'Se solicita la informacion a MI de la gcia de IT', 'En Drupal', 3, 2015, NULL, '2015-03-31', 1),
(393, 60, 'Se control la informacion recibida', 'Se requiriÃ³ a la Gcia de IT la informaciÃ³', 'En Drupal', 2, 2015, NULL, '2015-02-27', 1),
(394, 60, 'Se controla la informacion recibida.', 'Se solicito la informacion respectiva a la gerencia de infraestructura tecnologica.', 'En Drupal', 5, 2015, NULL, '2015-05-29', 1),
(395, 60, 'Se controla la informacion recibida.', 'Se solicito la informacion respectiva a la gerencia de infraestructura tecnologica', 'En drupal', 10, 2015, NULL, '2015-10-31', 1),
(396, 61, 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'Se solicito la informacion a TI', 'En Jira', 1, 2015, NULL, '2015-01-30', 1),
(397, 61, 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'Se solicita la informacion a la gerencia de IT', 'En Jira', 3, 2015, NULL, '2015-03-31', 1),
(398, 61, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 11, 2015, NULL, '2015-11-30', 1),
(399, 61, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', '', 'En Jira', 6, 2015, NULL, '2015-06-30', 1),
(400, 61, 'Se controlo de acuerdo al procedimiento de gestionde cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 9, 2015, NULL, '2015-09-30', 1),
(401, 61, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 12, 2015, NULL, '2015-12-30', 1),
(402, 61, 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'Se requiriÃ³ la informacion a IT', 'En jira', 2, 2015, NULL, '2015-02-27', 1),
(403, 61, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 7, 2015, NULL, '2015-07-31', 1),
(404, 61, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En jira', 10, 2015, NULL, '2015-10-31', 1),
(405, 61, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 4, 2015, NULL, '2015-04-30', 1),
(406, 61, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 5, 2015, NULL, '2015-05-29', 1),
(407, 61, 'Se controlo de acuerdo al procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 8, 2015, NULL, '2015-08-31', 1),
(408, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita a la gcia de IT los registros para este control.', 'En Jira', 11, 2015, NULL, '2015-11-30', 1),
(409, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se requiriÃ³ a IT la informacion para este control.', 'En Jira', 6, 2015, NULL, '2015-06-30', 1),
(410, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion necesaria a la gcia de IT.', 'En Jira', 9, 2015, NULL, '2015-09-30', 1),
(411, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita a IT la informacion necesaria para este control.', 'En Jira', 4, 2015, NULL, '2015-04-30', 1),
(412, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita la informacion a IT', 'en jira', 2, 2015, NULL, '2015-02-27', 1),
(413, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita a la Gerencia de IT los registros para este control.', 'En Jira', 7, 2015, NULL, '2015-07-31', 1),
(414, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se requiriÃ³ a IT la informacion para este control', 'En Jira', 10, 2015, NULL, '2015-10-31', 1),
(415, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicito a la Gerencia de Sistemas la informacion de este proceso.', 'En Jira', 5, 2015, NULL, '2015-05-29', 1),
(416, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita a la gcia de IT los registros para este control.', 'En Jira', 8, 2015, NULL, '2015-08-31', 1),
(417, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita a IT la informacion respectiva.', 'En Jira', 3, 2015, NULL, '2015-03-31', 1),
(418, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se solicita a IT los registros para realizar este control', 'En Jira', 12, 2015, NULL, '2015-12-31', 1),
(419, 62, 'Se registran y controlan los incidentes de seguridad en JIRA y se levantan a un archivo excel para conformar el tablero de control.', 'Se requiere la informacion respectiva a la gcia de IT', 'En Jira', 1, 2015, NULL, '2015-01-30', 1),
(420, 63, 'Se procedio a relevar los usuarios administradores de la Gcia de IT.', 'Se procedio a enviar a la Gcia de IT el reporte con los usuarios administradores para que releven y comuniquen cualquier novedad al respecto.', 'En drupal', 12, 2015, NULL, '2015-12-29', 1),
(421, 63, 'Se observaron defasajes por migraciones de usaurios de agencia con la vieja estructura de categorias y se solicita a las gerencias usuarias, el relevamiento y ajuste de los perfiles de usuario en las agencia de metro y gba con la nueva definiciÃ³n d', 'Se procedio a realizar el control de perfiles de usuario en aplicacion CORE con la nueva estructura de categorÃ­as de usuarios en las sucurales migradas.', 'En Drupal', 8, 2015, NULL, '2015-08-14', 1),
(422, 64, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron los usuarios correspondientes a los controles de dicho proceso.', 'Se procedÃ­o a generar los reportes de conexiÃ³n de usuarios  y la Gerencia de RRHH enviÃ³ las novedades de usuarios.', 'En Drupal', 7, 2015, NULL, '2015-07-16', 1),
(423, 64, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron los usuarios correspondientes a los controles de dicho proceso.', 'Se procedÃ­o a generar los reportes de conexiÃ³n de usuarios  y la Gerencia de RRHH enviÃ³ las novedades de usuarios.', 'En Drupal', 8, 2015, NULL, '2015-08-03', 1),
(424, 64, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron los usuarios correspondientes a los controles de dicho proceso', 'Se procedÃ­o a generar los reportes de conexiÃ³n de usuarios  y la Gerencia de RRHH enviÃ³ las novedades de usuarios.', 'En Drupal', 12, 2015, NULL, '2015-12-15', 1),
(425, 64, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron los usuarios correspondientes a los controles de dicho proceso.', 'Se procedÃ­o a generar los reportes de conexiÃ³n de usuarios  y la Gerencia de RRHH enviÃ³ las novedades de usuarios.', 'En Drupal', 3, 2015, NULL, '2015-03-25', 1),
(426, 65, '', '', 'http://drupal.caja.com/system/files/08_Agosto_2016.zip', 8, 2016, NULL, '2016-08-31', 1),
(427, 65, '', 'Se registro The Media Surface Demage en  Finprod el 2.\n\nSe registraron errores en AMCOD el 3. En DSSD el 17. En Finprod el 9. En Fintest el 3, 17 y 22. Market el 4.', 'http://drupal.caja.com/system/files/2016_03_Marzo.zip', 3, 2016, NULL, '2016-03-29', 1),
(428, 65, '', '', 'http://drupal.caja.com/system/files/06_Junio_2016.zip', 6, 2016, NULL, '2016-06-30', 1),
(429, 65, '', 'Se registro Error en AMCOD el 7 y 14. En DES y DES1 el 28. En Finprod los dias 4, 8, 11, 18 y 20. El 8 en Fintest. En Jirades el 21. El 18 en RRHH y en TST el 28.\n\nSe registro The Media Surface Demage en Findprod el 6, 18 y 19.', 'http://drupal.caja.com/system/files/2016_01_Enero_0.zip', 1, 2016, NULL, '2016-01-31', 1),
(430, 65, '', 'Error en 07,28 en AMCOD. En DES el 7 y 28. En DSSD el 14. En FINTEST el 8 y 28. En InfraPRD el 4. En JIRAPRD el 4 y 29. En Market el 28. El 28 en TST.', 'http://drupal.caja.com/system/files/04_Abril_2016_0.zip', 4, 2016, NULL, '2016-04-30', 1),
(431, 65, '', '', 'http://drupal.caja.com/system/files/11_Noviembre_2016.zip', 11, 2016, NULL, '2016-11-30', 1),
(432, 65, '', '', 'http://drupal.caja.com/system/files/09_Septiembre_2016.zip', 9, 2016, NULL, '2016-09-30', 1),
(433, 65, '', '', 'http://drupal.caja.com/system/files/07_Julio_2016.zip', 7, 2016, NULL, '2016-07-31', 1),
(434, 65, '', 'Se registro The Media Surface Demage en Findprod el 23 y en JIRAPRD el 12.\n\nSe registraron errores en AMCOD el 4 y 11. En Brokerp el 16. El DSSD el 18. En Finprod el 10, el 17, el 24 y el 29. En Fintest el 4 y el 11. En TST el 4.', 'http://drupal.caja.com/system/files/2016_02_Febrero.zip', 2, 2016, NULL, '2016-02-29', 1),
(435, 65, '', 'En AMCOD el 26. EN DES el 5. EN DSSD el 12. En FINTEST el 12 y el 26. En JIRADES el 05 y 12.  JIRADES 05 y 12. MARKET el 25. TST el 05.', 'http://drupal.caja.com/system/files/05_Mayo_2016.zip', 5, 2016, NULL, '2016-05-31', 1),
(436, 65, '', '', 'http://drupal.caja.com/system/files/12_Diciembre_2016.zip', 12, 2016, NULL, '2016-12-31', 1),
(437, 65, '', '', 'http://drupal.caja.com/system/files/10_Octubre_2016.zip', 10, 2016, NULL, '2016-10-31', 1),
(438, 66, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2016_08_0.zip', 9, 2016, NULL, '2016-09-02', 1),
(439, 66, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2016_05_1.zip', 6, 2016, NULL, '2016-06-02', 1),
(440, 66, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2016_11_1.zip', 12, 2016, NULL, '2016-12-06', 1),
(441, 66, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2016_02_0.zip', 3, 2016, NULL, '2016-03-04', 1),
(442, 66, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2016_08_0.zip', 9, 2016, NULL, '2016-09-02', 1),
(443, 66, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2016_05_1.zip', 6, 2016, NULL, '2016-06-02', 1),
(444, 66, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2016_11_1.zip', 12, 2016, NULL, '2016-12-06', 1),
(445, 66, 'No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2016_02_0.zip', 3, 2016, NULL, '2016-03-04', 1),
(446, 67, '', '', 'http://drupal.caja.com/system/files/2016_09.zip', 9, 2016, NULL, '2016-09-14', 1),
(447, 67, '', '', 'http://drupal.caja.com/system/files/2016_12.zip', 12, 2016, NULL, '2016-12-15', 1),
(448, 67, '', '', 'http://drupal.caja.com/system/files/2016_08.zip', 8, 2016, NULL, '2016-08-24', 1),
(449, 67, '', '', 'http://drupal.caja.com/system/files/2016_03.zip', 3, 2016, NULL, '2016-03-18', 1),
(450, 67, '', '', 'http://drupal.caja.com/system/files/2016_06.zip', 6, 2016, NULL, '2016-06-16', 1),
(451, 67, '', '', 'http://drupal.caja.com/system/files/2016_01_0.zip', 1, 2016, NULL, '2016-01-21', 1),
(452, 67, '', '', 'http://drupal.caja.com/system/files/2016_04_0.zip', 4, 2016, NULL, '2016-04-15', 1),
(453, 67, '', '', 'http://drupal.caja.com/system/files/2016_10.zip', 10, 2016, NULL, '2016-10-13', 1),
(454, 67, '', '', 'http://drupal.caja.com/system/files/2016_07.zip', 7, 2016, NULL, '2016-07-14', 1),
(455, 67, '', '', 'http://drupal.caja.com/system/files/2016_02.zip', 2, 2016, NULL, '2016-02-26', 1),
(456, 67, '', '', 'http://drupal.caja.com/system/files/2016_05_0.zip', 5, 2016, NULL, '2016-05-27', 1),
(457, 67, '', '', 'http://drupal.caja.com/system/files/2016_11.zip', 11, 2016, NULL, '2016-11-15', 1),
(458, 68, 'Se analizaron los desvios y los planes de accion a seguir.', 'Se procedio a informar al ComitÃ© los indicadores de Gestion.', 'En Drupal', 3, 2016, NULL, '2016-03-21', 1),
(459, 69, 'Se controla la informacion recibida.', 'Se solicitaron los reportes de mantenimiento del instrumental a la Gerencia de AdministraciÃ³n y Mantenimiento.', 'En Drupal', 3, 2016, NULL, '2016-03-31', 1),
(460, 70, 'Se controla la informacion recibida.', 'Se recibiÃ³ en forma semanal de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En Drupal.', 4, 2016, NULL, '2016-04-29', 1),
(461, 70, 'Se controla la informacion recibida.', 'Se recibiÃ³ de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En Drupal.', 1, 2016, NULL, '2016-01-31', 1),
(462, 70, 'Se controla la informacion recibida.-', 'Se recibiÃ³ en forma semanal de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En drupal', 7, 2016, NULL, '2016-07-29', 1),
(463, 70, 'Se controla la informacion recibida.', 'Se recibiÃ³ en forma semanal de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En Drupal', 10, 2016, NULL, '2016-10-31', 1),
(464, 71, 'Se evidencio el contenido de los escritorios por medio de fotografias.', 'Se procedio a verificar el estado de los escritorios de la Gcia de Seguridad de la informacion.', 'En Drupal', 11, 2016, NULL, '2016-11-29', 1),
(465, 71, 'Se comprobÃ³ que la accion de escritorios limpios', 'Se procedio a tomar evidencia de los escritorios del area de Seguridad de la informacion.', 'En Drupal', 7, 2016, NULL, '2016-07-06', 1),
(466, 71, 'Se evidencio el contenido de los escritorios por medio de fotografias.', 'Se procedio a tomar evidencia de los escritorios del area de Seguridad de la informacion.', 'En drupal', 4, 2016, NULL, '2016-04-07', 1),
(467, 72, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', '', 7, 2016, NULL, '2016-07-31', 1),
(468, 72, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', '', 1, 2016, NULL, '2016-01-31', 1),
(469, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 3, 2016, NULL, '2016-03-28', 1),
(470, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 11, 2016, NULL, '2016-11-30', 1),
(471, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 1, 2016, NULL, '2016-01-31', 1),
(472, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 9, 2016, NULL, '2016-09-30', 1),
(473, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 7, 2016, NULL, '2016-07-31', 1),
(474, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 4, 2016, NULL, '2016-04-26', 1),
(475, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 2, 2016, NULL, '2016-02-29', 1),
(476, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 10, 2016, NULL, '2016-10-31', 1),
(477, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 12, 2016, NULL, '2016-12-30', 1),
(478, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 8, 2016, NULL, '2016-08-31', 1),
(479, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 6, 2016, NULL, '2016-06-30', 1),
(480, 73, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 5, 2016, NULL, '2016-05-30', 1),
(481, 74, 'No se requiere accion.', 'No se observan intentos de ataque en el mes de Julio.', 'http://drupal.caja.com/system/files/2016_07.pdf', 8, 2016, NULL, '2016-08-12', 1),
(482, 74, 'No se requiere accion.', 'No se observan intentos de ataque en el mes de Septiembre.', 'http://drupal.caja.com/system/files/2016_09.pdf', 10, 2016, NULL, '2016-10-11', 1),
(483, 74, 'No se requiere accion.', 'No se observan intentos de ataque en el mes de Mayo.', 'http://drupal.caja.com/system/files/2016_05.pdf', 6, 2016, NULL, '2016-06-13', 1),
(484, 74, 'No se requiere accion.', 'Durante el mes de Febrero se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2016_02.pdf', 3, 2016, NULL, '2016-03-11', 1),
(485, 74, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2016_11.pdf', 12, 2016, NULL, '2016-12-12', 1),
(486, 74, 'No se requiere accion.', 'Durante el mes de Enero se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2016_01.pdf', 2, 2016, NULL, '2016-02-12', 1),
(487, 74, 'No se requiere accion.', 'Se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2016_10.pdf', 11, 2016, NULL, '2016-11-14', 1);
INSERT INTO `referencias` (`id_referencia`, `id_control`, `accion`, `observacion`, `evidencia`, `mes`, `ano`, `nro_referencia`, `modificacion`, `status`) VALUES
(488, 74, 'No se requiere accion.', 'No se observan intentos de ataque en el mes de Junio.', 'http://drupal.caja.com/system/files/2016_06.pdf', 7, 2016, NULL, '2016-07-12', 1),
(489, 74, 'No se requiere accion.', 'No se observan intentos de ataque en el mes de Agosto.', 'http://drupal.caja.com/system/files/2016_08.pdf', 9, 2016, NULL, '2016-09-12', 1),
(490, 74, 'No se requiere accion.', 'Durante el mes de Abril se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2016_04.pdf', 5, 2016, NULL, '2016-05-11', 1),
(491, 74, 'No se requiere accion.', 'Durante el mes de Marzo se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2016_03.pdf', 4, 2016, NULL, '2016-04-12', 1),
(492, 74, 'No se requiere accion.', 'Durante el mes de Diciembre se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/2015_12.pdf', 1, 2016, NULL, '2016-01-12', 1),
(493, 75, 'Se realizaron dos jornadas de concientizacion en conjunto con Compliance y se hablÃ³ sobre temas referidos a la seguridad de la informacion.', 'Se incorporÃ³ en la Intranet una nota sobre Phishing.\nSemana de integridad - Compliance', 'En Drupal.', 11, 2016, NULL, '2016-11-18', 1),
(494, 76, 'Se controla la info solicitada a IT.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En drupal', 7, 2016, NULL, '2016-07-29', 1),
(495, 76, 'Se controla la informacion recibida de MI.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal.', 4, 2016, NULL, '2016-04-29', 1),
(496, 76, 'Se controla la info solicitada a IT.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 8, 2016, NULL, '2016-08-31', 1),
(497, 76, 'Se reviso la informacion recavada de IT', 'Se solicita a la Gcia de IT los reportes para efectuar dicho control.', 'En Drupal', 2, 2016, NULL, '2016-02-29', 1),
(498, 76, 'Se controla la informacion solicitada.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 11, 2016, NULL, '2016-11-30', 1),
(499, 76, 'Se reviso la informacion recibida.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 10, 2016, NULL, '2016-10-31', 1),
(500, 76, 'Se controla la informacion recibida.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 9, 2016, NULL, '2016-09-30', 1),
(501, 76, 'Se controla la informacion solicitada a IT.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 12, 2016, NULL, '2016-12-30', 1),
(502, 76, 'Se reviso la informacion recavada de IT', 'Se solicita a la Gcia de IT los reportes para efectuar dicho control.', 'En drupal', 3, 2016, NULL, '2016-03-31', 1),
(503, 76, 'Se controla la informacion recibida.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 6, 2016, NULL, '2016-06-30', 1),
(504, 76, 'Se controla la informacion recibida de IT.', 'Se solicita a la Gcia de IT los reportes para efectuar dicho control.', 'En Drupal', 1, 2016, NULL, '2016-01-29', 1),
(505, 76, 'Se controla la informacion recibida de MI.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 5, 2016, NULL, '2016-05-31', 1),
(506, 77, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 12, 2016, NULL, '2016-12-30', 1),
(507, 77, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 2, 2016, NULL, '2016-02-29', 1),
(508, 77, 'Se evidenciaron y controlaron los cambio de acuerdo al procedimienteo vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 8, 2016, NULL, '2016-08-31', 1),
(509, 77, 'Se evidenciaron y controlaron los cambio de acuerdo al procedimienteo vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 5, 2016, NULL, '2016-05-31', 1),
(510, 77, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 3, 2016, NULL, '2016-03-31', 1),
(511, 77, 'Se evidenciaron y controlaron los cambio de acuerdo al procedimienteo vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'JIRA', 10, 2016, NULL, '2016-10-31', 1),
(512, 77, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 11, 2016, NULL, '2016-11-30', 1),
(513, 77, 'Se evidenciaron y controlaron los cambio de acuerdo al procedimienteo vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 9, 2016, NULL, '2016-09-30', 1),
(514, 77, 'Se evidenciaron y controlaron los cambio de acuerdo al procedimienteo vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA.', 4, 2016, NULL, '2016-04-29', 1),
(515, 77, 'Se evidenciaron y controlaron los cambio de acuerdo al procedimienteo vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 6, 2016, NULL, '2016-06-30', 1),
(516, 77, 'Se evidenciaron y controlaron los cambios de acuerdo con el procedimiento de gestion de cambios.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 1, 2016, NULL, '2016-01-29', 1),
(517, 77, 'Se evidenciaron y controlaron los cambio de acuerdo al procedimienteo vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 7, 2016, NULL, '2016-07-29', 1),
(518, 78, 'se verifico la existencia de un plan de accion de acuerdo al incidente.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 2, 2016, NULL, '2016-02-29', 1),
(519, 78, 'se verifico la existencia de un plan de accion de acuerdo al incidente.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GloblaSuite', 5, 2016, NULL, '2016-05-31', 1),
(520, 78, 'se verifico la existencia de un plan de accion de acuerdo al incidente.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 3, 2016, NULL, '2016-03-31', 1),
(521, 78, 'se verifico la existencia de un plan de accion de acuerdo al incidente.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 7, 2016, NULL, '2016-07-29', 1),
(522, 78, 'se verifico la existencia de un plan de accion de acuerdo al incidente.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 4, 2016, NULL, '2016-04-29', 1),
(523, 78, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 12, 2016, NULL, '2016-12-30', 1),
(524, 78, 'se verifico la existencia de un plan de accion de acuerdo al incidente.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 6, 2016, NULL, '2016-06-30', 1),
(525, 78, 'se verifico la existencia de un plan de accion de acuerdo al incidente.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'en GlobalSuite', 1, 2016, NULL, '2016-01-29', 1),
(526, 78, 'se verifico la existencia de un plan de accion de acuerdo al incidente.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GloblaSuite', 8, 2016, NULL, '2016-08-31', 1),
(527, 78, 'Se verifico la existencia de un plan de accion para los incidentes.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 10, 2016, NULL, '2016-10-31', 1),
(528, 78, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 11, 2016, NULL, '2016-11-30', 1),
(529, 78, 'Se verifico la existencia de un plan de accion para los incidentes.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GloblaSuite', 9, 2016, NULL, '2016-09-30', 1),
(530, 79, 'Se verifico la informacion enviada por la Gcia de IT.', 'Se procedio a enviar a la Gcia de IT el reporte con los usuarios administradores para que releven y comuniquen cualquier novedad al respecto.\nSe procedio a relevar los usuarios administradores de la Gcia de IT.', 'En Drupal', 12, 2016, NULL, '2016-12-22', 1),
(531, 79, 'Se verifico la informacion enviada por la Gcia de IT.', 'Se procedio a enviar a la Gcia de IT el reporte con los usuarios administradores para que releven y comuniquen cualquier novedad al respecto.\nSe procedio a relevar los usuarios administradores de la Gcia de IT.', 'En Drupal', 7, 2016, NULL, '2016-07-06', 1),
(532, 80, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\nLa Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 12, 2016, NULL, '2016-12-22', 1),
(533, 80, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\nLa Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 9, 2016, NULL, '2016-09-05', 1),
(534, 80, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\nLa Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 6, 2016, NULL, '2016-06-30', 1),
(535, 80, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\nLa Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 2, 2016, NULL, '2016-02-02', 1),
(536, 81, '', 'Se registraron Errores en FINTEST el 12 y el 1 en POLA5', 'http://drupal.caja.com/system/files/04_Abril_2017_0.zip', 4, 2017, NULL, '2017-04-30', 1),
(537, 81, '', 'No se encontraron Errores.', 'http://drupal.caja.com/system/files/2017_Mayo.zip', 5, 2017, NULL, '2017-05-31', 1),
(538, 81, '', 'No se registraron errores', 'http://drupal.caja.com/system/files/02_Febrero_2017.zip', 2, 2017, NULL, '2017-02-28', 1),
(539, 81, '', 'Se registraron errores en POLA5 el 11 y 30 en INFRAPRD el 25, en JORADES el 9.', 'http://drupal.caja.com/system/files/2017_Octubre.zip', 10, 2017, NULL, '2017-10-31', 1),
(540, 81, '', 'Se registraron errores en New Market el 21.', 'http://drupal.caja.com/system/files/2017_Agosto.zip', 8, 2017, NULL, '2017-08-31', 1),
(541, 81, '', 'Se registraron Errores en JIRADES el 5, en INSPIRE el 9.', 'http://drupal.caja.com/system/files/2017_Junio.zip', 6, 2017, NULL, '2017-06-30', 1),
(542, 81, '', 'Se registraron errores el 14 en DSS y el 30 en JIRADES', 'http://drupal.caja.com/system/files/03_Marzo_2017.zip', 3, 2017, NULL, '2017-03-31', 1),
(543, 81, '', 'Errores en DES 1 y en INFRAPRD el 13.', 'http://drupal.caja.com/system/files/2017_Noviembre.zip', 11, 2017, NULL, '2017-11-30', 1),
(544, 81, '', 'No se registraron Errores', 'http://drupal.caja.com/system/files/01_Enero_2017_0.zip', 1, 2017, NULL, '2017-01-31', 1),
(545, 81, '', 'Errores el 27 en RRHH y el 21 en MARKET. The Media Surface error en RRHH el 27.', 'http://drupal.caja.com/system/files/2017_Septiembre.zip', 9, 2017, NULL, '2017-09-30', 1),
(546, 81, '', 'No se registraron Errores.', 'http://drupal.caja.com/system/files/2017_Julio.zip', 7, 2017, NULL, '2017-07-31', 1),
(547, 81, '', 'Se evienciaron errores en TST el 6, en RRHH el 6 y 11. Pola5 el 11.', 'http://drupal.caja.com/system/files/2017_Diciembre.zip', 12, 2017, NULL, '2017-12-31', 1),
(548, 82, 'El servidor orion muestra consumos de cpu que superan al lÃ­mite definido en el procedimiento. Se solicita identificaciÃ³n de la causa al gerente de Infraestructura por correo electronico enviado el 19/12/2017 (en copia al CISO)', 'Se tomÃ³ una muestra de 15 dias seleccionando los impares verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capacidad (01', 'http://drupal.caja.com/system/files/2017_11_1.zip', 12, 2017, NULL, '2017-12-19', 1),
(549, 82, 'El servidor orion muestra consumos de cpu que superan al lÃ­mite definido en el procedimiento. Se solicita identificaciÃ³n de la causa al gerente de Infraestructura por correo electronico enviado el 12/10/2017 (en copia al CISO)', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2017_08_0.zip', 9, 2017, NULL, '2017-09-04', 1),
(550, 82, 'El servidor orion muestra consumos de memoria cercanos al lÃ­mite definido en el procedimiento. No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2017_02_1.zip', 3, 2017, NULL, '2017-03-03', 1),
(551, 82, 'El servidor orion muestra consumos de memoria y cpu cercanos al lÃ­mite definido en el procedimiento. No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2017_05_0.zip', 6, 2017, NULL, '2017-06-02', 1),
(552, 82, 'El servidor orion muestra consumos de cpu que superan al lÃ­mite definido en el procedimiento. Se solicita identificaciÃ³n de la causa al gerente de Infraestructura por correo electronico enviado el 19/12/2017 (en copia al CISO)', 'Se tomÃ³ una muestra de 15 dias seleccionando los impares verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capacidad (01', 'http://drupal.caja.com/system/files/2017_11_1.zip', 12, 2017, NULL, '2017-12-19', 1),
(553, 82, 'El servidor orion muestra consumos de memoria cercanos al lÃ­mite definido en el procedimiento. No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2017_02_1.zip', 3, 2017, NULL, '2017-03-03', 1),
(554, 82, 'El servidor orion muestra consumos de cpu que superan al lÃ­mite definido en el procedimiento. Se solicita identificaciÃ³n de la causa al gerente de Infraestructura por correo electronico enviado el 12/10/2017 (en copia al CISO)', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2017_08_0.zip', 9, 2017, NULL, '2017-09-04', 1),
(555, 82, 'El servidor orion muestra consumos de memoria y cpu cercanos al lÃ­mite definido en el procedimiento. No se requiere accion.', 'Se tomÃ³ una muestra de 15 dias seleccionados de manera aleatoria verificando lo siguiente:\n\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capac', 'http://drupal.caja.com/system/files/2017_05_0.zip', 6, 2017, NULL, '2017-06-02', 1),
(556, 83, '', '', 'http://drupal.caja.com/system/files/2017_08.zip', 8, 2017, NULL, '2017-08-11', 1),
(557, 83, '', '', 'http://drupal.caja.com/system/files/2017_06.zip', 6, 2017, NULL, '2017-06-14', 1),
(558, 83, '', '', 'http://drupal.caja.com/system/files/2017_11.zip', 11, 2017, NULL, '2017-11-30', 1),
(559, 83, '', '', 'http://drupal.caja.com/system/files/2017_05.zip', 5, 2017, NULL, '2017-05-10', 1),
(560, 83, '', '', 'http://drupal.caja.com/system/files/2017_01_0.zip', 1, 2017, NULL, '2017-01-12', 1),
(561, 83, '', '', 'http://drupal.caja.com/system/files/2017_03.zip', 3, 2017, NULL, '2017-03-15', 1),
(562, 83, '', '', 'http://drupal.caja.com/system/files/2017_12.zip', 12, 2017, NULL, '2017-12-15', 1),
(563, 83, '', '', 'http://drupal.caja.com/system/files/2017_09.zip', 9, 2017, NULL, '2017-09-14', 1),
(564, 83, '', '', 'http://drupal.caja.com/system/files/2017_10.zip', 10, 2017, NULL, '2017-10-31', 1),
(565, 83, '', '', 'http://drupal.caja.com/system/files/2017_02.zip', 2, 2017, NULL, '2017-02-15', 1),
(566, 83, '', '', 'http://drupal.caja.com/system/files/2017_07.zip', 7, 2017, NULL, '2017-07-12', 1),
(567, 83, '', '', 'http://drupal.caja.com/system/files/2017_04.zip', 4, 2017, NULL, '2017-04-12', 1),
(568, 84, 'Se analizaron los desvios y los planes de accion a seguir.', 'Se procedio a informar al ComitÃ© los indicadores de Gestion.', 'En QlikView', 3, 2017, NULL, '2017-03-31', 1),
(569, 85, 'Se controla la informacion recibida.', 'Se solicitaron los reportes de mantenimiento del instrumental a la Gerencia de AdministraciÃ³n y Mantenimiento.', 'En Drupal', 8, 2017, NULL, '2017-08-31', 1),
(570, 86, 'Se procedio al control de la evidencia recibida de Seguridad Fisica.', 'Se recibiÃ³ en forma semanal de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En Drupal', 4, 2017, NULL, '2017-04-30', 1),
(571, 86, 'Se procedio al control de la evidencia recibida de Seguridad Fisica.', 'Se recibiÃ³ en forma semanal de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En Drupal', 7, 2017, NULL, '2017-07-31', 1),
(572, 86, 'Se procedio al control de la evidencia recibida de Seguridad Fisica.', 'Se recibiÃ³ en forma semanal de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En Drupal', 1, 2017, NULL, '2017-01-31', 1),
(573, 86, 'Se procedio al control de la evidencia recibida de Seguridad Fisica.', 'Se recibiÃ³ en forma semanal de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En Drupal', 10, 2017, NULL, '2017-10-31', 1),
(574, 87, 'Se fotografiaron los escritorios de los recursos pertenecientes a la Gcia de Seguridad de la informacion.', 'Se procedio a verificar el estado de los escritorios de la Gcia de Seguridad de la InformaciÃ³', 'En Drupal', 4, 2017, NULL, '2017-04-26', 1),
(575, 88, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', '', 7, 2017, NULL, '2017-07-28', 1),
(576, 88, '', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', '', 1, 2017, NULL, '2017-01-31', 1),
(577, 89, 'Seguimiento del ticket', 'Se evidencio que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 12, 2017, NULL, '2017-12-28', 1),
(578, 89, 'Seguimiento del ticket', 'Se evidencio que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 7, 2017, NULL, '2017-07-28', 1),
(579, 89, 'Seguimiento del ticket', 'Se evidencio que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 9, 2017, NULL, '2017-09-29', 1),
(580, 89, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 4, 2017, NULL, '2017-04-30', 1),
(581, 89, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 2, 2017, NULL, '2017-02-28', 1),
(582, 89, 'Seguimiento del ticket', 'Se evidencio que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 6, 2017, NULL, '2017-06-28', 1),
(583, 89, 'Seguimiento del ticket', 'Se evidencio que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 11, 2017, NULL, '2017-11-30', 1),
(584, 89, 'Seguimiento del ticket', 'Se evidencio que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 10, 2017, NULL, '2017-10-31', 1),
(585, 89, 'Se reporta el bug ITGCI-19583.', 'Se evidencio que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 5, 2017, NULL, '2017-05-29', 1),
(586, 89, 'Seguimiento del ticket', 'Se evidencio que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 8, 2017, NULL, '2017-08-30', 1),
(587, 89, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 3, 2017, NULL, '2017-03-31', 1),
(588, 89, '', 'Se registran todos lo eventos controlados en Sentinel', 'Se encuentra en la aplicaciÃ³n Sentinel', 1, 2017, NULL, '2017-01-31', 1),
(589, 90, 'No se requiere accion.', 'Durante el mes de Marzo se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Marzo2017.zip', 3, 2017, NULL, '2017-03-31', 1),
(590, 90, 'No se requiere accion.', 'Durante el mes de Noviembre se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Noviembre_2017.zip', 11, 2017, NULL, '2017-11-30', 1),
(591, 90, 'No se requiere accion.', 'Durante el mes de Septiembre se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Septiembre_2017.zip', 9, 2017, NULL, '2017-09-30', 1),
(592, 90, 'No se requiere accion.', 'Durante el mes de Julio se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Julio_2017.zip', 7, 2017, NULL, '2017-07-31', 1),
(593, 90, 'No se requiere accion.', 'Durante el mes de Abril se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Abril2017.zip', 4, 2017, NULL, '2017-04-30', 1),
(594, 90, 'No se requiere accion.', 'Durante el mes de Febrero se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Febrero2017.zip', 2, 2017, NULL, '2017-02-28', 1),
(595, 90, 'No se requiere accion.', 'Durante el mes de Diciembre se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Diciembre_2017.zip', 12, 2017, NULL, '2017-12-31', 1),
(596, 90, 'No se requiere accion.', 'Durante el mes de Octubre se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Octubre_2017.zip', 10, 2017, NULL, '2017-10-31', 1),
(597, 90, 'No se requiere accion.', 'Durante el mes de Agosto se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Agosto_2017.zip', 8, 2017, NULL, '2017-08-31', 1),
(598, 90, 'No se requiere accion.', 'Durante el mes de Junio se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Junio_2017.zip', 6, 2017, NULL, '2017-06-30', 1),
(599, 90, 'No se requiere accion.', 'Durante el mes de Enero se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Enero2017.zip', 1, 2017, NULL, '2017-01-31', 1),
(600, 90, 'No se requiere accion.', 'Durante el mes de Mayo se observan intentos de ataque de red y de aplicaciÃ³n que son detectados y bloqueados.', 'http://drupal.caja.com/system/files/Mayo_2017.zip', 5, 2017, NULL, '2017-05-31', 1),
(601, 91, 'Se incorporÃ³ en la Intranet una nota sobre Como cuidar nuestros datos.', 'Se analizaron temas relacionados a seguridad de datos para informar a empleados.', 'En Drupal.', 8, 2017, NULL, '2017-08-18', 1),
(602, 92, 'Se controlo la informacion recibida de IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 11, 2017, NULL, '2017-11-30', 1),
(603, 92, 'Se controla la informacion recibida de la Gcia de IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En drupal', 5, 2017, NULL, '2017-05-31', 1),
(604, 92, 'Se controla la informacion recibida de la Gcia de IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 1, 2017, NULL, '2017-01-31', 1),
(605, 92, 'Se controlo la informacion recibida de IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En drupal', 10, 2017, NULL, '2017-10-31', 1),
(606, 92, 'Se controla la informacion recibida de la Gcia de IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 3, 2017, NULL, '2017-03-31', 1),
(607, 92, 'Se controlo la informacion recibida de la gernecia de It', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En drupal', 8, 2017, NULL, '2017-08-31', 1),
(608, 92, 'Se controlo la informacion recibida de IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 12, 2017, NULL, '2017-12-29', 1),
(609, 92, 'Se controla la informacion recibida de la Gcia de IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 6, 2017, NULL, '2017-06-30', 1),
(610, 92, 'Se controla la informacion recibida de la Gcia de IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 4, 2017, NULL, '2017-04-30', 1),
(611, 92, 'Se controlo la info recibida desde IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En drupal', 9, 2017, NULL, '2017-09-29', 1),
(612, 92, 'Se controla la informacion recibida de la Gcia de IT', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 2, 2017, NULL, '2017-02-28', 1),
(613, 92, 'Se controla la informacion eviada por la gerencia de IT.', 'Se solicita a la Gerencia de IT los reportes para efectuar dicho control.', 'En drupal', 7, 2017, NULL, '2017-07-31', 1),
(614, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 2, 2017, NULL, '2017-02-28', 1),
(615, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 10, 2017, NULL, '2017-10-31', 1),
(616, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En jira', 8, 2017, NULL, '2017-08-31', 1),
(617, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 6, 2017, NULL, '2017-06-30', 1),
(618, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 11, 2017, NULL, '2017-11-30', 1),
(619, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 9, 2017, NULL, '2017-09-29', 1),
(620, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 1, 2017, NULL, '2017-01-31', 1),
(621, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'en Jira', 7, 2017, NULL, '2017-07-31', 1),
(622, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 5, 2017, NULL, '2017-05-31', 1),
(623, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 3, 2017, NULL, '2017-03-31', 1),
(624, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 12, 2017, NULL, '2017-12-29', 1),
(625, 93, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 4, 2017, NULL, '2017-04-30', 1),
(626, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 4, 2017, NULL, '2017-04-30', 1),
(627, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 1, 2017, NULL, '2017-01-31', 1),
(628, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 12, 2017, NULL, '2017-12-29', 1),
(629, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 10, 2017, NULL, '2017-10-31', 1),
(630, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 3, 2017, NULL, '2017-03-31', 1),
(631, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 8, 2017, NULL, '2017-08-31', 1),
(632, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 6, 2017, NULL, '2017-06-30', 1),
(633, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 2, 2017, NULL, '2017-02-28', 1),
(634, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 11, 2017, NULL, '2017-11-30', 1),
(635, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 9, 2017, NULL, '2017-09-29', 1),
(636, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 7, 2017, NULL, '2017-07-31', 1),
(637, 94, 'Se verifico la existencia de un plan de accion.', 'Se controla en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 5, 2017, NULL, '2017-05-31', 1),
(638, 95, 'Se verifico la informacion enviada por la Gcia de IT.', 'Se procedio a enviar a la Gcia de IT el reporte con los usuarios administradores para que releven y comuniquen cualquier novedad al respecto.\nSe procedio a relevar los usuarios administradores de la Gcia de IT.', 'En Drupal', 12, 2017, NULL, '2017-12-29', 1),
(639, 95, 'Se verifico la informacion enviada por la Gcia de IT.', 'Se procedio a enviar a la Gcia de IT el reporte con los usuarios administradores para que releven y comuniquen cualquier novedad al respecto.\nSe procedio a relevar los usuarios administradores de la Gcia de IT.', 'En Drupal', 7, 2017, NULL, '2017-07-31', 1),
(640, 96, 'Se procedio a elimar los usuarios indicados por RRHH.', 'La Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 6, 2017, NULL, '2017-06-30', 1),
(641, 96, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\nLa Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En drupal', 10, 2017, NULL, '2017-10-31', 1),
(642, 96, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\nLa Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 3, 2017, NULL, '2017-03-31', 1),
(643, 96, 'Se procedio a elimar los usuarios indicados por RRHH.', 'La Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 12, 2017, NULL, '2017-12-29', 1),
(644, 96, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\nLa Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 11, 2017, NULL, '2017-11-30', 1),
(645, 96, 'Se procedio a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\nLa Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 9, 2017, NULL, '2017-09-29', 1),
(646, 97, '', 'Se creo la NC, Id. 180419140337, en GlobalSuite.', '', 1, 2017, NULL, '2017-01-31', 1),
(647, 97, '', 'Se creo la NC, Id. 180419140337, en GlobalSuite.', '', 7, 2017, NULL, '2017-07-31', 1),
(648, 98, '.', 'Errores en POLA5 el 16 y en Market el 18.', 'http://drupal.caja.com/system/files/2018_Enero_0.zip', 1, 2018, NULL, '2018-06-04', 1),
(649, 98, '.', 'Errores en JIRADES el 15, DES el 20, MARKET el 22 y en RRHH el 27 y 28', 'http://drupal.caja.com/system/files/2018_Febrero.zip', 2, 2018, NULL, '2018-06-04', 1),
(650, 98, '.', 'Se encontraron Errores sobre Market 08, Pola5 13.\r\n\r\nMedia Surface en Pola 5 el 13.', 'http://drupal.caja.com/system/files/032018.zip', 3, 2018, NULL, '2018-07-02', 1),
(651, 98, '.', 'Media Surface en POLA5 el 13.\r\n\r\nErrores en Market el 08 y 26. Pola5 el 13.', 'http://drupal.caja.com/system/files/042018.zip', 4, 2018, NULL, '2018-07-02', 1),
(652, 98, '.', 'Errores en Market el 26.', 'http://drupal.caja.com/system/files/052018.zip', 5, 2018, NULL, '2018-07-02', 1),
(653, 98, '.', 'Sin Errores', 'http://drupal.caja.com/system/files/062018.zip', 6, 2018, NULL, '2018-07-02', 1),
(654, 98, 'NULL', 'NULL', 'NULL', 7, 2018, NULL, '2018-05-09', 2),
(655, 98, 'NULL', 'NULL', 'NULL', 8, 2018, NULL, '2018-05-09', 2),
(656, 98, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(657, 98, 'NULL', 'NULL', 'NULL', 10, 2018, NULL, '2018-05-09', 2),
(658, 98, 'NULL', 'NULL', 'NULL', 11, 2018, NULL, '2018-05-09', 2),
(659, 98, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(660, 99, 'El servidor orion muestra consumos de cpu que superan al lÃ­mite definido en el procedimiento. Se aguarda respuesta del gerente de Infraestructura.', 'Se tomÃ³ una muestra de 14 dÃ­as seleccionando los impares verificando lo siguiente:\r\n\r\n1) El servidor identificado como matrix cuya direcciÃ³n ip es la 172.17.1.20 cumple con los parÃ¡metros definidos en el procedimiento de Gestion de la Capacidad (017.04.00).\r\n\r\n2) El servidor identificado como orion cuya direcciÃ³n IP es la 172.17.1.23 excede los umbrales definidos en el procedimiento de Gestion de la Capacidad (017.04.00).', 'http://drupal.caja.com/system/files/2018_02_1.zip', 3, 2018, NULL, '2018-06-05', 1),
(661, 99, 'NULL', 'NULL', 'NULL', 6, 2018, NULL, '2018-05-09', 2),
(662, 99, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(663, 99, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(664, 100, 'Se declara la NC, Id. 180419140337, en GlobalSuite.', '.', '.', 1, 2018, NULL, '2018-06-04', 1),
(665, 100, 'NULL', 'NULL', 'NULL', 7, 2018, NULL, '2018-05-09', 2),
(666, 101, 'Seguimiento del ticket', 'Se evidenciÃ³ que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 1, 2018, NULL, '2018-06-05', 1),
(667, 101, 'Seguimiento del ticket', 'Se evidenciÃ³ que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 2, 2018, NULL, '2018-06-05', 1),
(668, 101, 'Seguimiento del ticket', 'Se evidenciÃ³ que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 3, 2018, NULL, '2018-06-05', 1),
(669, 101, 'Seguimiento del ticket', 'Se evidenciÃ³ que no se registra la totalidad de intentos de ataque detectados por los FWs en Sentinel.', 'http://jira.caja.com:20000/browse/ITGCI-19583', 4, 2018, NULL, '2018-06-05', 1),
(670, 101, 'NULL', 'NULL', 'NULL', 5, 2018, NULL, '2018-05-09', 2),
(671, 101, 'NULL', 'NULL', 'NULL', 6, 2018, NULL, '2018-05-09', 2),
(672, 101, 'NULL', 'NULL', 'NULL', 7, 2018, NULL, '2018-05-09', 2),
(673, 101, 'NULL', 'NULL', 'NULL', 8, 2018, NULL, '2018-05-09', 2),
(674, 101, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(675, 101, 'NULL', 'NULL', 'NULL', 10, 2018, NULL, '2018-05-09', 2),
(676, 101, 'NULL', 'NULL', 'NULL', 11, 2018, NULL, '2018-05-09', 2),
(677, 101, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(678, 102, '.', '.', 'http://drupal.caja.com/system/files/2018_01_0.zip', 1, 2018, NULL, '2018-06-04', 1),
(679, 102, '.', '.', 'http://drupal.caja.com/system/files/2018_02.zip', 2, 2018, NULL, '2018-06-04', 1),
(680, 102, '.', '.', 'http://drupal.caja.com/system/files/2018_03.zip', 3, 2018, NULL, '2018-06-04', 1),
(681, 102, '.', '.', 'http://drupal.caja.com/system/files/2018_04.zip', 4, 2018, NULL, '2018-06-04', 1),
(682, 102, '.', '.', 'http://drupal.caja.com/system/files/2018_05.zipL', 5, 2018, NULL, '2018-06-04', 1),
(683, 102, '.', '.', 'http://drupal.caja.com/system/files/2018_06.zip', 6, 2018, NULL, '2018-08-03', 1),
(684, 102, '.', '.', 'http://drupal.caja.com/system/files/2018_07.zip', 7, 2018, NULL, '2018-08-03', 1),
(685, 102, 'NULL', 'NULL', 'NULL', 8, 2018, NULL, '2018-05-09', 2),
(686, 102, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(687, 102, 'NULL', 'NULL', 'NULL', 10, 2018, NULL, '2018-05-09', 2),
(688, 102, 'NULL', 'NULL', 'NULL', 11, 2018, NULL, '2018-05-09', 2),
(689, 102, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(690, 103, 'NULL', 'NULL', 'NULL', 1, 2018, NULL, '2018-05-09', 2),
(691, 104, '.', 'Existe software instalado y autorizado por TecnologÃ­a InformÃ¡tica no incluido dentro del Listado de Aplicaciones Corporativas.', '.', 1, 2018, NULL, '2018-06-04', 1),
(692, 104, 'NULL', 'NULL', 'NULL', 7, 2018, NULL, '2018-05-09', 2),
(693, 105, '.', 'Se registran todos lo eventos controlados en Sentinel.', 'Se encuentra en la aplicaciÃ³n Sentinel', 1, 2018, NULL, '2018-06-05', 1),
(694, 105, '.', 'Se registran todos lo eventos controlados en Sentinel.', 'Se encuentra en la aplicaciÃ³n Sentinel', 2, 2018, NULL, '2018-06-05', 1),
(695, 105, '.', 'Se registran todos lo eventos controlados en Sentinel.', 'Se encuentra en la aplicaciÃ³n Sentinel', 3, 2018, NULL, '2018-06-05', 1),
(696, 105, 'N/A', 'Se registran todos lo eventos controlados en Sentinel.', 'Se encuentra en la aplicaciÃ³n Sentinel', 4, 2018, NULL, '2018-07-02', 1),
(697, 105, 'N/A', 'Se registran todos lo eventos controlados en Sentinel.', 'Se registran todos lo eventos controlados en Sentinel.', 5, 2018, NULL, '2018-07-02', 1),
(698, 105, 'N/A', 'Se registran todos lo eventos controlados en Sentinel.', 'Se encuentra en la aplicaciÃ³n Sentinel', 6, 2018, NULL, '2018-07-02', 1),
(699, 105, 'N/A', 'Se registran todos lo eventos controlados en Sentinel.', 'Se encuentra en la aplicaciÃ³n Sentinel', 7, 2018, NULL, '2018-07-02', 1),
(700, 105, 'NULL', 'NULL', 'NULL', 8, 2018, NULL, '2018-05-09', 2),
(701, 105, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(702, 105, 'NULL', 'NULL', 'NULL', 10, 2018, NULL, '2018-05-09', 2),
(703, 105, 'NULL', 'NULL', 'NULL', 11, 2018, NULL, '2018-05-09', 2),
(704, 105, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(705, 106, 'Se verificÃ³ la existencia de un plan de acciÃ³n.', 'Se controlÃ³ en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 1, 2018, NULL, '2018-06-05', 1),
(706, 106, 'Se verificÃ³ la existencia de un plan de acciÃ³n.', 'Se controlÃ³ en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 2, 2018, NULL, '2018-05-09', 1),
(707, 106, 'Se verificÃ³ la existencia de un plan de acciÃ³n.', 'Se controlÃ³ en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 3, 2018, NULL, '2018-05-09', 1),
(708, 106, 'Se verificÃ³ la existencia de un plan de acciÃ³n.', 'Se controlÃ³ en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 4, 2018, NULL, '2018-05-09', 1),
(709, 106, 'Se verificÃ³ la existencia de un plan de acciÃ³n.', 'Se controlÃ³ en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 5, 2018, NULL, '2018-07-17', 1),
(710, 106, 'Se verificÃ³ la existencia de un plan de acciÃ³n.', 'Se controlÃ³ en GlobalSuite el registro y estado de incidentes solicitados a IT.', 'En GlobalSuite', 6, 2018, NULL, '2018-07-17', 1),
(711, 106, 'NULL', 'NULL', 'NULL', 7, 2018, NULL, '2018-05-09', 2),
(712, 106, 'NULL', 'NULL', 'NULL', 8, 2018, NULL, '2018-05-09', 2),
(713, 106, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(714, 106, 'NULL', 'NULL', 'NULL', 10, 2018, NULL, '2018-05-09', 2),
(715, 106, 'NULL', 'NULL', 'NULL', 11, 2018, NULL, '2018-05-09', 2),
(716, 106, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(717, 107, 'Se dejÃ³ la evidencia fotografica de los escritorios de los recursos pertenecientes a la Gcia de Seguridad de la InformaciÃ³n.', 'Se procediÃ³ a verificar el estado de los escritorios de la Gcia de Seguridad de la InformaciÃ³n.', 'En Drupal', 4, 2018, NULL, '2018-06-05', 1),
(718, 107, 'Se procediÃ³ a efectuar el control de los escritorios del sector GSI', 'Se procediÃ³ a verificar el estado de los escritorios de la Gcia de Seguridad de la InformaciÃ³n.', 'En Drupal', 6, 2018, NULL, '2018-07-17', 1),
(719, 107, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(720, 107, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(721, 108, 'Se verificÃ³ la informaciÃ³n enviada por la Gcia de IT. Se relevÃ³ y modificÃ³ donde corresponde la informaciÃ³n enviada por la Gcia de Sucursales.', 'Se procediÃ³ a enviar a la Gcia de IT el reporte con los usuarios administradores para que releven y comuniquen cualquier novedad al respecto.\r\nSe procediÃ³ a relevar los usuarios administradores de la Gcia de IT.\r\nSe procediÃ³ a enviar a la Gcia de Sucursales el reporte con los usuarios de Polaris para que ratifiquen o rectifiquen el mismo.', 'En Drupal.', 6, 2018, NULL, '2018-07-17', 1),
(722, 108, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(723, 109, 'Se procediÃ³ al control de la evidencia recibida de Seguridad Fisica.', 'Se recibiÃ³ en forma semanal de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En Drupal', 1, 2018, NULL, '2018-06-05', 1),
(724, 109, 'Se procediÃ³ al control de la evidencia recibida de Seguridad Fisica.', 'Se recibiÃ³ en forma semanal de la Gcia de Seguridad Fisica los reportes de accesos al CPD y CPA.', 'En drupal', 4, 2018, NULL, '2018-06-05', 1),
(725, 109, 'NULL', 'NULL', 'NULL', 7, 2018, NULL, '2018-05-09', 2),
(726, 109, 'NULL', 'NULL', 'NULL', 10, 2018, NULL, '2018-05-09', 2),
(727, 110, 'Se controlo la informaciÃ³n recibida de IT', 'Se solicitÃ³ a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 1, 2018, NULL, '2018-06-05', 1),
(728, 110, 'Se controlo la informaciÃ³n recibida de IT', 'Se solicitÃ³ a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 2, 2018, NULL, '2018-05-09', 1),
(729, 110, 'Se controlo la informaciÃ³n recibida de IT', 'Se solicitÃ³ a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 3, 2018, NULL, '2018-05-09', 1),
(730, 110, 'Se controlo la informaciÃ³n recibida de IT', 'Se solicitÃ³ a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 4, 2018, NULL, '2018-05-09', 1),
(731, 110, 'Se controlÃ³ la informaciÃ³n enviada por MI. (IT)', 'Se solicitÃ³ a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 5, 2018, NULL, '2018-07-17', 1),
(732, 110, 'Se controlÃ³ la informaciÃ³n enviada por MI. (IT)', 'Se solicitÃ³ a la Gerencia de IT los reportes para efectuar dicho control.', 'En Drupal', 6, 2018, NULL, '2018-07-17', 1),
(733, 110, 'NULL', 'NULL', 'NULL', 7, 2018, NULL, '2018-05-09', 2),
(734, 110, 'NULL', 'NULL', 'NULL', 8, 2018, NULL, '2018-05-09', 2),
(735, 110, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(736, 110, 'NULL', 'NULL', 'NULL', 10, 2018, NULL, '2018-05-09', 2),
(737, 110, 'NULL', 'NULL', 'NULL', 11, 2018, NULL, '2018-05-09', 2),
(738, 110, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(739, 111, 'Se controlÃ³ la informaciÃ³n suministrada respecto de los Generadores, UPS y Aire Acondicionado.', 'Se solicitaron los reportes de mantenimiento del instrumental a la Gerencia de AdministraciÃ³n y Mantenimiento.', 'En Drupal', 5, 2018, NULL, '2018-06-05', 1),
(740, 112, 'Se procediÃ³ a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\r\nLa Gcia de RRHH envia los reportes de las novedades de Bajas de empleados.', 'En Drupal', 3, 2018, NULL, '2018-06-05', 1),
(741, 112, 'Se procediÃ³ a elimar los usuarios indicados por RRHH y se inhabilitaron y eliminaron los usuarios correspondientes a los controles de dicho proceso', 'Se obtuvieron los reportes necesarios para efectuar dicho control.\r\nLa Gcia de RRHH envÃ­a los reportes de las novedades de Bajas de empleados.', 'En Drupal', 6, 2018, NULL, '2018-07-17', 1),
(742, 112, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(743, 112, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(744, 113, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 1, 2018, NULL, '2018-06-05', 1),
(745, 113, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 2, 2018, NULL, '2018-05-09', 1),
(746, 113, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 3, 2018, NULL, '2018-05-09', 1),
(747, 113, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 4, 2018, NULL, '2018-05-09', 1),
(748, 113, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En Jira', 5, 2018, NULL, '2018-07-17', 1),
(749, 113, 'Se evidenciaron y se controlaron los cambios de acuerdo al procedimiento vigente.', 'La Gerencia de IT carga los cambios en JIRA con su respectiva tarea y workflow de autorizaciones.', 'En JIRA', 6, 2018, NULL, '2018-07-17', 1),
(750, 113, 'NULL', 'NULL', 'NULL', 7, 2018, NULL, '2018-05-09', 2),
(751, 113, 'NULL', 'NULL', 'NULL', 8, 2018, NULL, '2018-05-09', 2),
(752, 113, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2);
INSERT INTO `referencias` (`id_referencia`, `id_control`, `accion`, `observacion`, `evidencia`, `mes`, `ano`, `nro_referencia`, `modificacion`, `status`) VALUES
(753, 113, 'NULL', 'NULL', 'NULL', 10, 2018, NULL, '2018-05-09', 2),
(754, 113, 'NULL', 'NULL', 'NULL', 11, 2018, NULL, '2018-05-09', 2),
(755, 113, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(756, 114, 'Se analizaron los desvios y los planes de acciÃ³n a seguir.', 'Se procediÃ³ a informar al ComitÃ© los indicadores de gestiÃ³n.', 'En QV', 3, 2018, NULL, '2018-06-05', 1),
(757, 114, 'Se analizaron los desvios y los planes de acciÃ³n a seguir.', 'Se procediÃ³ a informar al ComitÃ© los indicadores de gestiÃ³n', 'En QV', 6, 2018, NULL, '2018-07-17', 1),
(758, 114, 'NULL', 'NULL', 'NULL', 9, 2018, NULL, '2018-05-09', 2),
(759, 114, 'NULL', 'NULL', 'NULL', 12, 2018, NULL, '2018-05-09', 2),
(760, 115, 'Se procediÃ³ a realizar 2 charlas en el Auditorio al personal de la CÃ­a sobre Phishing. Se recordÃ³ y comunicÃ³ por  mail de RRHH a todo el personal  el uso del Portal de Identidad.', 'Se analizaron temas relacionados a seguridad de datos para informar a empleados.', 'En Drupal', 1, 2018, NULL, '2018-07-17', 1);

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
  MODIFY `id_control` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT de la tabla `referencias`
--
ALTER TABLE `referencias`
  MODIFY `id_referencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('gs', '[{\"db\":\"gs\",\"table\":\"referencias\"},{\"db\":\"gs\",\"table\":\"controles\"},{\"db\":\"gs\",\"table\":\"estados\"}]'),
('phpmyadmin', '[{\"db\":\"gs\",\"table\":\"controles\"},{\"db\":\"gs\",\"table\":\"referencias\"},{\"db\":\"gs\",\"table\":\"estados\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('gs', 'gs', 'controles', '{\"sorted_col\":\"`controles`.`ano`  DESC\"}', '2018-07-17 19:07:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('gs', '2018-05-14 18:37:06', '{\"lang\":\"es\",\"collation_connection\":\"utf8mb4_unicode_ci\"}'),
('phpmyadmin', '2018-05-14 17:59:15', '{\"lang\":\"es\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
