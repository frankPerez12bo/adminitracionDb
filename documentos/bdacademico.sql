-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2024 a las 01:08:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdacademico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblalumno`
--

CREATE TABLE `tblalumno` (
  `alumno_codigo` int(11) NOT NULL,
  `alumno_nombre` varchar(100) NOT NULL,
  `alumno_apellido` varchar(100) NOT NULL,
  `alumno_direccion` varchar(100) NOT NULL,
  `alumno_telefono` varchar(100) NOT NULL,
  `alumno_celular` varchar(100) NOT NULL,
  `alumno_email` varchar(100) NOT NULL,
  `alumno_fec_nac` varchar(100) NOT NULL,
  `nacionalidad_codigo` int(11) DEFAULT NULL,
  `barrio_codigo` int(11) DEFAULT NULL,
  `estacivil_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblasignatura`
--

CREATE TABLE `tblasignatura` (
  `asignatura_codigo` int(11) NOT NULL,
  `asignatura_descripcion` varchar(30) NOT NULL,
  `asignatura_duracion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblbarrio`
--

CREATE TABLE `tblbarrio` (
  `barrio_codigo` int(11) NOT NULL,
  `barrio_descripcion` varchar(100) NOT NULL,
  `ciudad_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblciudad`
--

CREATE TABLE `tblciudad` (
  `ciudad_codigo` int(11) NOT NULL,
  `ciudad_descripcion` varchar(100) NOT NULL,
  `pais_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblespecializacion`
--

CREATE TABLE `tblespecializacion` (
  `especializacion_codigo` int(11) NOT NULL,
  `especializacion_descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblestacivil`
--

CREATE TABLE `tblestacivil` (
  `estacivil_codigo` int(11) NOT NULL,
  `estacivil_descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblinscripcion`
--

CREATE TABLE `tblinscripcion` (
  `inscripcion_codigo` int(11) NOT NULL,
  `inscripcion_fecha` datetime NOT NULL,
  `asignatura_codigo` int(11) DEFAULT NULL,
  `seccion_codigo` int(11) DEFAULT NULL,
  `turno_codigo` int(11) DEFAULT NULL,
  `matricula_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmatricula`
--

CREATE TABLE `tblmatricula` (
  `matricula_codigo` int(11) NOT NULL,
  `matricula_fecha` datetime NOT NULL,
  `tomo_codigo` int(11) DEFAULT NULL,
  `especializacion_codigo` int(11) DEFAULT NULL,
  `alumno_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblnacionalidad`
--

CREATE TABLE `tblnacionalidad` (
  `nacionalidad_codigo` int(11) NOT NULL,
  `nacionalidad_descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpais`
--

CREATE TABLE `tblpais` (
  `pais_codigo` int(11) NOT NULL,
  `pais_descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblseccion`
--

CREATE TABLE `tblseccion` (
  `seccion_codigo` int(11) NOT NULL,
  `seccion_descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltomo`
--

CREATE TABLE `tbltomo` (
  `tomo_codigo` int(11) NOT NULL,
  `tomo_anio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblturno`
--

CREATE TABLE `tblturno` (
  `turno_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuario`
--

CREATE TABLE `tblusuario` (
  `usuario_codigo` int(11) NOT NULL,
  `usuario_login` varchar(30) NOT NULL,
  `usuario_nombre` varchar(30) NOT NULL,
  `usuario_apellido` varchar(30) NOT NULL,
  `usuario_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblalumno`
--
ALTER TABLE `tblalumno`
  ADD PRIMARY KEY (`alumno_codigo`),
  ADD KEY `nacionalidad_codigo` (`nacionalidad_codigo`),
  ADD KEY `barrio_codigo` (`barrio_codigo`),
  ADD KEY `estacivil_codigo` (`estacivil_codigo`);

--
-- Indices de la tabla `tblasignatura`
--
ALTER TABLE `tblasignatura`
  ADD PRIMARY KEY (`asignatura_codigo`);

--
-- Indices de la tabla `tblbarrio`
--
ALTER TABLE `tblbarrio`
  ADD PRIMARY KEY (`barrio_codigo`),
  ADD KEY `ciudad_codigo` (`ciudad_codigo`);

--
-- Indices de la tabla `tblciudad`
--
ALTER TABLE `tblciudad`
  ADD PRIMARY KEY (`ciudad_codigo`),
  ADD KEY `pais_codigo` (`pais_codigo`);

--
-- Indices de la tabla `tblespecializacion`
--
ALTER TABLE `tblespecializacion`
  ADD PRIMARY KEY (`especializacion_codigo`);

--
-- Indices de la tabla `tblestacivil`
--
ALTER TABLE `tblestacivil`
  ADD PRIMARY KEY (`estacivil_codigo`);

--
-- Indices de la tabla `tblinscripcion`
--
ALTER TABLE `tblinscripcion`
  ADD PRIMARY KEY (`inscripcion_codigo`),
  ADD KEY `asignatura_codigo` (`asignatura_codigo`),
  ADD KEY `seccion_codigo` (`seccion_codigo`),
  ADD KEY `turno_codigo` (`turno_codigo`),
  ADD KEY `matricula_codigo` (`matricula_codigo`);

--
-- Indices de la tabla `tblmatricula`
--
ALTER TABLE `tblmatricula`
  ADD PRIMARY KEY (`matricula_codigo`),
  ADD KEY `tomo_codigo` (`tomo_codigo`),
  ADD KEY `especializacion_codigo` (`especializacion_codigo`),
  ADD KEY `alumno_codigo` (`alumno_codigo`);

--
-- Indices de la tabla `tblnacionalidad`
--
ALTER TABLE `tblnacionalidad`
  ADD PRIMARY KEY (`nacionalidad_codigo`);

--
-- Indices de la tabla `tblpais`
--
ALTER TABLE `tblpais`
  ADD PRIMARY KEY (`pais_codigo`);

--
-- Indices de la tabla `tblseccion`
--
ALTER TABLE `tblseccion`
  ADD PRIMARY KEY (`seccion_codigo`);

--
-- Indices de la tabla `tbltomo`
--
ALTER TABLE `tbltomo`
  ADD PRIMARY KEY (`tomo_codigo`);

--
-- Indices de la tabla `tblturno`
--
ALTER TABLE `tblturno`
  ADD PRIMARY KEY (`turno_codigo`);

--
-- Indices de la tabla `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD PRIMARY KEY (`usuario_codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblalumno`
--
ALTER TABLE `tblalumno`
  MODIFY `alumno_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblasignatura`
--
ALTER TABLE `tblasignatura`
  MODIFY `asignatura_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblbarrio`
--
ALTER TABLE `tblbarrio`
  MODIFY `barrio_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblciudad`
--
ALTER TABLE `tblciudad`
  MODIFY `ciudad_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblespecializacion`
--
ALTER TABLE `tblespecializacion`
  MODIFY `especializacion_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblestacivil`
--
ALTER TABLE `tblestacivil`
  MODIFY `estacivil_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblinscripcion`
--
ALTER TABLE `tblinscripcion`
  MODIFY `inscripcion_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblmatricula`
--
ALTER TABLE `tblmatricula`
  MODIFY `matricula_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblnacionalidad`
--
ALTER TABLE `tblnacionalidad`
  MODIFY `nacionalidad_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblpais`
--
ALTER TABLE `tblpais`
  MODIFY `pais_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblseccion`
--
ALTER TABLE `tblseccion`
  MODIFY `seccion_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltomo`
--
ALTER TABLE `tbltomo`
  MODIFY `tomo_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblturno`
--
ALTER TABLE `tblturno`
  MODIFY `turno_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblusuario`
--
ALTER TABLE `tblusuario`
  MODIFY `usuario_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblalumno`
--
ALTER TABLE `tblalumno`
  ADD CONSTRAINT `tblalumno_ibfk_1` FOREIGN KEY (`nacionalidad_codigo`) REFERENCES `tblnacionalidad` (`nacionalidad_codigo`),
  ADD CONSTRAINT `tblalumno_ibfk_2` FOREIGN KEY (`barrio_codigo`) REFERENCES `tblbarrio` (`barrio_codigo`),
  ADD CONSTRAINT `tblalumno_ibfk_3` FOREIGN KEY (`estacivil_codigo`) REFERENCES `tblestacivil` (`estacivil_codigo`);

--
-- Filtros para la tabla `tblbarrio`
--
ALTER TABLE `tblbarrio`
  ADD CONSTRAINT `tblbarrio_ibfk_1` FOREIGN KEY (`ciudad_codigo`) REFERENCES `tblciudad` (`ciudad_codigo`);

--
-- Filtros para la tabla `tblciudad`
--
ALTER TABLE `tblciudad`
  ADD CONSTRAINT `tblciudad_ibfk_1` FOREIGN KEY (`pais_codigo`) REFERENCES `tblpais` (`pais_codigo`);

--
-- Filtros para la tabla `tblinscripcion`
--
ALTER TABLE `tblinscripcion`
  ADD CONSTRAINT `tblinscripcion_ibfk_1` FOREIGN KEY (`asignatura_codigo`) REFERENCES `tblasignatura` (`asignatura_codigo`),
  ADD CONSTRAINT `tblinscripcion_ibfk_2` FOREIGN KEY (`seccion_codigo`) REFERENCES `tblseccion` (`seccion_codigo`),
  ADD CONSTRAINT `tblinscripcion_ibfk_3` FOREIGN KEY (`turno_codigo`) REFERENCES `tblturno` (`turno_codigo`),
  ADD CONSTRAINT `tblinscripcion_ibfk_4` FOREIGN KEY (`matricula_codigo`) REFERENCES `tblmatricula` (`matricula_codigo`);

--
-- Filtros para la tabla `tblmatricula`
--
ALTER TABLE `tblmatricula`
  ADD CONSTRAINT `tblmatricula_ibfk_1` FOREIGN KEY (`tomo_codigo`) REFERENCES `tbltomo` (`tomo_codigo`),
  ADD CONSTRAINT `tblmatricula_ibfk_2` FOREIGN KEY (`especializacion_codigo`) REFERENCES `tblespecializacion` (`especializacion_codigo`),
  ADD CONSTRAINT `tblmatricula_ibfk_3` FOREIGN KEY (`alumno_codigo`) REFERENCES `tblalumno` (`alumno_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
