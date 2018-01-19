-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2018 a las 14:46:18
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `periodico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `descripcion`) VALUES
(1, 'politica'),
(2, 'deportes'),
(3, 'gastronomia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `idnoticia` int(11) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `titulo` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `contenido` text CHARACTER SET latin1 COLLATE latin1_spanish_ci,
  `fechapublicacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`idnoticia`, `email`, `idcategoria`, `titulo`, `contenido`, `fechapublicacion`) VALUES
(1, 'marta@gmail.com', 3, 'Gana el madrid', 'Ayer en el partido contra el Barcelona', '2018-01-19 08:58:20'),
(2, 'elena@gmail.com', 3, 'Nuevo restaurante en Madrid', 'En el barrio de chueca han abierto un restaurante japones.', '2018-01-19 12:45:09'),
(3, 'carlos@gmail.com', 1, 'politicos corruptos', 'Un político es una persona que se dedica a realizar actividades políticas. Existen diversas acepciones del término:\r\n\r\nEn primer lugar se refiere a personas vinculadas a la administración pública; se considera que un político es toda persona afiliada a un partido político y que ha sido elegida o nombrada para tareas asociadas a organismos, asociaciones o instituciones públicas.\r\nEn segundo lugar un político puede referirse a cualquier persona afiliada a una asociación o grupo que desarrolle actividad partidaria, con independencia de si ostentan o no algún cargo público.\r\nEn países no democráticos o con problemas de representatividad, algunas personas desarrollan actividades políticas al margen de la administración, llegando a convertirse en presos políticos.\r\nEn la mayoría de países el ordenamiento jurídico considera a los políticos elegidos o nombrados como representantes del pueblo en el mantenimiento, la gestión y administración de los recursos públicos. Dicho ordenamiento considera que un político debe velar por el interés general de los ciudadanos y mantenerse dentro de una ética profesional de servicio al pueblo y no hacia sí mismo. La corrupción, la demagogia, el sectarismo y la incompetencia son males que afectan en mayor o menor medida a la clase política de la mayoría de países.\r\n\r\nEs un miembro formalmente reconocido y activo de un gobierno, o una persona que ejerce influencia sobre el modo en cómo una sociedad es regida, por medio del conocimiento sobre las dinámicas sociales y el ejercicio del poder. Esto ', '2018-01-19 13:01:12'),
(4, 'ele@com', 1, 'aaaaaa', 'bbbbbb', '2018-01-19 13:41:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`idnoticia`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `idnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
