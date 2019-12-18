-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2019 at 07:24 PM
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
(2281, 15727738, 5, '03:32:23', '04:59:15', '5cd8958d9e667-1557697933', '5cd8a9e930cd3-1557703145', '2019-05-12'),
(2282, 15727738, 5, '04:59:21', '04:59:27', '5cd8a9efbf3a3-1557703151', '5cd8a9f539453-1557703157', '2019-05-12'),
(2283, 15727738, 5, '04:59:37', '04:59:43', '5cd8a9ffb4f3c-1557703167', '5cd8aa0551e8c-1557703173', '2019-05-12'),
(2284, 15727738, 5, '00:36:33', '00:36:40', '5cdc60d72eed3-1557946583', '5cdc60de4a9d2-1557946590', '2019-05-12'),
(2285, 15727738, 5, '00:36:51', '02:29:06', '5cdc60e9c8fed-1557946601', '5cdc6170b17d1-1557946736', '2019-05-12'),
(2286, 15727738, 5, '02:29:13', '02:29:21', '5cdc617798aec-1557946743', '5cdc617fbcaf6-1557946751', '2019-05-12'),
(2287, 15727738, 5, '05:16:50', '05:16:58', '5cddf40887b39-1558049800', '5cddf41036827-1558049808', '2019-05-12'),
(2288, 15727738, 5, '05:17:30', '05:17:36', '5cddf430eb248-1558049840', '5cddf4361c6d7-1558049846', '2019-05-12'),
(2289, 15727738, 5, '05:18:43', '05:18:48', '5cddf4793d58f-1558049913', '5cddf47ee0833-1558049918', '2019-05-12'),
(2290, 15727738, 5, '05:19:06', '05:19:13', '5cddf4906e02e-1558049936', '5cddf49754b78-1558049943', '2019-05-12'),
(2291, 15727738, 5, '05:19:21', '05:19:27', '5cddf49fbdd0a-1558049951', '5cddf4a511481-1558049957', '2019-05-12'),
(2292, 15727738, 5, '05:19:31', '05:19:36', '5cddf4a9b4304-1558049961', '5cddf4ae21087-1558049966', '2019-05-12'),
(2293, 15727738, 5, '05:19:40', '05:19:44', '5cddf4b2063b6-1558049970', '5cddf4b61dba0-1558049974', '2019-05-12'),
(2294, 15727738, 5, '05:19:47', '05:19:51', '5cddf4b9dcf11-1558049977', '5cddf4bdae1ea-1558049981', '2019-05-12'),
(2295, 15727738, 5, '05:19:55', '05:19:59', '5cddf4c17cdb4-1558049985', '5cddf4c54b1ad-1558049989', '2019-05-12'),
(2296, 15727738, 5, '05:20:03', '05:20:07', '5cddf4c941e1f-1558049993', '5cddf4cd4ea27-1558049997', '2019-05-12'),
(2297, 15727738, 5, '05:20:19', '05:20:24', '5cddf4d934307-1558050009', '5cddf4de09c6b-1558050014', '2019-05-12'),
(2298, 15727738, 5, '05:20:28', '05:20:32', '5cddf4e22471e-1558050018', '5cddf4e61c719-1558050022', '2019-05-12'),
(2299, 15727738, 5, '22:47:31', '22:47:47', '5ce03bc98725e-1558199241', '5ce03bd940911-1558199257', '2019-05-12'),
(2301, 15727738, 5, '22:47:56', '22:48:01', '5ce03be2b17de-1558199266', '5ce03be7ea731-1558199271', '2019-05-12'),
(2302, 15727738, 5, '22:48:05', '22:48:08', '5ce03beb6dfc9-1558199275', '5ce03beebd60f-1558199278', '2019-05-12'),
(2303, 15727738, 5, '22:48:11', '22:48:18', '5ce03bf1ec4c6-1558199281', '5ce03bf87cd14-1558199288', '2019-05-12'),
(2304, 15727738, 5, '22:48:22', '22:48:26', '5ce03bfcc5e02-1558199292', '5ce03c009f5ad-1558199296', '2019-05-12'),
(2305, 15727738, 5, '22:48:57', '22:49:16', '5ce03c1f827d4-1558199327', '5ce03c328dbdd-1558199346', '2019-05-12'),
(2306, 15727738, 5, '22:50:08', '22:50:12', '5ce03c6623c5b-1558199398', '5ce03c6a6f841-1558199402', '2019-05-12'),
(2307, 15727738, 5, '22:50:16', '22:50:19', '5ce03c6e00f84-1558199406', '5ce03c7188847-1558199409', '2019-05-12'),
(2308, 15727738, 5, '22:50:24', '22:50:28', '5ce03c7660ca4-1558199414', '5ce03c7a13347-1558199418', '2019-05-12'),
(2309, 15727738, 5, '22:50:31', '22:56:11', '5ce03c7dac166-1558199421', '5ce03dd12fec0-1558199761', '2019-05-12'),
(2311, 15727738, 5, '22:56:18', '22:56:23', '5ce03dd8c10c2-1558199768', '5ce03ddd5571f-1558199773', '2019-05-12'),
(2314, 15727738, 5, '22:58:02', '22:58:07', '5ce03e40b5cdc-1558199872', '5ce03e4557a14-1558199877', '2019-05-12'),
(2315, 15727738, 5, '22:58:11', '22:58:14', '5ce03e49403f3-1558199881', '5ce03e4cc692e-1558199884', '2019-05-12'),
(2316, 15727738, 5, '22:58:22', '22:58:26', '5ce03e54732f4-1558199892', '5ce03e58cf87f-1558199896', '2019-05-12'),
(2317, 15727738, 5, '22:58:59', '22:59:26', '5ce03e7906907-1558199929', '5ce03e94ecef5-1558199956', '2019-05-12'),
(2320, 15727738, 5, '22:59:37', '22:59:41', '5ce03e9f27914-1558199967', '5ce03ea380bd6-1558199971', '2019-05-12'),
(2321, 15727738, 5, '03:03:14', '03:03:28', '5ce70f381e148-1558646584', '5ce70f464d274-1558646598', '2019-05-12'),
(2322, 15727738, 5, '03:03:39', '08:14:09', '5ce70f518c4c8-1558646609', '5cfe508f033ab-1560170639', '2019-05-12'),
(2323, 15727738, 5, '08:14:28', '08:16:00', '5cfe50a271da4-1560170658', '5cfe50fe90311-1560170750', '2019-05-12'),
(2324, 15727738, 5, '08:16:22', '08:16:36', '5cfe511483cd9-1560170772', '5cfe5122b5515-1560170786', '2019-05-12'),
(2325, 15727738, 5, '08:18:49', '08:19:04', '5cfe51a72e72d-1560170919', '5cfe51b682672-1560170934', '2019-05-12'),
(2326, 15727738, 5, '08:19:54', '08:20:11', '5cfe51e8b3b02-1560170984', '5cfe51f949b7d-1560171001', '2019-05-12'),
(2327, 15727738, 5, '08:20:27', '08:20:41', '5cfe5209c4c05-1560171017', '5cfe521712f54-1560171031', '2019-05-12'),
(2328, 15727738, 5, '08:22:10', '08:22:24', '5cfe52703b058-1560171120', '5cfe527e4190a-1560171134', '2019-05-12'),
(2329, 15727738, 5, '06:07:09', '22:44:44', '5d3e238b1b12b-1564353419', '5d8263a2ac086-1568826274', '2019-05-12'),
(2330, 15727738, 5, '22:44:51', '22:44:56', '5d8263a921f06-1568826281', '5d8263ae715be-1568826286', '2019-05-12'),
(2331, 15727738, 5, '12:35:20', '12:35:34', '5d8263c6b0ee2-1568826310', '5d8263d4b19d3-1568826324', '2019-05-12'),
(2332, 15727738, 5, '12:35:52', '12:35:58', '5d8263e623477-1568826342', '5d8263ec92b28-1568826348', '2019-05-12'),
(2333, 15727738, 5, '12:36:04', '12:36:09', '5d8263f2023dd-1568826354', '5d8263f77a6f8-1568826359', '2019-05-12'),
(2334, 15727738, 5, '12:36:14', '12:36:19', '5d8263fcb1edb-1568826364', '5d826401a9b27-1568826369', '2019-05-12'),
(2335, 15727738, 5, '12:36:24', '12:36:30', '5d826406400c4-1568826374', '5d82640c336f8-1568826380', '2019-05-12'),
(2337, 15727738, 5, '12:36:58', '12:37:02', '5d8264280f341-1568826408', '5d82642cdd14e-1568826412', '2019-05-12'),
(2338, 15727738, 5, '12:37:07', '12:37:21', '5d826431ba7b4-1568826417', '5d82643f32705-1568826431', '2019-05-12'),
(2339, 15727738, 5, '12:37:26', '12:37:31', '5d8264446644f-1568826436', '5d82644956781-1568826441', '2019-05-12'),
(2340, 15727738, 5, '12:39:02', '12:40:19', '5d8264a43ce20-1568826532', '5d8264f16b5ef-1568826609', '2019-05-12');

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
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2341;
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
