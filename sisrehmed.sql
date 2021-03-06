-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-05-2015 a las 06:27:25
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sisrehmed`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Box`
--

CREATE TABLE IF NOT EXISTS `Box` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Director`
--

CREATE TABLE IF NOT EXISTS `Director` (
`id` int(10) NOT NULL,
  `idPersona` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Especialidad`
--

CREATE TABLE IF NOT EXISTS `Especialidad` (
  `id` int(10) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HoraMedica`
--

CREATE TABLE IF NOT EXISTS `HoraMedica` (
  `id` int(10) NOT NULL, 
  `idMedico` int(10) NOT NULL,
  `idBox` int(10) NOT NULL,
  `esAPS` int(1) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Medico`
--

CREATE TABLE IF NOT EXISTS `Medico` (
  `id` int(10) NOT NULL,
  `idPersona` int(10) NOT NULL,
  `idEspecialidad` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Paciente`
--

CREATE TABLE IF NOT EXISTS `Paciente` (
  `id` int(10) NOT NULL,
  `idPersona` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Persona`
--

CREATE TABLE IF NOT EXISTS `Persona` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `rut` varchar(20) DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `comuna` varchar(50) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `fecha_nacimiento` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reserva`
--

CREATE TABLE IF NOT EXISTS `Reserva` (
`id` int(10) NOT NULL,
  `idPaciente` int(10) NOT NULL,
  `idHoraMedica` int(10) NOT NULL,
  `idPersonaQueRegistra` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Box`
--
ALTER TABLE `Box`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Director`
--
ALTER TABLE `Director`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idPersona` (`idPersona`), ADD KEY `FKDirector668073` (`idPersona`);

--
-- Indices de la tabla `Especialidad`
--
ALTER TABLE `Especialidad`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `HoraMedica`
--
ALTER TABLE `HoraMedica`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idMedico` (`idMedico`), ADD UNIQUE KEY `idBox` (`idBox`), ADD KEY `FKHoraMedica334180` (`idMedico`), ADD KEY `FKHoraMedica737606` (`idBox`);

--
-- Indices de la tabla `Medico`
--
ALTER TABLE `Medico`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idPersona` (`idPersona`), ADD KEY `FKMedico449689` (`idPersona`), ADD KEY `FKMedico187510` (`idEspecialidad`);

--
-- Indices de la tabla `Paciente`
--
ALTER TABLE `Paciente`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idPersona` (`idPersona`), ADD KEY `FKPaciente435890` (`idPersona`);

--
-- Indices de la tabla `Persona`
--
ALTER TABLE `Persona`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `rut` (`rut`);

--
-- Indices de la tabla `Reserva`
--
ALTER TABLE `Reserva`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idPaciente` (`idPaciente`), ADD UNIQUE KEY `idHoraMedica` (`idHoraMedica`), ADD UNIQUE KEY `idPersonaQueRegistra` (`idPersonaQueRegistra`), ADD KEY `FKReserva446642` (`idPaciente`), ADD KEY `FKReserva608478` (`idHoraMedica`), ADD KEY `FKReserva536100` (`idPersonaQueRegistra`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Director`
--
ALTER TABLE `Director`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Reserva`
--
ALTER TABLE `Box`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Persona`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Especialidad`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `HoraMedica`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Paciente`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Medico`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Reserva`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Director`
--
ALTER TABLE `Director`
ADD CONSTRAINT `FKDirector668073` FOREIGN KEY (`idPersona`) REFERENCES `Persona` (`id`);

--
-- Filtros para la tabla `HoraMedica`
--
ALTER TABLE `HoraMedica`
ADD CONSTRAINT `FKHoraMedica334180` FOREIGN KEY (`idMedico`) REFERENCES `Medico` (`id`),
ADD CONSTRAINT `FKHoraMedica737606` FOREIGN KEY (`idBox`) REFERENCES `Box` (`id`);

--
-- Filtros para la tabla `Medico`
--
ALTER TABLE `Medico`
ADD CONSTRAINT `FKMedico187510` FOREIGN KEY (`idEspecialidad`) REFERENCES `Especialidad` (`id`),
ADD CONSTRAINT `FKMedico449689` FOREIGN KEY (`idPersona`) REFERENCES `Persona` (`id`);

--
-- Filtros para la tabla `Paciente`
--
ALTER TABLE `Paciente`
ADD CONSTRAINT `FKPaciente435890` FOREIGN KEY (`idPersona`) REFERENCES `Persona` (`id`);

--
-- Filtros para la tabla `Reserva`
--
ALTER TABLE `Reserva`
ADD CONSTRAINT `FKReserva446642` FOREIGN KEY (`idPaciente`) REFERENCES `Paciente` (`id`),
ADD CONSTRAINT `FKReserva536100` FOREIGN KEY (`idPersonaQueRegistra`) REFERENCES `Persona` (`id`),
ADD CONSTRAINT `FKReserva608478` FOREIGN KEY (`idHoraMedica`) REFERENCES `HoraMedica` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
