-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2024 a las 19:47:38
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nequi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_guia`
--

CREATE TABLE IF NOT EXISTS `personas_guia` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `nombres` char(20) NOT NULL,
  `apellidos` char(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `num_celular` char(13) NOT NULL,
  `correo` char(50) NOT NULL,
  `contraseña` char(50) NOT NULL,
  `documento` char(17) NOT NULL,
  `tipo_documento` tinyint(1) NOT NULL,
  `dir_residencia` char(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `personas_guia`
--

INSERT INTO `personas_guia` (`id`, `fecha_sys`, `nombres`, `apellidos`, `fecha_nacimiento`, `num_celular`, `correo`, `contraseña`, `documento`, `tipo_documento`, `dir_residencia`) VALUES
(1, '2024-09-30 12:08:12', 'isabela', 'ospina', '2007-04-15', '3144982323', 'lospina@itfip.edu.co', 'isabela12345', '1070578433', 0, 'Espinal-Tolima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

CREATE TABLE IF NOT EXISTS `transferencias` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `num_origen` char(13) NOT NULL,
  `num_destino` char(13) NOT NULL,
  `valor` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `transferencias`
--

INSERT INTO `transferencias` (`id`, `fecha_sys`, `num_origen`, `num_destino`, `valor`) VALUES
(1, '2024-09-30 12:14:01', '3123906520', '3126782323', 1234567);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_almuerzos`
--

CREATE TABLE IF NOT EXISTS `venta_almuerzos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `valor` smallint(5) NOT NULL,
  `documento` char(17) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `venta_almuerzos`
--

INSERT INTO `venta_almuerzos` (`id`, `fecha_sys`, `valor`, `documento`) VALUES
(1, '2024-09-30 12:23:23', 1500, '1111182712');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_churros`
--

CREATE TABLE IF NOT EXISTS `venta_churros` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `cantidad` smallint(2) NOT NULL,
  `valor` smallint(5) NOT NULL,
  `sabor` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `venta_churros`
--

INSERT INTO `venta_churros` (`id`, `fecha_sys`, `cantidad`, `valor`, `sabor`) VALUES
(1, '2024-09-30 12:41:12', 5, 7500, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
