-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 01:42 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pfphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `asistencia`
--

CREATE TABLE `asistencia` (
  `id` int(250) NOT NULL,
  `cedula` int(10) NOT NULL,
  `idmateria` int(6) NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time DEFAULT NULL,
  `foto_entrada` varchar(100) NOT NULL,
  `foto_salida` varchar(40) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asistencia`
--

INSERT INTO `asistencia` (`id`, `cedula`, `idmateria`, `hora_entrada`, `hora_salida`, `foto_entrada`, `foto_salida`, `fecha`) VALUES
(2361, 15727738, 5, '07:11:45', '07:12:02', '5dfa1e7eea306-1576672894', '5dfa1e90a6cf4-1576672912', '2019-12-18'),
(2362, 15727738, 5, '07:12:09', NULL, '5dfa1e977c6ca-1576672919', NULL, '2019-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `datospersonales`
--

CREATE TABLE `datospersonales` (
  `id` int(6) NOT NULL,
  `cedula` int(8) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `genero` char(1) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `parroquia` varchar(50) NOT NULL,
  `estado_civil` varchar(12) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo` varchar(80) NOT NULL,
  `hijos` varchar(10) NOT NULL,
  `talla` varchar(4) NOT NULL,
  `discapacidad` varchar(2) NOT NULL,
  `deporte` varchar(2) NOT NULL,
  `cualdeporte` varchar(30) DEFAULT NULL,
  `trabaja` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datospersonales`
--

INSERT INTO `datospersonales` (`id`, `cedula`, `nombre`, `apellido`, `genero`, `telefono`, `direccion`, `municipio`, `parroquia`, `estado_civil`, `fecha_nacimiento`, `correo`, `hijos`, `talla`, `discapacidad`, `deporte`, `cualdeporte`, `trabaja`) VALUES
(1, 18317281, 'justino jesus', 'marval viera', 'M', '0426-6687472 0261-7223983', 'calle 94 n#7-30 calle carabobo', '', '', 'E-113', '2016-04-05', 'justimarval@gmail.com', '', '', '', '', NULL, ''),
(2, 4759268, 'teresita del rosario', 'viera aÃ±es', 'F', '04266687472, 0261-7223983', 'calle 94 n#7-30, calle carabobo', '', '', 'I-113', '2016-04-22', 'tere@gmail.com', '', '', '', '', NULL, ''),
(3, 19074185, 'ronald', 'sanchez', 'M', '04146299742', 'la pastora', 'maracaibo', 'cecilio acosta', 'soltero', '1989-10-07', 'rasp602@gmail.com', '8', 'SS', 'No', 'Si', 'futbool', 'Si'),
(4, 15727738, 'felix', 'marquez', 'M', '04168612194', 'la lago', 'maracaibo', 'olegario', 'soltero', '1980-09-06', 'felixrx25@hotmail.com', '4', 'XL', 'No', 'Si', 'nadar', 'Si');

-- --------------------------------------------------------

--
-- Table structure for table `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(6) NOT NULL,
  `cedula` varchar(12) DEFAULT NULL,
  `nombre` varchar(11) DEFAULT NULL,
  `apellido` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estudiante`
--

INSERT INTO `estudiante` (`id`, `cedula`, `nombre`, `apellido`) VALUES
(1, '19074185', 'ronald', 'sanchez'),
(2, '15727738', 'felix', 'marquez'),
(3, '20659353', 'yuus', 'urdaneta'),
(4, '7785611', 'oscar', 'sanchez');

-- --------------------------------------------------------

--
-- Table structure for table `materia`
--

CREATE TABLE `materia` (
  `idmateria` int(6) NOT NULL,
  `nombremateria` varchar(30) NOT NULL,
  `id_profesor` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materia`
--

INSERT INTO `materia` (`idmateria`, `nombremateria`, `id_profesor`) VALUES
(1, 'programacion', 1),
(2, 'calculo', 2),
(5, 'Informatica2', 3),
(6, 'calculo10', 4);

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(6) NOT NULL,
  `cedula` int(10) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `genero` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `cedula`, `nombre`, `apellido`, `telefono`, `direccion`, `genero`) VALUES
(1, 19074185, 'ronald', 'sanchez', '04146299742', 'los claveles', 'M'),
(2, 20659353, 'yuss', 'urdaneta', '04146299742', 'la paz', 'F'),
(3, 15727738, 'felix', 'marquez', '04168622194', 'la lago', 'M'),
(4, 7785611, 'oscar', 'sanchez', '0414629974', 'la paz', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(6) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `clave` varchar(10) DEFAULT NULL,
  `id` int(6) DEFAULT NULL,
  `nivel` int(1) DEFAULT NULL,
  `cedula` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cedula` (`cedula`),
  ADD KEY `idmateria` (`idmateria`);

--
-- Indexes for table `datospersonales`
--
ALTER TABLE `datospersonales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idmateria`),
  ADD KEY `idmateria` (`idmateria`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD KEY `cedula_2` (`cedula`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2363;
--
-- AUTO_INCREMENT for table `datospersonales`
--
ALTER TABLE `datospersonales`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `materia`
--
ALTER TABLE `materia`
  MODIFY `idmateria` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(6) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `profesor` (`cedula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id`) REFERENCES `estudiante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
