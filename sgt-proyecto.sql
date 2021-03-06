-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2013 a las 01:06:28
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sgt-proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE IF NOT EXISTS `especialidad` (
  `idespecialidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `activa` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idespecialidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`idespecialidad`, `nombre`, `activa`) VALUES
(1, 'OdontologÃ­a', 1),
(4, 'CardiologÃ­a', 0),
(5, 'ReumatologÃ­a', 1),
(6, 'DermatologÃ­a', 1),
(7, 'RadiologÃ­a', 1),
(8, 'UrologÃ­a', 1),
(9, 'OftalmologÃ­a', 1),
(10, 'GinecologÃ­a', 1),
(11, 'pedagogia', 1),
(12, 'Quinesiologia', 1),
(13, 'Cirujia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` varchar(10) NOT NULL,
  `desde` time NOT NULL,
  `hasta` time NOT NULL,
  `id_med` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_med` (`id_med`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id`, `dia`, `desde`, `hasta`, `id_med`, `activo`) VALUES
(31, 'lun', '11:00:00', '11:30:00', 28, 1),
(32, 'lun', '11:30:00', '12:00:00', 28, 1),
(33, 'lun', '12:00:00', '12:30:00', 28, 1),
(34, 'lun', '12:30:00', '13:00:00', 28, 1),
(35, 'lun', '13:00:00', '13:30:00', 28, 1),
(36, 'lun', '13:30:00', '14:00:00', 28, 1),
(37, 'lun', '14:00:00', '14:30:00', 28, 1),
(38, 'lun', '14:30:00', '15:00:00', 28, 1),
(39, 'lun', '15:00:00', '15:30:00', 28, 1),
(40, 'lun', '15:30:00', '16:00:00', 28, 1),
(41, 'lun', '16:00:00', '16:30:00', 28, 1),
(42, 'lun', '16:30:00', '17:00:00', 28, 1),
(43, 'lun', '17:00:00', '17:30:00', 28, 1),
(44, 'lun', '17:30:00', '18:00:00', 28, 1),
(45, 'mar', '14:00:00', '14:30:00', 28, 1),
(46, 'mar', '14:30:00', '15:00:00', 28, 1),
(47, 'mar', '15:00:00', '15:30:00', 28, 1),
(48, 'mar', '15:30:00', '16:00:00', 28, 1),
(49, 'mar', '16:00:00', '16:30:00', 28, 1),
(50, 'mar', '16:30:00', '17:00:00', 28, 1),
(51, 'mar', '17:00:00', '17:30:00', 28, 1),
(52, 'mar', '17:30:00', '18:00:00', 28, 1),
(53, 'mar', '18:00:00', '18:30:00', 28, 1),
(54, 'mar', '18:30:00', '19:00:00', 28, 1),
(55, 'mie', '15:00:00', '15:30:00', 29, 1),
(56, 'mie', '15:30:00', '16:00:00', 29, 1),
(57, 'mie', '16:00:00', '16:30:00', 29, 1),
(58, 'mie', '16:30:00', '17:00:00', 29, 1),
(59, 'mie', '17:00:00', '17:30:00', 29, 1),
(60, 'mie', '17:30:00', '18:00:00', 29, 1),
(61, 'lun', '17:00:00', '17:30:00', 30, 1),
(62, 'lun', '17:30:00', '18:00:00', 30, 1),
(63, 'lun', '18:00:00', '18:30:00', 30, 1),
(64, 'lun', '18:30:00', '19:00:00', 30, 1),
(65, 'lun', '10:00:00', '10:30:00', 31, 0),
(66, 'lun', '10:30:00', '11:00:00', 31, 0),
(67, 'mar', '16:00:00', '16:30:00', 31, 1),
(68, 'mar', '16:30:00', '17:00:00', 31, 1),
(69, 'mar', '17:00:00', '17:30:00', 31, 1),
(70, 'mar', '17:30:00', '18:00:00', 31, 1),
(71, 'mar', '18:00:00', '18:30:00', 31, 1),
(72, 'mar', '18:30:00', '19:00:00', 31, 1),
(73, 'lun', '11:00:00', '11:30:00', 32, 1),
(74, 'lun', '11:30:00', '12:00:00', 32, 1),
(75, 'lun', '12:00:00', '12:30:00', 32, 1),
(76, 'lun', '12:30:00', '13:00:00', 32, 1),
(77, 'lun', '13:00:00', '13:30:00', 32, 1),
(78, 'lun', '13:30:00', '14:00:00', 32, 1),
(79, 'lun', '14:00:00', '14:30:00', 32, 1),
(80, 'lun', '14:30:00', '15:00:00', 32, 1),
(81, 'lun', '15:00:00', '15:30:00', 32, 1),
(82, 'lun', '15:30:00', '16:00:00', 32, 1),
(83, 'mie', '10:00:00', '10:30:00', 32, 1),
(84, 'mie', '10:30:00', '11:00:00', 32, 1),
(85, 'mie', '11:00:00', '11:30:00', 32, 1),
(86, 'mie', '11:30:00', '12:00:00', 32, 1),
(87, 'vie', '14:00:00', '14:30:00', 32, 1),
(88, 'vie', '14:30:00', '15:00:00', 32, 1),
(89, 'vie', '15:00:00', '15:30:00', 32, 1),
(90, 'vie', '15:30:00', '16:00:00', 32, 1),
(91, 'vie', '16:00:00', '16:30:00', 32, 1),
(92, 'vie', '16:30:00', '17:00:00', 32, 1),
(93, 'vie', '17:00:00', '17:30:00', 32, 1),
(94, 'vie', '17:30:00', '18:00:00', 32, 1),
(173, 'lun', '12:00:00', '12:30:00', 47, 1),
(174, 'lun', '12:30:00', '13:00:00', 47, 1),
(175, 'lun', '13:00:00', '13:30:00', 47, 1),
(176, 'lun', '13:30:00', '14:00:00', 47, 1),
(177, 'lun', '14:00:00', '14:30:00', 47, 1),
(178, 'lun', '14:30:00', '15:00:00', 47, 1),
(179, 'lun', '15:00:00', '15:30:00', 47, 1),
(180, 'lun', '15:30:00', '16:00:00', 47, 1),
(181, 'lun', '16:00:00', '16:30:00', 47, 1),
(182, 'lun', '16:30:00', '17:00:00', 47, 1),
(183, 'lun', '17:00:00', '17:30:00', 47, 1),
(184, 'lun', '17:30:00', '18:00:00', 47, 1),
(185, 'lun', '18:00:00', '18:30:00', 47, 1),
(186, 'lun', '18:30:00', '19:00:00', 47, 1),
(187, 'mar', '13:00:00', '13:30:00', 47, 1),
(188, 'mar', '13:30:00', '14:00:00', 47, 1),
(189, 'mar', '14:00:00', '14:30:00', 47, 1),
(190, 'mar', '14:30:00', '15:00:00', 47, 1),
(191, 'mar', '15:00:00', '15:30:00', 47, 1),
(192, 'mar', '15:30:00', '16:00:00', 47, 1),
(193, 'mar', '16:00:00', '16:30:00', 47, 1),
(194, 'mar', '16:30:00', '17:00:00', 47, 1),
(195, 'mar', '17:00:00', '17:30:00', 47, 1),
(196, 'mar', '17:30:00', '18:00:00', 47, 1),
(197, 'mie', '12:00:00', '12:30:00', 47, 1),
(198, 'mie', '12:30:00', '13:00:00', 47, 1),
(199, 'mie', '13:00:00', '13:30:00', 47, 1),
(200, 'mie', '13:30:00', '14:00:00', 47, 1),
(201, 'mie', '14:00:00', '14:30:00', 47, 1),
(202, 'mie', '14:30:00', '15:00:00', 47, 1),
(203, 'mie', '15:00:00', '15:30:00', 47, 1),
(204, 'mie', '15:30:00', '16:00:00', 47, 1),
(205, 'mie', '16:00:00', '16:30:00', 47, 1),
(206, 'mie', '16:30:00', '17:00:00', 47, 1),
(207, 'jue', '08:00:00', '08:30:00', 47, 1),
(208, 'jue', '08:30:00', '09:00:00', 47, 1),
(209, 'jue', '09:00:00', '09:30:00', 47, 1),
(210, 'jue', '09:30:00', '10:00:00', 47, 1),
(211, 'jue', '10:00:00', '10:30:00', 47, 1),
(212, 'jue', '10:30:00', '11:00:00', 47, 1),
(213, 'vie', '09:00:00', '09:30:00', 47, 1),
(214, 'vie', '09:30:00', '10:00:00', 47, 1),
(215, 'vie', '10:00:00', '10:30:00', 47, 1),
(216, 'vie', '10:30:00', '11:00:00', 47, 1),
(217, 'vie', '11:00:00', '11:30:00', 47, 1),
(218, 'vie', '11:30:00', '12:00:00', 47, 1),
(219, 'vie', '12:00:00', '12:30:00', 47, 1),
(220, 'vie', '12:30:00', '13:00:00', 47, 1),
(221, 'vie', '13:00:00', '13:30:00', 47, 1),
(222, 'vie', '13:30:00', '14:00:00', 47, 1),
(223, 'vie', '14:00:00', '14:30:00', 47, 1),
(224, 'vie', '14:30:00', '15:00:00', 47, 1),
(225, 'vie', '15:00:00', '15:30:00', 47, 1),
(226, 'vie', '15:30:00', '16:00:00', 47, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia`
--

CREATE TABLE IF NOT EXISTS `licencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  `id_med` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `licencia`
--

INSERT INTO `licencia` (`id`, `desde`, `hasta`, `id_med`) VALUES
(27, '2013-06-04', '2013-06-27', 47),
(28, '2013-05-14', '2013-05-25', 47),
(29, '2013-08-25', '2013-08-30', 47),
(30, '2013-07-31', '2013-08-03', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `detalle` text NOT NULL,
  `tabla` varchar(20) NOT NULL,
  `idafectado` int(11) NOT NULL,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=235 ;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`idlog`, `fecha`, `usuario`, `detalle`, `tabla`, `idafectado`) VALUES
(101, '2013-06-25 02:20:52', 'pato', 'Alta del medico "jose"', 'medico', 13),
(102, '2013-06-25 02:20:52', 'pato', 'Alta del horario par el medico"jose"', 'horario', 13),
(103, '2013-06-25 02:22:30', 'pato', 'Alta del medico "jose"', 'medico', 14),
(104, '2013-06-25 02:22:30', 'pato', 'Alta del horario par el medico"jose"', 'horario', 14),
(105, '2013-06-26 21:12:33', 'nie2', 'Alta del medico ""', 'medico', 15),
(106, '2013-06-26 21:12:33', 'nie2', 'Alta del horario par el medico""', 'horario', 15),
(107, '2013-06-26 21:28:10', 'nie2', 'Alta del medico "Ezequiel"', 'medico', 16),
(108, '2013-06-26 21:32:37', 'nie2', 'Alta del medico "Ezequiel"', 'medico', 17),
(109, '2013-06-26 21:33:25', 'nie2', 'Alta del medico "Ezequiel"', 'medico', 18),
(110, '2013-06-26 21:33:25', 'nie2', 'Alta del horario par el medico"Ezequiel"', 'horario', 18),
(111, '2013-06-26 21:33:57', 'nie2', 'Alta del medico "Ezequiel"', 'medico', 19),
(112, '2013-06-26 21:33:57', 'nie2', 'Alta del horario par el medico"Ezequiel"', 'horario', 19),
(113, '2013-06-26 21:34:29', 'nie2', 'Alta del medico "Ezequiel"', 'medico', 20),
(114, '2013-06-26 21:34:29', 'nie2', 'Alta del horario par el medico"Ezequiel"', 'horario', 20),
(115, '2013-06-26 21:36:00', 'nie2', 'Alta del medico "Ezequiel"', 'medico', 21),
(116, '2013-06-26 21:36:00', 'nie2', 'Alta del horario par el medico"Ezequiel"', 'horario', 21),
(117, '2013-06-26 21:38:38', 'nie2', 'Alta del medico "Ezequiel"', 'medico', 22),
(118, '2013-06-26 21:38:38', 'nie2', 'Alta del horario par el medico"Ezequiel"', 'horario', 22),
(119, '2013-06-26 21:39:32', 'nie2', 'Alta del medico "Ezequiel"', 'medico', 23),
(120, '2013-06-26 21:39:32', 'nie2', 'Alta del horario par el medico"Ezequiel"', 'horario', 23),
(121, '2013-06-27 06:37:49', 'nie2', 'Alta del medico "roberto"', 'medico', 24),
(122, '2013-06-27 06:37:49', 'nie2', 'Alta del horario par el medico"roberto"', 'horario', 24),
(123, '2013-06-27 06:43:54', 'nie2', 'Alta del medico "roberto"', 'medico', 25),
(124, '2013-06-27 06:43:54', 'nie2', 'Alta del horario par el medico"roberto"', 'horario', 25),
(125, '2013-06-27 06:47:18', 'nie2', 'Alta del medico "dafdf"', 'medico', 26),
(126, '2013-06-27 06:47:18', 'nie2', 'Alta del horario par el medico"dafdf"', 'horario', 26),
(127, '2013-07-04 20:38:12', 'juan', 'Alta del medico "juanc"', 'medico', 27),
(128, '2013-07-04 20:38:12', 'juan', 'Alta del horario par el medico"juanc"', 'horario', 27),
(129, '2013-07-05 21:03:11', 'juan', 'Alta del medico "roberto"', 'medico', 28),
(130, '2013-07-05 21:03:11', 'juan', 'Alta del horario par el medico"roberto"', 'horario', 28),
(131, '2013-07-05 21:26:30', 'juan', 'Alta del medico "javier"', 'medico', 29),
(132, '2013-07-05 21:26:30', 'juan', 'Alta del horario par el medico"javier"', 'horario', 29),
(133, '2013-07-05 21:29:21', 'juan', 'Alta del medico "laucha"', 'medico', 30),
(134, '2013-07-05 21:29:21', 'juan', 'Alta del horario par el medico"laucha"', 'horario', 30),
(135, '2013-07-06 03:23:41', 'juan', 'Alta de la obra social  "lolo"', 'os', 16),
(136, '2013-07-06 04:37:49', 'juan', 'Alta del medico "Tomar"', 'medico', 31),
(137, '2013-07-06 04:37:50', 'juan', 'Alta del horario par el medico"Tomar"', 'horario', 31),
(138, '2013-07-06 04:38:21', 'juan', 'Modificacion del paciente  "35720028"', 'Paciente', 0),
(139, '2013-07-17 01:30:47', 'nestor', 'Alta del usuario "pochilow"', 'usuario', 12),
(140, '2013-07-17 01:34:20', 'pochilow', 'Alta de paciente  "4325523"', 'Paciente', 0),
(141, '2013-07-17 01:37:46', 'pochilow', 'Modificacion del paciente  "23423423"', 'Paciente', 0),
(142, '2013-07-17 01:45:49', 'nestor', 'Alta del usuario "pochilow09"', 'usuario', 13),
(143, '2013-07-17 01:47:40', 'pochilow09', 'ModificacÃ­on de la obra social "Ninguna"', 'os', 0),
(144, '2013-07-17 01:52:02', 'pochilow09', 'Modificacion del paciente  "12345678"', 'Paciente', 0),
(145, '2013-07-17 01:56:59', 'pochilow09', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(146, '2013-07-17 01:57:37', 'pochilow09', 'Modificacion del paciente  "23423423"', 'Paciente', 0),
(147, '2013-07-17 01:57:59', 'pochilow09', 'Modificacion del paciente  "35489785"', 'Paciente', 0),
(148, '2013-07-17 01:59:05', 'pochilow09', 'Modificacion del paciente  "27464864"', 'Paciente', 0),
(149, '2013-07-17 01:59:48', 'lau', 'Modificacion del paciente  "12345678"', 'Paciente', 0),
(150, '2013-07-17 02:00:50', 'pochilow09', 'Modificacion del paciente  "30654896"', 'Paciente', 0),
(151, '2013-07-17 02:01:33', 'lau', 'Modificacion del mÃ©dico  "12345678"', 'medico', 0),
(152, '2013-07-17 02:02:40', 'lau', 'Modificacion del mÃ©dico  "12345678"', 'medico', 0),
(153, '2013-07-17 02:02:56', 'pochilow09', 'Modificacion del paciente  "23596874"', 'Paciente', 0),
(154, '2013-07-17 02:04:50', 'pochilow09', 'Modificacion del paciente  "32156786"', 'Paciente', 0),
(155, '2013-07-17 02:05:13', 'lau', 'Alta del medico "rnesto"', 'medico', 32),
(156, '2013-07-17 02:05:13', 'lau', 'Alta del horario par el medico"rnesto"', 'horario', 32),
(157, '2013-07-17 02:05:35', 'pochilow09', 'Modificacion del paciente  "33315070"', 'Paciente', 0),
(158, '2013-07-17 02:06:42', 'pochilow09', 'Modificacion del paciente  "30125896"', 'Paciente', 0),
(159, '2013-07-17 02:07:08', 'pochilow09', 'ModificacÃ­on de la especialidad "UrologÃ­a"', 'especialidad', 0),
(160, '2013-07-17 02:07:25', 'pochilow09', 'ModificacÃ­on de la especialidad "OdontologÃ­a"', 'especialidad', 0),
(161, '2013-07-17 02:07:36', 'pochilow09', 'ModificacÃ­on de la especialidad "CardiologÃ­a"', 'especialidad', 0),
(162, '2013-07-17 02:07:48', 'pochilow09', 'ModificacÃ­on de la especialidad "ReumatologÃ­a"', 'especialidad', 0),
(163, '2013-07-17 02:07:56', 'pochilow09', 'ModificacÃ­on de la especialidad "DermatologÃ­a"', 'especialidad', 0),
(164, '2013-07-17 02:08:06', 'pochilow09', 'ModificacÃ­on de la especialidad "RadiologÃ­a"', 'especialidad', 0),
(165, '2013-07-17 02:08:22', 'pochilow09', 'ModificacÃ­on de la especialidad "OftalmologÃ­a"', 'especialidad', 0),
(166, '2013-07-17 02:08:46', 'pochilow09', 'ModificacÃ­on de la especialidad "GinecologÃ­a"', 'especialidad', 0),
(167, '2013-07-17 02:09:40', 'pochilow09', 'ModificacÃ­on de la obra social "OSPE"', 'os', 0),
(168, '2013-07-17 02:10:10', 'pochilow09', 'ModificacÃ­on de la obra social "MINT"', 'os', 0),
(169, '2013-07-17 02:10:49', 'pochilow09', 'ModificacÃ­on de la obra social "OSECAC"', 'os', 0),
(170, '2013-07-17 02:11:28', 'pochilow09', 'Modificacion del mÃ©dico  "25486485"', 'medico', 0),
(171, '2013-07-17 02:12:05', 'pochilow09', 'Modificacion del mÃ©dico  "6549161"', 'medico', 0),
(172, '2013-07-17 02:13:22', 'pochilow09', 'Modificacion del mÃ©dico  "18416545"', 'medico', 0),
(173, '2013-07-17 02:13:59', 'pochilow09', 'Modificacion del mÃ©dico  "19156168"', 'medico', 0),
(174, '2013-07-17 02:15:21', 'pochilow09', 'Modificacion del usuario  "pochilow09"', 'usuario', 0),
(175, '2013-07-22 15:50:00', 'nie2', 'Alta de paciente  "39150552"', 'Paciente', 0),
(176, '2013-07-22 19:45:19', 'nie2', 'Modificacion del mÃ©dico  "6549161"', 'medico', 0),
(177, '2013-07-22 19:53:05', 'nie2', 'Modificacion del mÃ©dico  "6549161"', 'medico', 0),
(178, '2013-07-23 15:28:13', 'nie2', 'Modificacion del mÃ©dico  "25486485"', 'medico', 0),
(179, '2013-07-23 15:32:43', 'nie2', 'Modificacion del mÃ©dico  "25486485"', 'medico', 0),
(180, '2013-07-23 15:40:21', 'nie2', 'Modificacion del mÃ©dico  "25486485"', 'medico', 0),
(181, '2013-07-23 15:40:42', 'nie2', 'Modificacion del mÃ©dico  "25486485"', 'medico', 0),
(182, '2013-07-23 16:49:30', 'nie2', 'ModificacÃ­on de la obra social "AMEP"', 'os', 0),
(183, '2013-07-23 16:57:41', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(184, '2013-07-23 17:32:01', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(185, '2013-07-23 17:32:23', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(186, '2013-07-23 17:35:24', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(187, '2013-07-23 17:36:40', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(188, '2013-07-23 17:36:50', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(189, '2013-07-23 17:37:00', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(190, '2013-07-23 17:37:51', 'nie2', 'Modificacion del mÃ©dico  "25486485"', 'medico', 0),
(191, '2013-07-23 17:40:14', 'nie2', 'Modificacion del mÃ©dico  "25486485"', 'medico', 0),
(192, '2013-07-23 17:51:17', 'nie2', 'Modificacion del mÃ©dico  "25486485"', 'medico', 0),
(193, '2013-07-23 18:34:03', 'nie2', 'Modificacion del mÃ©dico  "19156168"', 'medico', 0),
(194, '2013-07-24 00:35:24', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(195, '2013-07-24 00:36:10', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(196, '2013-07-24 00:36:15', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(197, '2013-07-24 00:37:33', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(198, '2013-07-24 00:38:26', 'nie2', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(199, '2013-07-24 01:33:45', 'nie2', 'Modificacion del mÃ©dico  "35720028"', 'medico', 0),
(200, '2013-07-24 01:34:06', 'nie2', 'Modificacion del mÃ©dico  "35720028"', 'medico', 0),
(201, '2013-07-24 01:47:08', 'nie2', 'Modificacion del mÃ©dico  "35720028"', 'medico', 0),
(202, '2013-07-24 02:40:11', 'nie2', 'Alta del medico ""', 'medico', 33),
(203, '2013-07-24 15:12:42', 'nie2', 'Alta del medico "borrar"', 'medico', 34),
(204, '2013-07-24 15:12:42', 'nie2', 'Alta del horario par el medico"borrar"', 'horario', 34),
(205, '2013-07-24 15:24:18', 'nie2', 'Alta del medico "asdasd"', 'medico', 35),
(206, '2013-07-24 15:24:18', 'nie2', 'Alta del horario par el medico"asdasd"', 'horario', 35),
(207, '2013-07-24 15:27:52', 'nie2', 'Alta del medico "gbfgbfg"', 'medico', 36),
(208, '2013-07-24 15:27:52', 'nie2', 'Alta del horario par el medico"gbfgbfg"', 'horario', 36),
(209, '2013-07-24 15:34:12', 'nie2', 'Alta del medico "asdasd"', 'medico', 37),
(210, '2013-07-24 15:34:12', 'nie2', 'Alta del horario par el medico"asdasd"', 'horario', 37),
(211, '2013-07-24 15:37:20', 'lau', 'Alta del medico "ertertert"', 'medico', 38),
(212, '2013-07-24 15:37:20', 'lau', 'Alta del horario par el medico"ertertert"', 'horario', 38),
(213, '2013-07-24 15:38:38', 'lau', 'Alta del medico " sddsfvdsv"', 'medico', 39),
(214, '2013-07-24 15:38:38', 'lau', 'Alta del horario par el medico" sddsfvdsv"', 'horario', 39),
(215, '2013-07-24 17:35:56', 'lau', 'Modificacion del mÃ©dico  "25486485"', 'medico', 0),
(216, '2013-07-24 20:54:40', 'lau', 'Alta de la especialidad ""', 'especialidad', 19),
(217, '2013-07-26 15:57:41', 'lau', 'Alta del medico "asdfasdfasd"', 'medico', 40),
(218, '2013-07-26 15:57:41', 'lau', 'Alta del horario par el medico"asdfasdfasd"', 'horario', 40),
(219, '2013-07-26 16:03:08', 'lau', 'Alta del medico "asdasds"', 'medico', 41),
(220, '2013-07-26 16:03:08', 'lau', 'Alta del horario par el medico"asdasds"', 'horario', 41),
(221, '2013-07-26 20:32:49', 'lau', 'Alta del medico "asas"', 'medico', 42),
(222, '2013-07-26 20:32:49', 'lau', 'Alta del horario par el medico"asas"', 'horario', 42),
(223, '2013-07-26 20:35:55', 'lau', 'Alta del medico "ewrwerwe"', 'medico', 43),
(224, '2013-07-26 20:35:55', 'lau', 'Alta del horario par el medico"ewrwerwe"', 'horario', 43),
(225, '2013-07-26 20:37:20', 'lau', 'Alta del medico "asndaklsdklsajkl"', 'medico', 44),
(226, '2013-07-26 20:37:21', 'lau', 'Alta del horario par el medico"asndaklsdklsajkl"', 'horario', 44),
(227, '2013-07-26 20:49:59', 'lau', 'Alta del medico "asdasda"', 'medico', 45),
(228, '2013-07-26 20:49:59', 'lau', 'Alta del horario par el medico"asdasda"', 'horario', 45),
(229, '2013-07-26 21:31:20', 'lau', 'Alta del medico "fsdfsdf"', 'medico', 46),
(230, '2013-07-26 21:31:20', 'lau', 'Alta del horario par el medico"fsdfsdf"', 'horario', 46),
(231, '2013-07-28 19:04:30', 'lau', 'Alta del medico "Julius"', 'medico', 47),
(232, '2013-07-28 19:04:30', 'lau', 'Alta del horario par el medico"Julius"', 'horario', 47),
(233, '2013-07-28 19:04:51', 'lau', 'Modificacion del paciente  "35624587"', 'Paciente', 0),
(234, '2013-07-28 22:55:45', 'lau', 'Modificacion del mÃ©dico  "32165468"', 'medico', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE IF NOT EXISTS `medico` (
  `idmedico` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(8) NOT NULL,
  `matricula` varchar(8) NOT NULL,
  `ingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT '1',
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmedico`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`idmedico`, `dni`, `matricula`, `ingreso`, `nombre`, `apellido`, `mail`, `telefono`, `disponible`, `activo`) VALUES
(28, '25486485', '4567', '2013-07-05 19:03:11', 'Robertos', 'Josele', 'roberjoselio@hotm.com', '4157467486', 1, 1),
(29, '6549161', '1231846', '2013-07-05 19:26:29', 'Javiers', 'GÃ³mezz', 'javi@gmail.com', '0215498789', 1, 1),
(30, '18416545', '487547', '2013-07-05 19:29:21', 'Ricardo', 'Rezza', 'lauchi@jav.com', '0221856789', 1, 1),
(31, '35720028', '65498435', '2013-07-06 02:37:49', 'Tomas', 'Seoane', 'te.seoane@gmail.com', '2214219648', 1, 1),
(32, '19156168', '48941351', '2013-07-17 00:05:13', 'Pablo', 'Ledesma', 'pablo@ledesma.com', '0221857897', 1, 1),
(47, '32165468', '56456126', '2013-07-28 22:04:30', 'Julius', 'hibbert', 'hibbert@hot.com', '4654564564', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `med_esp`
--

CREATE TABLE IF NOT EXISTS `med_esp` (
  `idmed_esp` int(11) NOT NULL AUTO_INCREMENT,
  `id_med` int(11) NOT NULL,
  `id_esp` int(11) NOT NULL,
  PRIMARY KEY (`idmed_esp`),
  KEY `id_med` (`id_med`,`id_esp`),
  KEY `id_esp` (`id_esp`),
  KEY `id_med_2` (`id_med`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `med_esp`
--

INSERT INTO `med_esp` (`idmed_esp`, `id_med`, `id_esp`) VALUES
(2, 28, 12),
(3, 29, 12),
(4, 30, 8),
(5, 31, 10),
(6, 32, 1),
(20, 47, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `med_os`
--

CREATE TABLE IF NOT EXISTS `med_os` (
  `idmed_os` int(11) NOT NULL AUTO_INCREMENT,
  `id_med` int(11) NOT NULL,
  `id_os` int(11) NOT NULL,
  PRIMARY KEY (`idmed_os`),
  KEY `id_med` (`id_med`,`id_os`),
  KEY `id_os` (`id_os`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `med_os`
--

INSERT INTO `med_os` (`idmed_os`, `id_med`, `id_os`) VALUES
(1, 28, 3),
(3, 28, 7),
(2, 28, 14),
(5, 29, 5),
(4, 29, 13),
(6, 30, 8),
(7, 31, 13),
(8, 31, 15),
(9, 32, 14),
(11, 47, 5),
(10, 47, 13),
(12, 47, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `os`
--

CREATE TABLE IF NOT EXISTS `os` (
  `idos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idos`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `os`
--

INSERT INTO `os` (`idos`, `nombre`, `activo`) VALUES
(2, 'IOMA', 0),
(3, 'AMEP', 0),
(4, 'Ninguna', 1),
(5, 'Salud', 1),
(6, 'Medical', 1),
(7, 'FATSA - OsPSA', 1),
(8, 'Ferroviaria', 1),
(9, 'FITT', 0),
(10, 'ASE', 1),
(11, 'SANSA', 1),
(12, 'OPSE', 1),
(13, 'LALU', 1),
(14, 'OSPE', 1),
(15, 'MINT', 1),
(16, 'OSECAC', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE IF NOT EXISTS `paciente` (
  `idpaciente` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(8) NOT NULL,
  `ingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nacimiento` date NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `localidad` varchar(20) NOT NULL,
  `calle` varchar(20) NOT NULL,
  `altura` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `piso` varchar(2) DEFAULT NULL,
  `depto` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idpaciente`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`idpaciente`, `dni`, `ingreso`, `nacimiento`, `nombre`, `apellido`, `localidad`, `calle`, `altura`, `mail`, `telefono`, `piso`, `depto`) VALUES
(1, '35624587', '2013-06-03 02:44:27', '1986-11-05', 'Lautaro', 'Silva', 'La Plata', '44', '160', 'juasd@gmail.com', '2215451579', '', ''),
(2, '23423423', '2013-06-03 04:03:15', '1999-06-08', 'Patricio', 'Gardiner', 'Lanus', 'espora', '986', 'patito@mail.com', '0221687965', '4', 'g'),
(3, '35489785', '2013-06-03 04:13:50', '2009-09-25', 'Juan', 'Cata', 'Olmos', '186', '2234', 'mail@mail.com', '0325489486', '4', 's'),
(4, '27464864', '2013-06-03 05:06:07', '1986-11-11', 'Mauro', 'Raverta', 'la plata', '56', '121', 'mauro@raverta.com', '0458978641', '', 'as'),
(5, '30654896', '2013-06-03 05:23:04', '2001-01-01', 'Pablo', 'Vegetti', 'ColÃ³n', 'Paso', '45', 'pablo@vegetti.com', '0254896745', '4', 'c'),
(6, '23596874', '2013-06-05 00:25:06', '1990-11-06', 'Ramiro', 'Luchetti', 'la plata', '145', '234', 'ramiro@luchetti.com', '0221586489', '2', 'c'),
(7, '32156786', '2013-06-10 20:29:32', '1986-06-20', 'Patricio', 'GimÃ©nez', 'Brandsen', '531', '1487', 'patricio@gimenez.com', '0221486748', '3', 'f'),
(8, '33315070', '2013-06-15 21:21:52', '1987-10-22', 'Nieves', 'Lubrano', 'berisso', '12', '4387', 'nieves_bsso@hotmail.com', '2214959016', '', ''),
(9, '30125896', '2013-07-16 23:34:20', '1991-07-11', 'Gabriel', 'RolÃ³n', 'Berisso', '12', '3109', 'gabriel@rolon.com', '0221654878', '', ''),
(10, '', '2013-07-18 22:40:44', '0000-00-00', 'Lautaro Silva.', '', '', '', '', '', '', '', ''),
(11, '39150552', '2013-07-22 18:49:59', '1995-09-03', 'Nazareno', 'Moralez', 'ensenada', '124 bis', '745', 'naza.deldique@hotmail.com', '2215935907', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pac_os`
--

CREATE TABLE IF NOT EXISTS `pac_os` (
  `idpac_os` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `id_os` int(11) NOT NULL,
  PRIMARY KEY (`idpac_os`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_os` (`id_os`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `pac_os`
--

INSERT INTO `pac_os` (`idpac_os`, `id_paciente`, `id_os`) VALUES
(1, 1, 4),
(2, 2, 3),
(3, 3, 6),
(4, 4, 12),
(5, 5, 7),
(6, 6, 6),
(7, 7, 8),
(8, 8, 3),
(9, 9, 14),
(10, 11, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE IF NOT EXISTS `turno` (
  `idturno` int(11) NOT NULL AUTO_INCREMENT,
  `id_pac` int(11) NOT NULL,
  `id_med` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_os` int(11) NOT NULL,
  `estado` varchar(11) NOT NULL DEFAULT 'pendiente',
  `responsable` int(11) NOT NULL,
  PRIMARY KEY (`idturno`,`fecha`,`hora`),
  KEY `id_pac` (`id_pac`,`id_med`),
  KEY `responsable` (`responsable`),
  KEY `id_os` (`id_os`),
  KEY `id_med` (`id_med`),
  KEY `id_pac_2` (`id_pac`),
  KEY `responsable_2` (`responsable`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`idturno`, `id_pac`, `id_med`, `fecha`, `hora`, `id_os`, `estado`, `responsable`) VALUES
(26, 1, 31, '2013-07-29', '10:00:00', 4, 'pendiente', 1),
(27, 5, 31, '2013-07-29', '10:30:00', 7, 'cancelado', 1),
(28, 6, 31, '2013-07-29', '10:30:00', 6, 'pendiente', 1),
(29, 1, 47, '2013-07-30', '14:30:00', 4, 'cancelado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `user`, `clave`, `nombre`, `apellido`, `dni`, `mail`, `admin`) VALUES
(1, 'lau', '1234', 'lautaro', 'silva', '32714501', 'laucha@gmail.com', 1),
(2, 'juan', '123a', 'asdas', 'dasda', '32714202', 'asdasd@hot.com', 1),
(3, 'jaucho', '1234', 'asdas', 'lalala', '91919191', 'lino@lona.com', 0),
(4, 'pato', '1234', 'alguno', 'sempro', '00000000', 'hui@asd.com', 1),
(5, 'nestor', '1234', 'nestor', 'ilow', '35734309', 'lala@lele.com', 1),
(8, 'nie', '1234', 'nieves', 'lubrano', '82738946', '234jwbfskhf@hot.com', 0),
(9, 'nie2', '1234', 'adasd', 'asdasd', '23423423', 'asdmnalnd@hot.com', 1),
(10, 'queso', '1234', 'rwrwrwrwrwrw', 'oaoaoaoao', '23442342', 'asda@hot.com', 1),
(11, 'test', '1234', 'sdfvdf', 'oaoaoao', '23423425', 'asndsj@jhot.com', 0),
(12, 'pochilow', 'pochito', 'nestin', 'ilow', '38575648', 'nestin@hot.cim', 0),
(13, 'pochilow09', 'pochito', 'MatÃ­as', 'Coloca', '29156489', 'matias@coloca.com', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`id_med`) REFERENCES `medico` (`idmedico`);

--
-- Filtros para la tabla `med_esp`
--
ALTER TABLE `med_esp`
  ADD CONSTRAINT `med_esp_ibfk_1` FOREIGN KEY (`id_med`) REFERENCES `medico` (`idmedico`),
  ADD CONSTRAINT `med_esp_ibfk_2` FOREIGN KEY (`id_esp`) REFERENCES `especialidad` (`idespecialidad`);

--
-- Filtros para la tabla `med_os`
--
ALTER TABLE `med_os`
  ADD CONSTRAINT `med_os_ibfk_1` FOREIGN KEY (`id_med`) REFERENCES `medico` (`idmedico`),
  ADD CONSTRAINT `med_os_ibfk_2` FOREIGN KEY (`id_os`) REFERENCES `os` (`idos`);

--
-- Filtros para la tabla `pac_os`
--
ALTER TABLE `pac_os`
  ADD CONSTRAINT `pac_os_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`idpaciente`),
  ADD CONSTRAINT `pac_os_ibfk_2` FOREIGN KEY (`id_os`) REFERENCES `os` (`idos`);

--
-- Filtros para la tabla `turno`
--
ALTER TABLE `turno`
  ADD CONSTRAINT `turno_ibfk_1` FOREIGN KEY (`id_pac`) REFERENCES `paciente` (`idpaciente`),
  ADD CONSTRAINT `turno_ibfk_2` FOREIGN KEY (`id_med`) REFERENCES `medico` (`idmedico`),
  ADD CONSTRAINT `turno_ibfk_4` FOREIGN KEY (`responsable`) REFERENCES `usuario` (`idusuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
