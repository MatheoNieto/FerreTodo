-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2019 a las 16:58:44
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ferretodo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int(50) NOT NULL,
  `producto` int(20) NOT NULL,
  `cantidad` int(50) NOT NULL,
  `descuento` int(11) DEFAULT NULL,
  `envio` int(20) DEFAULT NULL,
  `precio_venta` int(50) NOT NULL,
  `valortotal` int(50) NOT NULL,
  `fecha_venta` datetime NOT NULL,
  `vendedor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `producto`, `cantidad`, `descuento`, `envio`, `precio_venta`, `valortotal`, `fecha_venta`, `vendedor`) VALUES
(1, 23, 1, 0, 0, 10674, 10674, '2019-05-05 18:56:17', 'ferretodola44'),
(2, 23, 1, 0, 0, 10674, 10674, '2019-05-05 19:03:35', 'ferretodola44'),
(3, 25, 1, 5, 3000, 4245, 4245, '2019-05-07 08:41:30', 'ferretodola44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medidascant`
--

CREATE TABLE `medidascant` (
  `id_medida` int(20) NOT NULL,
  `tipo_medida` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `medidascant`
--

INSERT INTO `medidascant` (`id_medida`, `tipo_medida`) VALUES
(1, 'Unidades'),
(2, 'Paquetes'),
(3, 'Bultos'),
(4, 'Metro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(20) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `nameproducnto` varchar(100) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `cantidad` int(50) NOT NULL,
  `medidas` int(20) NOT NULL,
  `precio_compra` int(20) NOT NULL,
  `precio_venta` int(20) NOT NULL,
  `por_ganancia` int(20) NOT NULL,
  `iva` int(20) NOT NULL,
  `ganancia` int(50) NOT NULL,
  `compra_total` int(50) NOT NULL,
  `venta_total` int(50) NOT NULL,
  `ganancia_total` int(50) NOT NULL,
  `fechaingresado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `image`, `nameproducnto`, `marca`, `cantidad`, `medidas`, `precio_compra`, `precio_venta`, `por_ganancia`, `iva`, `ganancia`, `compra_total`, `venta_total`, `ganancia_total`, `fechaingresado`) VALUES
(1, 'Exhibidor_Brocas_204_MAS_DISCOS.png', 'Exhibidor Brocas 204 MAS DISCOS', 'Barracuda ', 1, 1, 1122963, 1459852, 30, 19, 336889, 2245926, 2919704, 673778, '2019-05-06 20:57:01'),
(2, 'Pintura_Spray_blanco_400_ML.jpg', 'Pintura Spray blanco 400 ML', 'Corneta', 3, 1, 3990, 5187, 30, 19, 1197, 11970, 15561, 3591, '2019-05-03 13:25:00'),
(3, 'Pintura_spray_Negro_brillante_400_ML.jpg', 'Pintura spray Negro brillante 400 ML', 'Corneta', 3, 1, 3990, 5187, 30, 19, 1197, 11970, 15561, 3591, '2019-05-03 13:25:00'),
(10, 'pinturaspary.jpg', 'Pintura spray Nº4 Negro Mate 400 ML', 'Corneta', 3, 1, 3990, 5187, 30, 19, 1197, 11970, 15561, 3591, '2019-05-03 13:25:00'),
(11, 'pinturaspary.jpg', 'Pintura spray Nº190 Transparente Brillante 400 ML', 'Corneta', 3, 1, 3990, 5187, 30, 19, 1197, 11970, 15561, 3591, '2019-05-03 13:25:00'),
(12, 'pinturaspary.jpg', 'Pintura spray Nº191 Transparente Mate 400 ML', 'Corneta', 3, 1, 3990, 5187, 30, 19, 1197, 11970, 15561, 3591, '2019-05-03 13:25:00'),
(13, 'pinturaspary.jpg', 'Pintura spray Nº133 Azul Diamante 400 ML', 'Corneta', 3, 1, 3990, 5187, 30, 19, 1197, 11970, 15561, 3591, '2019-05-03 13:25:00'),
(14, 'pinturaspary.jpg', 'Pintura spray Nº1002 Rosa Fluorecente 400 ML', 'Corneta', 2, 1, 3990, 5187, 30, 19, 1197, 7980, 10374, 2394, '2019-05-03 13:25:00'),
(15, 'pinturaspary.jpg', 'Pintura spray Nº1003 Verde Flourecente 400 ML', 'Corneta', 2, 1, 3990, 5187, 30, 19, 1197, 7980, 10374, 2394, '2019-05-03 13:25:00'),
(16, 'pinturaspary.jpg', 'Pintura spray Nº1005 Amarillo Flourecente 400 ML', 'Corneta', 2, 1, 3990, 5187, 30, 19, 1197, 7980, 10374, 2394, '2019-05-03 13:25:00'),
(17, 'pinturaspary.jpg', 'Pintura spray Nº1006 Anaranjado Flourecente 400 ML', 'Corneta', 2, 1, 3990, 5187, 30, 19, 1197, 7980, 10374, 2394, '2019-05-03 13:25:00'),
(18, 'fumigadora.jpg', 'Fumigadora 20LTS', 'Colima', 1, 1, 66571, 86542, 30, 19, 19971, 66571, 86542, 19971, '2019-05-03 13:25:00'),
(19, 'Poxitanke.jpg', 'Poxitanke transparente Poximas x60G (53ML)', 'Poxitanke', 2, 1, 10622, 13809, 30, 19, 3187, 21244, 27617, 6373, '2019-05-03 13:25:00'),
(20, 'Malla_Gallinero_1.80x50MT_Negro', 'Malla Gallinero 1.80x50MT Negro', 'Malla', 50, 4, 878, 1142, 30, 19, 263, 43911, 57084, 13173, '2019-05-03 23:18:16'),
(21, 'Tela_Prot_Blanca_Doblada_2.10x100', 'Tela Prot Blanca Doblada 2.10x100', '----', 100, 4, 1361, 1770, 30, 19, 408, 136136, 176977, 40841, '2019-05-03 23:28:03'),
(22, 'Tela_Construcción_2.00_Doblax100M_54_GM2_Econo_Pro', 'Tela Construcción 2.00 Doblax100M 54 G/M2 Econo Pro', '-----', 100, 4, 1150, 1494, 30, 19, 345, 114954, 149440, 34486, '2019-05-03 23:29:44'),
(23, 'Alicate_Electricista_8.jpg', 'Alicate Electricista -8', 'Corneta', 3, 1, 8211, 10674, 30, 19, 2463, 24633, 32022, 7389, '2019-05-07 09:39:26'),
(24, 'Broca_Muro_316-4.jpg', 'Broca Muro 3/16-4', '------', 24, 1, 2559, 3326, 30, 19, 768, 61404, 79825, 18421, '2019-05-03 23:45:56'),
(25, 'Broca_Muro_14-4.jpg', 'Broca Muro 1/4-4', '--------', 23, 1, 3437, 4468, 30, 19, 1031, 82488, 107232, 24744, '2019-05-04 00:06:06'),
(26, 'Lima_Triang_delgada_Pserr_gav_CM_4-12.jpg', 'Lima Triang delgada P/serr gav C/M 4-1/2', 'Gavilan', 12, 1, 2535, 3296, 30, 19, 761, 30420, 39552, 9132, '2019-05-07 08:54:37'),
(27, 'LLana_dentada_gavilan_MMadera_5x5.jpg', 'LLana dentada gavilan M/Madera 5x5', 'Gavilan', 3, 1, 16373, 21285, 30, 19, 4912, 49119, 63855, 14736, '2019-05-07 08:58:50'),
(28, 'Machete_66HN-12.jpg', 'Machete 66HN-12', 'Aguila Corneta', 4, 1, 14554, 18920, 30, 19, 4366, 58216, 75680, 17464, '2019-05-07 09:34:34'),
(29, 'Machete_66hn-14.jpg', 'Machete 66hn-14', 'Aguila corneta', 2, 1, 14554, 18920, 30, 19, 4366, 29108, 37840, 8732, '2019-05-07 09:11:44'),
(30, 'Machete_66Hn-16.jpg', 'Machete 66Hn-16', 'Aguila Corneta', 2, 1, 14554, 18920, 30, 19, 4366, 29108, 37840, 8732, '2019-05-07 09:16:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(20) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `password`, `nombre`, `apellidos`) VALUES
('ferretodola44', 'ed0ca56ff9def28b5077ba2665a65f0b', 'ferretodo', 'la 44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto` (`producto`),
  ADD KEY `vendedor` (`vendedor`);

--
-- Indices de la tabla `medidascant`
--
ALTER TABLE `medidascant`
  ADD PRIMARY KEY (`id_medida`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medidas` (`medidas`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `medidascant`
--
ALTER TABLE `medidascant`
  MODIFY `id_medida` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`vendedor`) REFERENCES `usuarios` (`usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`medidas`) REFERENCES `medidascant` (`id_medida`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
