-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2024 a las 02:05:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sitio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `imagen`, `url`) VALUES
(2, 'Genesis', '2024190558_Libros RV 1960.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=genesis&capitulo=1&version=rv60'),
(3, 'Exodo', '2024190628_Exodo.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=exodo&capitulo=1&version=rv60'),
(4, 'Levítico', '2024190726_Levítico.png', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=levitico&capitulo=1&version=rv60'),
(5, 'Números', '2024190809_Numeros.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=numeros&capitulo=1&version=rv60'),
(6, 'Deuteronomio', '2024190846_Deuteronomio.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=deuteronomio&capitulo=1&version=rv60'),
(7, 'Josué', '2024190931_Josue.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=josue&capitulo=1&version=rv60'),
(8, 'Jueces', '2024191000_Jueces.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=jueces&capitulo=1&version=rv60'),
(9, 'Rut', '2024191036_Rut.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=rut&capitulo=1&version=rv60'),
(11, '1 Samuel', '2024092310_1102013254_univ_lsr_xl.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=1-samuel&capitulo=1&version=rv60'),
(12, '2 Samuel', '2024092610_2 Samuel.png', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=2-samuel&capitulo=1&version=rv60'),
(13, '1 Reyes', '2024092926_1 Reyes.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=1-reyes&capitulo=1&version=rv60'),
(14, '2 Reyes', '2024093200_2 Reyes.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=2-reyes&capitulo=1&version=rv60'),
(15, '1 Crónicas', '2024080011_1 Crónicas.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=1-cronicas&capitulo=1&version=rv60'),
(16, '2 Crónicas', '2024080354_2 Crónicas.png', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=2-cronicas&capitulo=1&version=rv60'),
(17, 'Esdras', '2024095655_Esdras.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=esdras&capitulo=1&version=rv60'),
(18, 'Nehemías', '2024100005_Nehemías.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=nehemias&capitulo=1&version=rv60'),
(19, 'Ester', '2024100323_Ester.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=ester&capitulo=1&version=rv60'),
(20, 'Job', '2024100647_Job.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=job&capitulo=1&version=rv60'),
(21, 'Salmos', '2024124803_Salmos.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=salmos&capitulo=1&version=rv60'),
(22, 'Proverbios', '2024125447_proverbios-25.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=proverbios&capitulo=1&version=rv60'),
(23, 'Eclesiastés', '2024125934_Eclesiastés.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=eclesiastes&capitulo=1&version=rv60'),
(24, 'Cantares', '2024130157_cantares.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=cantares&capitulo=1&version=rv60'),
(25, 'Isaías', '2024130519_Isaías.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=isaias&capitulo=1&version=rv60'),
(26, 'Jeremías', '2024130721_Jeremías.jpg', 'https://www.biblia.es/biblia-buscar-libros-1.php?libro=jeremias&capitulo=1&version=rv60');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
