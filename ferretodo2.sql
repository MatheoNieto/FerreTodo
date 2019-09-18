-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2019 a las 16:25:31
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
(4, 'Metro'),
(5, 'Rollo'),
(6, 'Kilos'),
(7, 'Libras'),
(8, 'M/Bulto'),
(9, 'Bolsa'),
(10, 'Par'),
(11, 'Pliego'),
(12, 'Set'),
(13, 'Display'),
(14, 'Kit'),
(15, 'Caja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(20) NOT NULL,
  `image` varchar(50) DEFAULT 'sinimg.png',
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
(0, 'sinimg.png', 'Prensa de hierro nodular 5  ', 'no', 2, 1, 13083, 17008, 30, 19, 3925, 26166, 34016, 7850, '2019-05-08 22:27:48'),
(2, 'Broca_Muro_14-4.jpg', 'Broca muro 1/4-4 (24 Unidades)', 'no', 12, 1, 2816, 3660, 30, 19, 845, 33786, 43922, 10136, '2019-05-06 00:00:00'),
(3, 'Broca_Muro_14-4.jpg', 'Broca muro 5/16-5 (24 Unidades)', 'no', 12, 1, 3437, 4468, 30, 19, 1031, 41241, 53613, 12372, '2019-05-07 00:00:00'),
(4, 'Broca_Muro_14-4.jpg', 'Broca muro 3/8-5 (24 unidades)', 'no', 6, 1, 5261, 6839, 30, 19, 1578, 31566, 41036, 9470, '2019-05-08 00:00:00'),
(5, 'Broca_Muro_14-4.jpg', 'Broca muro 1/2-6 (24 unidades)', 'no', 6, 1, 8855, 11511, 30, 19, 2656, 53129, 69067, 15939, '2019-05-09 00:00:00'),
(6, 'brocamadera.jpg', 'Broca para madera(Guadua) 5/16 x13', 'no', 6, 1, 7071, 9192, 30, 19, 2121, 42426, 55154, 12728, '2019-05-10 00:00:00'),
(7, 'brocamadera.jpg', 'Broca para madera(Guadua) 3/8 x13', 'no', 6, 1, 9052, 11768, 30, 19, 2716, 54314, 70608, 16294, '2019-05-11 00:00:00'),
(8, 'brocamadera.jpg', 'Broca para madera(Guadua) 1/2 x13', 'no', 6, 1, 9196, 11955, 30, 19, 2759, 55178, 71731, 16553, '2019-05-12 00:00:00'),
(9, 'brocamadera.jpg', 'Broca para madera(Guadua) 1/2 x13', 'no', 6, 1, 9196, 11955, 30, 19, 2759, 55178, 71731, 16553, '2019-05-12 00:00:00'),
(10, 'sierracopa.jpg', 'sierra copa 1-1/8', 'Barracuda', 3, 1, 8648, 11243, 30, 19, 2594, 25945, 33728, 7783, '2019-05-12 00:00:00'),
(11, 'sierracopa.jpg', 'sierra copa 1-1/4', 'Barracuda', 3, 1, 10346, 13450, 30, 19, 3104, 31038, 40349, 9311, '2019-05-12 00:00:00'),
(12, 'sierracopa.jpg', 'sierra copa 2', 'Barracuda', 3, 1, 13836, 17987, 30, 19, 4151, 41508, 53961, 12453, '2019-05-12 00:00:00'),
(13, 'sierracopa.jpg', 'sierra copa 2-1/8', 'Barracuda', 2, 1, 14801, 19242, 30, 19, 4440, 29602, 38483, 8881, '2019-05-12 00:00:00'),
(14, 'gratabarracuda.jpg', 'Grata barracuda copa 3 * 5 / 8 ondulado', 'Barracuda', 3, 1, 7302, 9492, 30, 19, 2191, 21906, 28477, 6572, '2019-05-12 00:00:00'),
(15, 'gratabarracuda.jpg', 'Grata barracuda copa 4 * 5 / 8 ondulado', 'Barracuda', 3, 1, 13490, 17537, 30, 19, 4047, 40470, 52610, 12141, '2019-05-12 00:00:00'),
(16, 'brocasds.jpg', 'broca sds plus 3 / 16 * 4', 'no', 4, 1, 3018, 3923, 30, 19, 905, 12071, 15693, 3621, '2019-05-12 00:00:00'),
(17, 'brocasds.jpg', 'broca sds plus 1 / 4 * 4', 'no', 4, 1, 3201, 4161, 30, 19, 960, 12804, 16646, 3841, '2019-05-12 00:00:00'),
(18, 'brocasds.jpg', 'broca sds plus 1 / 4 * 6', 'no', 4, 1, 3358, 4366, 30, 19, 1007, 13433, 17463, 4030, '2019-05-12 00:00:00'),
(19, 'brocasds.jpg', 'broca sds plus 5 / 16 * 6', 'no', 3, 1, 4040, 5252, 30, 19, 1212, 12120, 15756, 3636, '2019-05-12 00:00:00'),
(20, 'brocasds.jpg', 'broca sds plus 3 / 8* 6', 'no', 4, 1, 5891, 7658, 30, 19, 1767, 23562, 30631, 7069, '2019-05-12 00:00:00'),
(21, 'brocasds.jpg', 'broca sds plus 1 / 2* 6', 'no', 3, 1, 9275, 12057, 30, 19, 2782, 27825, 36172, 8347, '2019-05-12 00:00:00'),
(22, 'ajusteprofu.jpg', 'ajustes de profu corneta pta estri#2', 'corneta', 20, 1, 1178, 1532, 30, 19, 353, 23562, 30631, 7069, '2019-05-12 00:00:00'),
(23, 'flexometro.jpg', 'flexometro Colima 3M', 'Colima', 12, 1, 3487, 4533, 30, 19, 1046, 41840, 54393, 12552, '2019-05-12 00:00:00'),
(24, 'flexometro.jpg', 'flexometro Colima 5m', 'Colima', 6, 1, 5611, 7294, 30, 19, 1683, 33665, 43765, 10100, '2019-05-12 00:00:00'),
(25, 'flexometro.jpg', 'flexometro Colima 8m', 'Colima', 6, 1, 11484, 14929, 30, 19, 3445, 68901, 89571, 20670, '2019-05-12 00:00:00'),
(26, 'lima.jpg', 'Lima gavilán cp/afilado 8. c/mango', 'Gavilan', 12, 1, 4611, 5995, 30, 19, 1383, 55335, 71936, 16601, '2019-05-12 00:00:00'),
(27, 'lima.jpg', 'Lima Triangu delgada P/Serr Gav', 'Gavilan', 12, 1, 2535, 3295, 30, 19, 760, 30416, 39541, 9125, '2019-05-12 00:00:00'),
(28, 'llanadentada.jpg', 'Llana dentada gavilan M/Madera 5x5', 'Gavilan', 3, 1, 16373, 21285, 30, 19, 4912, 49120, 63856, 14736, '2019-05-12 00:00:00'),
(29, 'machete.jpg', 'Machete Aguila Corneta 66Hn-18', 'Aguila Cornata', 2, 1, 14554, 18920, 30, 19, 4366, 29107, 37840, 8732, '2019-05-12 00:00:00'),
(30, 'machete.jpg', 'Machete Aguila Corneta 66Hn-20', 'Aguila Cornata', 2, 1, 14554, 18920, 30, 19, 4366, 29107, 37840, 8732, '2019-05-12 00:00:00'),
(31, 'machete.jpg', 'Machete G/C cachirev.Intermina164H-18', 'Gavilan', 3, 1, 12397, 16117, 30, 19, 3719, 37192, 48350, 11158, '2019-05-12 00:00:00'),
(32, 'machete.jpg', 'Machete G/C cachirev.Intermina164H-20', 'Gavilan', 3, 1, 12397, 16117, 30, 19, 3719, 37192, 48350, 11158, '2019-05-12 00:00:00'),
(33, 'mandril.jpg', 'Mandril para sierra copa Barracuda 3/8', 'Barracuda', 3, 1, 8539, 11101, 30, 19, 2562, 25618, 33304, 7685, '2019-05-12 00:00:00'),
(34, 'mandril.jpg', 'Mandril para sierra copa Barracuda 7/16', 'Barracuda', 2, 1, 14727, 19146, 30, 19, 4418, 29455, 38291, 8836, '2019-05-12 00:00:00'),
(35, 'segueta.jpg', 'Segueta Bimetal Barracuda 18dts x 10 UD', 'Barracuda', 2, 1, 21182, 27537, 30, 19, 6355, 42364, 55073, 12709, '2019-05-12 00:00:00'),
(36, 'serrucho.jpg', 'Serrucho Curvo podador prof Gavilan 12', 'Gavilan', 6, 1, 14109, 18341, 30, 19, 4233, 84652, 110047, 25396, '2019-05-12 00:00:00'),
(37, 'serrucho.jpg', 'Serrucho construct DTE/Grande Colima 18', 'Colima', 2, 1, 16503, 21454, 30, 19, 4951, 33006, 42908, 9902, '2019-05-12 00:00:00'),
(38, 'brocasds.jpg', 'Tijera incolima todera 8.5', 'Incolima', 2, 1, 23840, 30993, 30, 19, 7152, 47681, 61985, 14304, '2019-05-12 00:00:00'),
(39, 'brocasds.jpg', 'Tijera multiuso mango plasmatico 7.5Plg', 'no', 6, 1, 4944, 6428, 30, 19, 1483, 29667, 38567, 8900, '2019-05-12 00:00:00'),
(40, 'brocasds.jpg', 'Tijera multiuso mango plasmatico 8.5Plg', 'no', 6, 1, 5500, 7150, 30, 19, 1650, 33001, 42901, 9900, '2019-05-12 00:00:00'),
(41, 'brocasds.jpg', 'Tijera incolima textilera Plstica 4-3/4', 'Incolima', 3, 1, 2543, 3306, 30, 19, 763, 7629, 9918, 2289, '2019-05-12 00:00:00'),
(42, 'brocasds.jpg', 'Resorte pra tijera podadora', 'no', 6, 1, 4161, 5410, 30, 19, 1248, 24969, 32459, 7491, '2019-05-12 00:00:00'),
(43, 'brocasds.jpg', 'Gafa de seguridad Corneta', 'Corneta', 12, 1, 1987, 2583, 30, 19, 596, 23848, 31002, 7154, '2019-05-12 00:00:00'),
(44, 'brocasds.jpg', 'Gafa de seguridad Corneta Ambar', 'Corneta', 12, 1, 2487, 3233, 30, 19, 746, 29845, 38799, 8954, '2019-05-12 00:00:00'),
(45, 'brocasds.jpg', 'Gafa de seguridad Corneta Gris', 'Corneta', 12, 1, 2487, 3233, 30, 19, 746, 29845, 38799, 8954, '2019-05-12 00:00:00'),
(46, 'brocasds.jpg', 'Rastrillo Plastico barre prado Colima s/m 22', 'Colima', 3, 1, 4498, 5848, 30, 19, 1349, 13495, 17543, 4048, '2019-05-12 00:00:00'),
(47, 'brocasds.jpg', 'Disco Barracuda D/Sierra 4-1/2 x 24dtes', 'Barracuda', 3, 1, 7226, 9393, 30, 19, 2168, 21677, 28180, 6503, '2019-05-12 00:00:00'),
(48, 'brocasds.jpg', 'Disco Barracuda D/Sierra 4-1/2 x 40dtes', 'Barracuda', 3, 1, 11357, 14765, 30, 19, 3407, 34072, 44294, 10222, '2019-05-12 00:00:00'),
(49, 'brocasds.jpg', 'Disco Corneta C/Fino metal 4-1/2*0.045 7/8', 'Corneta', 50, 1, 990, 1287, 30, 19, 297, 49504, 64355, 14851, '2019-05-12 00:00:00'),
(50, 'brocasds.jpg', 'Disco Corneta diamantado segmentado 4-1/2', 'Corneta', 6, 1, 4498, 5848, 30, 19, 1349, 26989, 35086, 8097, '2019-05-12 00:00:00'),
(51, 'brocasds.jpg', 'Disco Corneta diamantado segmentado continuo 4-1/2', 'Corneta', 6, 1, 4498, 5848, 30, 19, 1349, 26989, 35086, 8097, '2019-05-12 00:00:00'),
(52, 'brocasds.jpg', 'Pistola p/pintar baja presion Corneta', 'Corneta', 2, 1, 32285, 41970, 30, 19, 9685, 64569, 83940, 19371, '2019-05-12 00:00:00'),
(53, 'brocasds.jpg', 'Pistola de gravedad Corneta 400cc', 'Corneta', 5, 1, 32285, 41970, 30, 19, 9685, 161424, 209851, 48427, '2019-05-12 00:00:00'),
(54, 'brocasds.jpg', 'Pintura spray Corneta alta tempre n 1200 Negro', 'Corneta', 3, 1, 7973, 10365, 30, 19, 2392, 23919, 31095, 7176, '2019-05-12 00:00:00'),
(55, 'brocasds.jpg', 'Pintura spray Corneta alta tempre n 1300 Plata', 'Corneta', 3, 1, 8497, 11046, 30, 19, 2549, 25490, 33137, 7647, '2019-05-12 00:00:00'),
(56, 'brocasds.jpg', 'Pintura spray Corneta anticorrosivo Rojo N 1201', 'Corneta', 3, 1, 5474, 7116, 30, 19, 1642, 16422, 21349, 4927, '2019-05-12 00:00:00'),
(57, 'brocasds.jpg', 'Pintura spray Corneta anticorrosivo Blanco', 'Corneta', 3, 1, 5474, 7116, 30, 19, 1642, 16422, 21349, 4927, '2019-05-12 00:00:00'),
(58, 'brocasds.jpg', 'Pintura spray Corneta anticorrosivo Negro', 'Corneta', 3, 1, 5474, 7116, 30, 19, 1642, 16422, 21349, 4927, '2019-05-12 00:00:00'),
(59, 'brocasds.jpg', 'Aceite Corneta penetrante industrial 220Ml', 'Corneta', 6, 1, 4498, 5848, 30, 19, 1349, 26989, 35086, 8097, '2019-05-12 00:00:00'),
(60, 'brocasds.jpg', 'Aceite Corneta penetrante industrial 450Ml', 'Corneta', 6, 1, 5950, 7735, 30, 19, 1785, 35700, 46410, 10710, '2019-05-12 00:00:00'),
(61, 'brocasds.jpg', 'Brocha Gavilan d/cerda Pelo Mono 1', 'Gavilan', 6, 1, 1811, 2355, 30, 19, 543, 10867, 14127, 3260, '2019-05-12 00:00:00'),
(62, 'brocasds.jpg', 'Brocha Gavilan d/cerda Pelo Mono 1-1/2', 'Gavilan', 6, 1, 2110, 2743, 30, 19, 633, 12659, 16457, 3798, '2019-05-12 00:00:00'),
(63, 'brocasds.jpg', 'Brocha Gavilan d/cerda Pelo Mono 2', 'Gavilan', 6, 1, 2600, 3380, 30, 19, 780, 15601, 20281, 4680, '2019-05-12 00:00:00'),
(64, 'brocasds.jpg', 'Brocha Gavilan d/cerda Pelo Mono 2-1/2', 'Gavilan', 6, 1, 3349, 4353, 30, 19, 1005, 20092, 26120, 6028, '2019-05-12 00:00:00'),
(65, 'brocasds.jpg', 'Brocha Gavilan d/cerda Pelo Mono 3', 'Gavilan', 6, 1, 4574, 5947, 30, 19, 1372, 27446, 35680, 8234, '2019-05-12 00:00:00'),
(66, 'brocasds.jpg', 'Brocha Gavilan d/cerda Pelo Mono 4', 'Gavilan', 6, 1, 7120, 9256, 30, 19, 2136, 42719, 55534, 12816, '2019-05-12 00:00:00'),
(67, 'brocasds.jpg', 'Espatula para drywall', 'no', 2, 1, 9162, 11910, 30, 19, 2749, 18324, 23821, 5497, '2019-05-12 00:00:00'),
(68, 'brocasds.jpg', 'Azadon Colima Cafetero 3753-2lb', 'Colima', 3, 1, 15589, 20266, 30, 19, 4677, 46767, 60797, 14030, '2019-05-12 00:00:00'),
(69, 'brocasds.jpg', 'Barra Colima 16lbs', 'Colima', 2, 1, 47838, 62189, 30, 19, 14351, 95676, 124379, 28703, '2019-05-12 00:00:00'),
(70, 'brocasds.jpg', 'Promoc Cuchilla guad/colima 350x1 Negra', 'Colima', 6, 1, 4154, 5401, 30, 19, 1246, 24926, 32403, 7478, '2019-05-12 00:00:00'),
(71, 'brocasds.jpg', 'Promoc Cuchilla Col ancha 350*3/4 Negra', 'Colima', 3, 1, 4155, 5402, 30, 19, 1247, 12466, 16206, 3740, '2019-05-12 00:00:00'),
(72, 'brocasds.jpg', 'Nylon Gavilan Negrox150Mts carrete Naranja', 'Gavilan', 1, 1, 54319, 70614, 30, 19, 16296, 54319, 70614, 16296, '2019-05-12 00:00:00'),
(73, 'brocasds.jpg', 'Lima colima con mango negro', 'Colima', 12, 1, 2235, 2905, 30, 19, 670, 26818, 34863, 8045, '2019-05-12 00:00:00'),
(74, 'brocasds.jpg', 'Martillo Colima 20MM', 'Colima', 2, 1, 10552, 13717, 30, 19, 3166, 21103, 27434, 6331, '2019-05-12 00:00:00'),
(75, 'brocasds.jpg', 'Martillo Colima 25MM', 'Colima', 2, 1, 12631, 16420, 30, 19, 3789, 25261, 32840, 7578, '2019-05-12 00:00:00'),
(76, 'brocasds.jpg', 'Martillo Colima 27MM', 'Colima', 2, 1, 13385, 17401, 30, 19, 4016, 26770, 34801, 8031, '2019-05-12 00:00:00'),
(77, 'brocasds.jpg', 'Pala Cargadora Colima Cuadrada #2', 'Colima', 2, 1, 9913, 12887, 30, 19, 2974, 19825, 25773, 5948, '2019-05-12 00:00:00'),
(78, 'brocasds.jpg', 'Pala Colima Cuadrada #4', 'Colima', 2, 1, 14851, 19307, 30, 19, 4455, 29702, 38613, 8911, '2019-05-12 00:00:00'),
(79, 'brocasds.jpg', 'Pala redonda estandar Colima N4', 'Colima', 6, 1, 11460, 14898, 30, 19, 3438, 68758, 89386, 20627, '2019-05-12 00:00:00'),
(80, 'brocasds.jpg', 'Pala redonda estandar Colima N2', 'Colima', 6, 1, 9170, 11921, 30, 19, 2751, 55021, 71527, 16506, '2019-05-12 00:00:00'),
(81, 'brocasds.jpg', 'Palin hoyador Colima N2', 'Colima', 6, 1, 9913, 12887, 30, 19, 2974, 59476, 77319, 17843, '2019-05-12 00:00:00'),
(82, 'brocasds.jpg', 'Pala Colima Cavador Draga', 'Colima', 2, 1, 33168, 43118, 30, 19, 9950, 66335, 86236, 19901, '2019-05-12 00:00:00'),
(83, 'brocasds.jpg', 'Pala Colima redonda pequeña con cabo', 'Colima', 2, 1, 12871, 16732, 30, 19, 3861, 25742, 33465, 7723, '2019-05-12 00:00:00'),
(84, 'brocasds.jpg', 'Pala Colima cuadrada pequeña con cabo', 'Colima', 2, 1, 12871, 16732, 30, 19, 3861, 25742, 33465, 7723, '2019-05-12 00:00:00'),
(85, 'brocasds.jpg', 'Zapapico forjado Colima 5lbs', 'Colima', 3, 1, 17449, 22684, 30, 19, 5235, 52347, 68051, 15704, '2019-05-12 00:00:00'),
(86, 'brocasds.jpg', 'Zapapico Colima c/Cabo 5lbs', 'Colima', 1, 1, 31750, 41276, 30, 19, 9525, 31750, 41276, 9525, '2019-05-12 00:00:00'),
(87, 'brocasds.jpg', 'Carretilla Colima econo tolva amarilla5.5pies', 'Colima', 2, 1, 110000, 143000, 30, 19, 33000, 220000, 286000, 66000, '2019-05-12 00:00:00'),
(88, 'brocasds.jpg', 'Carretilla Colima econo tolva amarilla5.5pies', 'Colima', 2, 1, 110000, 143000, 30, 19, 33000, 220000, 286000, 66000, '2019-05-12 00:00:00'),
(89, 'brocasds.jpg', 'Machete Colima 164Hn 18 C/amarilla', 'Colima', 6, 1, 9034, 11745, 30, 19, 2710, 54207, 70469, 16262, '2019-05-12 00:00:00'),
(90, 'brocasds.jpg', 'Machete Colima 164Hn 20 C/amarilla', 'Colima', 6, 1, 9034, 11745, 30, 19, 2710, 54207, 70469, 16262, '2019-05-12 00:00:00'),
(91, 'brocasds.jpg', 'Machete Colima 721H 18 C/amarilla', 'Colima', 3, 1, 9034, 11745, 30, 19, 2710, 27103, 35234, 8131, '2019-05-12 00:00:00'),
(92, 'brocasds.jpg', 'Machete Colima 721H 20 C/amarilla', 'Colima', 3, 1, 8687, 11293, 30, 19, 2606, 26061, 33879, 7818, '2019-05-12 00:00:00'),
(93, 'brocasds.jpg', 'Llana Lisa Colima M/Plastico 15x5', 'Colima', 12, 1, 6262, 8140, 30, 19, 1879, 75141, 97684, 22542, '2019-05-12 00:00:00'),
(94, 'brocasds.jpg', 'Llana  Dentada Colima M/PL porcelana 10x10', 'Colima', 3, 1, 6720, 8736, 30, 19, 2016, 20160, 26208, 6048, '2019-05-12 00:00:00'),
(95, 'brocasds.jpg', 'Corta banano (Desjarretadera)', 'Colima', 3, 1, 11225, 14593, 30, 19, 3368, 33676, 43779, 10103, '2019-05-12 00:00:00'),
(96, 'brocasds.jpg', 'Alicate diablo Colima 10', 'Colima', 3, 1, 19338, 25139, 30, 19, 5801, 58013, 75416, 17404, '2019-05-12 00:00:00'),
(97, 'brocasds.jpg', 'Rafia milenio Cordillera N3 1/8', 'no', 1, 5, 50034, 65044, 30, 19, 15010, 50034, 65044, 15010, '2019-05-12 00:00:00'),
(98, 'brocasds.jpg', 'Rafia milenio Cordillera N6 1/4x500', 'no', 1, 5, 84926, 110403, 30, 19, 25478, 84926, 110403, 25478, '2019-05-12 00:00:00'),
(99, 'brocasds.jpg', 'Rafia milenio Cordillera N8 5/16x400', 'no', 1, 5, 121825, 158373, 30, 19, 36548, 121825, 158373, 36548, '2019-05-12 00:00:00'),
(100, 'brocasds.jpg', 'abrazadera mini-4 10 16MM 44230x10', 'no', 10, 1, 419, 545, 30, 19, 126, 4189, 5445, 1257, '2019-05-12 00:00:00'),
(101, 'brocasds.jpg', 'Abrazadera mini-6 12-19MM 44231x10', 'no', 10, 1, 439, 571, 30, 19, 132, 4391, 5708, 1317, '2019-05-12 00:00:00'),
(102, 'brocasds.jpg', 'Arco profesion tubula P/segueta 12 10234', 'no', 2, 1, 20726, 26944, 30, 19, 6218, 41452, 53888, 12436, '2019-05-12 00:00:00'),
(103, 'brocasds.jpg', 'Arco D/Solera P/segueta 12  Pretul 20017', 'no', 6, 1, 9372, 12184, 30, 19, 2812, 56235, 73105, 16870, '2019-05-12 00:00:00'),
(104, 'brocasds.jpg', 'Conector macho y hembra 1/2 pretul', 'no', 6, 1, 4549, 5914, 30, 19, 1365, 27296, 35485, 8189, '2019-05-12 00:00:00'),
(105, 'brocasds.jpg', 'Valvula Globo Laton Roscable 1/2', 'no', 6, 1, 10889, 14155, 30, 19, 3267, 65331, 84930, 19599, '2019-05-12 00:00:00'),
(106, 'brocasds.jpg', 'Broca para vidrio y azulejo 1/4', 'no', 4, 1, 3889, 5056, 30, 19, 1167, 15556, 20222, 4667, '2019-05-12 00:00:00'),
(107, 'brocasds.jpg', 'Broca Plana/manita 1/2', 'no', 3, 1, 2752, 3578, 30, 19, 826, 8257, 10735, 2477, '2019-05-12 00:00:00'),
(108, 'brocasds.jpg', 'Broca Plana/manita 7/8', 'no', 3, 1, 3431, 4460, 30, 19, 1029, 10292, 13380, 3088, '2019-05-12 00:00:00'),
(109, 'brocasds.jpg', 'Broca Plana de 1 ', 'no', 3, 1, 3589, 4666, 30, 19, 1077, 10767, 13997, 3230, '2019-05-12 00:00:00'),
(110, 'brocasds.jpg', 'Broca Plana de 1/4 ', 'no', 3, 1, 2586, 3362, 30, 19, 776, 7758, 10085, 2327, '2019-05-12 00:00:00'),
(111, 'brocasds.jpg', 'Broca Plana de 1-1/8 ', 'no', 3, 1, 3712, 4825, 30, 19, 1113, 11135, 14475, 3340, '2019-05-12 00:00:00'),
(112, 'brocasds.jpg', 'Broca Plana de 3/4 ', 'no', 3, 1, 3388, 4404, 30, 19, 1016, 10164, 13213, 3049, '2019-05-12 00:00:00'),
(113, 'brocasds.jpg', 'Broca Plana de 3/8 ', 'no', 3, 1, 2752, 3578, 30, 19, 826, 8257, 10735, 2477, '2019-05-12 00:00:00'),
(114, 'brocasds.jpg', 'Broca Plana de 5/8 ', 'no', 3, 1, 3031, 3940, 30, 19, 909, 9093, 11821, 2728, '2019-05-12 00:00:00'),
(115, 'brocasds.jpg', 'Broca Plana de 1-1/2 ', 'no', 3, 1, 5185, 6740, 30, 19, 1555, 15554, 20221, 4666, '2019-05-12 00:00:00'),
(116, 'brocasds.jpg', 'Cinta de montaje 5M nuevo', 'no', 3, 1, 2831, 3680, 30, 19, 849, 8493, 11041, 2548, '2019-05-12 00:00:00'),
(117, 'brocasds.jpg', 'Espatula Flexible de acero inoxidable 4 ', 'no', 3, 1, 7593, 9871, 30, 19, 2278, 22780, 29614, 6834, '2019-05-12 00:00:00'),
(118, 'brocasds.jpg', 'Espatula Flexible de acero inoxidable 5 ', 'no', 3, 1, 8713, 11327, 30, 19, 2614, 26140, 33981, 7842, '2019-05-12 00:00:00'),
(119, 'brocasds.jpg', 'Espatula Flexible de acero inoxidable 6 ', 'no', 3, 1, 8925, 11603, 30, 19, 2678, 26775, 34808, 8033, '2019-05-12 00:00:00'),
(120, 'brocasds.jpg', 'Volteador de aluminio 11x5 ', 'no', 2, 1, 8000, 10400, 30, 19, 2400, 16001, 20801, 4800, '2019-05-12 00:00:00'),
(121, 'brocasds.jpg', 'Atomizador de 1 litro', 'no', 6, 1, 3869, 5029, 30, 19, 1161, 23212, 30176, 6964, '2019-05-12 00:00:00'),
(122, 'brocasds.jpg', 'Atomizador de 1/2 litro', 'no', 6, 1, 2792, 3629, 30, 19, 838, 16750, 21776, 5025, '2019-05-12 00:00:00'),
(123, 'brocasds.jpg', 'Calibrador Vernier de 5  pretul', 'no', 6, 1, 7537, 9799, 30, 19, 2261, 45225, 58792, 13567, '2019-05-13 00:00:00'),
(124, 'brocasds.jpg', 'Linterna 11 Leds recargable ', 'no', 2, 1, 13560, 17628, 30, 19, 4068, 27120, 35256, 8136, '2019-05-14 00:00:00'),
(125, 'brocasds.jpg', 'Linterna recargable de 1 led 90 LM', 'no', 2, 1, 14318, 18614, 30, 19, 4295, 28636, 37227, 8591, '2019-05-15 00:00:00'),
(126, 'brocasds.jpg', 'Linterna recargable de 5Led pretul', 'no', 2, 1, 7977, 10370, 30, 19, 2393, 15953, 20739, 4786, '2019-05-16 00:00:00'),
(127, 'brocasds.jpg', 'JGO D/llave alle MM T/Llaver 8PZAS', 'no', 2, 1, 2179, 2833, 30, 19, 654, 4358, 5665, 1307, '2019-05-17 00:00:00'),
(128, 'brocasds.jpg', 'JGO para instalar cerraduras 5PZAS', 'no', 3, 1, 7327, 9525, 30, 19, 2198, 21980, 28575, 6594, '2019-05-18 00:00:00'),
(129, 'brocasds.jpg', 'JGO10 Llave allen 1.5-10MM Negras', 'no', 2, 1, 6411, 8334, 30, 19, 1923, 12821, 16667, 3846, '2019-05-19 00:00:00'),
(130, 'brocasds.jpg', 'Punta PH2 x20 1-15/16 P/Des-Pu-290', 'no', 2, 1, 10529, 13688, 30, 19, 3159, 21058, 27376, 6317, '2019-05-20 00:00:00'),
(131, 'brocasds.jpg', 'JGO 29 dados 1/4  y 3/8  Pretul', 'no', 1, 1, 25790, 33527, 30, 19, 7737, 25790, 33527, 7737, '2019-05-21 00:00:00'),
(132, 'brocasds.jpg', 'Punta PH2 x20 1-15/16 P/Des-Pu-290', 'no', 2, 1, 10529, 13688, 30, 19, 3159, 21058, 27376, 6317, '2019-05-20 00:00:00'),
(133, 'brocasds.jpg', 'Set de herramientas 42 PZAS', 'no', 1, 1, 65569, 85240, 30, 19, 19671, 65569, 85240, 19671, '2019-05-21 00:00:00'),
(134, 'brocasds.jpg', 'Revolvedor de pintura 20 ', 'no', 6, 1, 11282, 14667, 30, 19, 3385, 67694, 88003, 20308, '2019-05-20 00:00:00'),
(135, 'brocasds.jpg', 'Cautin tipo lapiz 30w,120w s/acees', 'no', 3, 1, 7345, 9548, 30, 19, 2203, 22034, 28644, 6610, '2019-05-21 00:00:00'),
(136, 'brocasds.jpg', 'Cepillo de alambre 10 ', 'no', 24, 1, 2512, 3266, 30, 19, 754, 60290, 78377, 18087, '2019-05-20 00:00:00'),
(137, 'brocasds.jpg', 'Cepillo de alambre C/MGO 4x16 Hileras', 'no', 6, 1, 3125, 4062, 30, 19, 937, 18750, 24375, 5625, '2019-05-21 00:00:00'),
(138, 'brocasds.jpg', 'Candado Hierro llave Trad 40MM blis', 'no', 6, 1, 3499, 4548, 30, 19, 1050, 20992, 27289, 6297, '2019-05-20 00:00:00'),
(139, 'brocasds.jpg', 'Candado Hierro llave Trad 50MM blis', 'no', 6, 1, 5143, 6686, 30, 19, 1543, 30859, 40117, 9258, '2019-05-21 00:00:00'),
(140, 'brocasds.jpg', 'Candado Hierro llave trad 30MM blis', 'no', 6, 1, 3006, 3908, 30, 19, 902, 18036, 23446, 5411, '2019-05-20 00:00:00'),
(141, 'brocasds.jpg', 'Candado Bicicleta con llave 12MM', 'no', 2, 1, 13601, 17681, 30, 19, 4080, 27201, 35361, 8160, '2019-05-21 00:00:00'),
(142, 'brocasds.jpg', 'Candado Bicicleta 8MM de combinación', 'no', 2, 1, 11965, 15555, 30, 19, 3590, 23931, 31110, 7179, '2019-05-20 00:00:00'),
(143, 'brocasds.jpg', 'candado Hierro 20MM blister', 'no', 12, 1, 2148, 2792, 30, 19, 644, 25775, 33508, 7733, '2019-05-21 00:00:00'),
(144, 'brocasds.jpg', 'Engrapadora tipo pistola, Pretul', 'no', 3, 1, 22414, 29138, 30, 19, 6724, 67241, 87413, 20172, '2019-05-20 00:00:00'),
(145, 'brocasds.jpg', 'Cinchoplas 550x4 6x1.5mm', 'no', 6, 9, 4267, 5548, 30, 19, 1280, 25604, 33285, 7681, '2019-05-21 00:00:00'),
(146, 'brocasds.jpg', 'Cinta D/Empaque transp 48MMx40M', 'no', 12, 1, 1492, 1940, 30, 19, 448, 17907, 23279, 5372, '2019-05-20 00:00:00'),
(147, 'Cinta_de_Montaje_2.28M', 'Cinta de Montaje 2.28M', 'no', 6, 1, 1954, 2540, 30, 19, 586, 11724, 15240, 3516, '2019-05-09 00:16:10'),
(148, 'brocasds.jpg', 'Cinta larga de acero de 30M', 'no', 2, 1, 17823, 23169, 30, 19, 5347, 35645, 46339, 10694, '2019-05-20 00:00:00'),
(149, 'brocasds.jpg', 'Cinta de teflon 1/2 x7m', 'no', 20, 1, 556, 722, 30, 19, 167, 11115, 14449, 3334, '2019-05-21 00:00:00'),
(150, 'brocasds.jpg', 'Cinta P/Duct  60.8mmx10m refue/Tela', 'no', 6, 1, 2468, 3208, 30, 19, 740, 14808, 19251, 4443, '2019-05-20 00:00:00'),
(151, 'brocasds.jpg', 'Cinta D/empaque transp 48MMx150M Blis', 'no', 6, 1, 4711, 6125, 30, 19, 1413, 28267, 36747, 8480, '2019-05-21 00:00:00'),
(152, 'brocasds.jpg', 'Banda Preocupacion de plastico', 'no', 3, 1, 16784, 21819, 30, 19, 5035, 50351, 65457, 15105, '2019-05-20 00:00:00'),
(153, 'brocasds.jpg', 'Banda D/Plastic  Preocupación  300FT', 'no', 3, 1, 6510, 8464, 30, 19, 1953, 19531, 25391, 5859, '2019-05-21 00:00:00'),
(154, 'brocasds.jpg', 'Cincel de corte frio 3/4x8 ', 'no', 6, 1, 6501, 8451, 30, 19, 1950, 39006, 50708, 11702, '2019-05-20 00:00:00'),
(155, 'brocasds.jpg', 'Cincel SDS de punta ', 'no', 6, 1, 4786, 6222, 30, 19, 1436, 28717, 37332, 8615, '2019-05-21 00:00:00'),
(156, 'brocasds.jpg', 'Cincel SDS Plano 3/4', 'no', 6, 1, 4786, 6222, 30, 19, 1436, 28717, 37332, 8615, '2019-05-20 00:00:00'),
(157, 'brocasds.jpg', 'Cortador de tubo PVC Haste 1-5/8 ', 'no', 2, 1, 15156, 19703, 30, 19, 4547, 30312, 39405, 9094, '2019-05-21 00:00:00'),
(158, 'brocasds.jpg', 'Recolector de fruta sin mango', 'no', 2, 1, 11606, 15088, 30, 19, 3482, 23212, 30176, 6964, '2019-05-20 00:00:00'),
(159, 'brocasds.jpg', 'Nivel 14 ,Pretul', 'no', 3, 1, 7649, 9944, 30, 19, 2295, 22948, 29832, 6884, '2019-05-21 00:00:00'),
(160, 'brocasds.jpg', 'Nivel 18  ,Pretul ', 'no', 3, 1, 10244, 13317, 30, 19, 3073, 30731, 39950, 9219, '2019-05-20 00:00:00'),
(161, 'brocasds.jpg', 'Nivel 24  ,Pretul', 'no', 3, 1, 12436, 16166, 30, 19, 3731, 37307, 48498, 11192, '2019-05-21 00:00:00'),
(162, 'brocasds.jpg', 'Repuesto P/Cutter Cut-6 y 6x C/10H', 'no', 6, 1, 2273, 2955, 30, 19, 682, 13637, 17729, 4091, '2019-05-20 00:00:00'),
(163, 'brocasds.jpg', 'Marro Octagonal 2LBS mango  12 ', 'no', 2, 1, 13866, 18026, 30, 19, 4160, 27732, 36051, 8320, '2019-05-21 00:00:00'),
(164, 'brocasds.jpg', 'Marro Octagonal 3LBS mango 12 ', 'no', 2, 1, 17913, 23287, 30, 19, 5374, 35826, 46574, 10748, '2019-05-20 00:00:00'),
(165, 'brocasds.jpg', 'Marro Octagonal 4LBS mango 12 ', 'no', 2, 1, 21256, 27633, 30, 19, 6377, 42512, 55265, 12753, '2019-05-21 00:00:00'),
(166, 'Adaptadores_x10_516_PDES-Pun-2901.jpg', 'Adaptadores x10 5/16 P/DES-Pun-290', 'no', 2, 1, 20980, 27274, 30, 19, 6294, 41960, 54548, 12588, '2019-05-09 09:02:17'),
(167, 'brocasds.jpg', 'Escuadra P/Carpiente 12  acero inox', 'no', 2, 1, 10649, 13844, 30, 19, 3195, 21299, 27688, 6390, '2019-05-21 00:00:00'),
(168, 'brocasds.jpg', 'Escuadra P/Carpiente 10  acer ino', 'no', 2, 1, 10370, 13481, 30, 19, 3111, 20739, 26961, 6222, '2019-05-20 00:00:00'),
(169, 'brocasds.jpg', 'Serrucho para muros de yeso 6 Pre nuevo', 'no', 6, 1, 3989, 5186, 30, 19, 1197, 23933, 31113, 7180, '2019-05-21 00:00:00'),
(170, 'brocasds.jpg', 'Cables P/Corriente 2.5M 10awg pret', 'no', 2, 1, 12577, 16350, 30, 19, 3773, 25154, 32700, 7546, '2019-05-20 00:00:00'),
(171, 'brocasds.jpg', 'Cables pasacorriente 3M,Calibre 8', 'no', 1, 1, 33647, 43741, 30, 19, 10094, 33647, 43741, 10094, '2019-05-21 00:00:00'),
(172, 'brocasds.jpg', 'Grapa P/Pistola ET-21 de 5/16 100 PZAS', 'no', 10, 1, 1874, 2437, 30, 19, 562, 18743, 24365, 5623, '2019-05-20 00:00:00'),
(173, 'brocasds.jpg', 'Cuter 6  Pretul', 'no', 12, 1, 1157, 1504, 30, 19, 347, 13880, 18044, 4164, '2019-05-21 00:00:00'),
(174, 'brocasds.jpg', 'Lave P/tubo stilson 8  Pretul', 'no', 1, 1, 9812, 12755, 30, 19, 2943, 9812, 12755, 2943, '2019-05-20 00:00:00'),
(175, 'brocasds.jpg', 'Llave para tubo stilson 10  Pretul', 'no', 1, 1, 12723, 16541, 30, 19, 3817, 12723, 16541, 3817, '2019-05-21 00:00:00'),
(176, 'brocasds.jpg', 'Llave para tubo stilson 12  Pretul', 'no', 1, 1, 16711, 21725, 30, 19, 5013, 16711, 21725, 5013, '2019-05-20 00:00:00'),
(177, 'brocasds.jpg', 'Llave jardin esfera de 1/2 pretul', 'no', 6, 1, 3989, 5186, 30, 19, 1197, 23933, 31113, 7180, '2019-05-21 00:00:00'),
(178, 'brocasds.jpg', 'Llave de nariz para jardin 1/2', 'no', 12, 1, 6462, 8400, 30, 19, 1939, 77540, 100803, 23262, '2019-05-20 00:00:00'),
(179, 'brocasds.jpg', 'Llave de nariz para jardin 1/2 cromada', 'no', 12, 1, 9094, 11822, 30, 19, 2728, 109128, 141866, 32738, '2019-05-21 00:00:00'),
(180, 'brocasds.jpg', 'Manguera reforzada 4 capas 1/2 100m', 'no', 1, 9, 98127, 127566, 30, 19, 29438, 98127, 127566, 29438, '2019-05-20 00:00:00'),
(181, 'brocasds.jpg', 'Llave nariz, 59 gr,1/2 ,Plastica,pretul', 'no', 12, 1, 2905, 3776, 30, 19, 871, 34857, 45315, 10457, '2019-05-21 00:00:00'),
(182, 'brocasds.jpg', 'Perico 6  cromado blister pretul', 'no', 2, 1, 6382, 8297, 30, 19, 1915, 12764, 16593, 3829, '2019-05-20 00:00:00'),
(183, 'brocasds.jpg', 'Perioco 12  cromado blister pret', 'no', 2, 1, 17749, 23074, 30, 19, 5325, 35498, 46147, 10649, '2019-05-21 00:00:00'),
(184, 'brocasds.jpg', 'Perico 8  cromado blister pretul', 'no', 2, 1, 8575, 11148, 30, 19, 2573, 17150, 22295, 5145, '2019-05-20 00:00:00'),
(185, 'brocasds.jpg', 'Perico 10  cromado blister pretul', 'no', 2, 1, 12268, 15948, 30, 19, 3680, 24535, 31896, 7361, '2019-05-21 00:00:00'),
(186, 'brocasds.jpg', 'Pistola calafatea reforzada 8-1/2x2', 'no', 3, 1, 15743, 20465, 30, 19, 4723, 47228, 61396, 14168, '2019-05-20 00:00:00'),
(187, 'brocasds.jpg', 'Pistola calafatead  tipo esqueleto ', 'no', 6, 1, 5385, 7000, 30, 19, 1615, 32309, 42001, 9693, '2019-05-21 00:00:00'),
(188, 'brocasds.jpg', 'Pistola Plastica P/riego 5  pret', 'no', 6, 1, 2462, 3201, 30, 19, 739, 14773, 19204, 4432, '2019-05-20 00:00:00'),
(189, 'brocasds.jpg', 'Pistola 5 funciones pretul ', 'no', 6, 1, 3791, 4929, 30, 19, 1137, 22748, 29572, 6824, '2019-05-21 00:00:00'),
(190, 'brocasds.jpg', 'Pistola calafateadora Lisa  pretul ', 'no', 6, 1, 4973, 6465, 30, 19, 1492, 29838, 38789, 8951, '2019-05-20 00:00:00'),
(191, 'brocasds.jpg', 'Pistola metalica 2 funciones ', 'no', 3, 1, 11606, 15088, 30, 19, 3482, 34818, 45264, 10445, '2019-05-21 00:00:00'),
(192, 'brocasds.jpg', 'Pistola metalica para riego ', 'no', 6, 1, 10489, 13635, 30, 19, 3147, 62932, 81812, 18880, '2019-05-20 00:00:00'),
(193, 'brocasds.jpg', 'Pistola metalica 8 funciones', 'no', 3, 1, 13680, 17784, 30, 19, 4104, 41041, 53353, 12312, '2019-05-21 00:00:00'),
(194, 'brocasds.jpg', 'Estuche D/Herramientas basicas 30PZAS', 'no', 1, 1, 58530, 76089, 30, 19, 17559, 58530, 76089, 17559, '2019-05-20 00:00:00'),
(195, 'brocasds.jpg', 'Plomada de laton 12 oz', 'no', 1, 1, 26163, 34012, 30, 19, 7849, 26163, 34012, 7849, '2019-05-21 00:00:00'),
(196, 'brocasds.jpg', 'Plomada de zamac C/centro #2 pretul', 'no', 2, 1, 10649, 13844, 30, 19, 3195, 21299, 27688, 6390, '2019-05-20 00:00:00'),
(198, 'brocasds.jpg', 'Remachadora 10  pretul', 'no', 4, 1, 11525, 14983, 30, 19, 3458, 46101, 59931, 13830, '2019-05-20 00:00:00'),
(199, 'brocasds.jpg', 'Chiflon D Plastico P/mangera 4  Nuevo ', 'no', 12, 1, 1994, 2593, 30, 19, 598, 23933, 31113, 7180, '2019-05-21 00:00:00'),
(200, 'brocasds.jpg', 'Tijera de aviación recta', 'no', 3, 1, 17708, 23021, 30, 19, 5313, 53125, 69063, 15938, '2019-05-20 00:00:00'),
(201, 'brocasds.jpg', 'Tijera poda 2mano 19 mgos/encino pesada', 'no', 2, 1, 16752, 21777, 30, 19, 5025, 33503, 43554, 10051, '2019-05-21 00:00:00'),
(202, 'brocasds.jpg', 'Pinzas de puntat corte 6 ', 'no', 4, 1, 5305, 6897, 30, 19, 1592, 21220, 27586, 6366, '2019-05-20 00:00:00'),
(203, 'brocasds.jpg', 'Pinzas de corte diagonal 6 ', 'no', 4, 1, 5699, 7409, 30, 19, 1710, 22796, 29634, 6839, '2019-05-21 00:00:00'),
(204, 'brocasds.jpg', 'Pinzas de extension de 10 ', 'no', 2, 1, 15276, 19859, 30, 19, 4583, 30552, 39718, 9166, '2019-05-20 00:00:00'),
(205, 'brocasds.jpg', 'Pinza de presion mordaza curva de 10 ', 'no', 3, 1, 9812, 12755, 30, 19, 2943, 29435, 38265, 8830, '2019-05-21 00:00:00'),
(206, 'brocasds.jpg', 'Plomada de zamac C/centro #2 pretul', 'no', 2, 1, 10649, 13844, 30, 19, 3195, 21299, 27688, 6390, '2019-05-20 00:00:00'),
(207, 'brocasds.jpg', 'Bota vereda T.39', 'no', 2, 10, 17111, 22244, 30, 19, 5133, 34222, 44489, 10267, '2019-05-21 00:00:00'),
(208, 'brocasds.jpg', 'Bota vereda T.40', 'no', 2, 10, 17111, 22244, 30, 19, 5133, 34222, 44489, 10267, '2019-05-20 00:00:00'),
(209, 'brocasds.jpg', 'Bota vereda T.41', 'no', 2, 10, 17112, 22246, 30, 19, 5134, 34224, 44492, 10267, '2019-05-21 00:00:00'),
(210, 'brocasds.jpg', 'Bota vereda T.42', 'no', 2, 10, 17112, 22246, 30, 19, 5134, 34224, 44492, 10267, '2019-05-20 00:00:00'),
(211, 'brocasds.jpg', 'Sintesolda rapido 10 minutos x14G', 'no', 6, 1, 6303, 8194, 30, 19, 1891, 37821, 49167, 11346, '2019-05-21 00:00:00'),
(212, 'brocasds.jpg', 'Sintesolda  standard 24 Horas x 31G', 'no', 6, 1, 5793, 7531, 30, 19, 1738, 34758, 45185, 10427, '2019-05-20 00:00:00'),
(213, 'brocasds.jpg', 'Masilla lider epoxi Sintesolda x100g', 'no', 12, 1, 3332, 4332, 30, 19, 1000, 39984, 51979, 11995, '2019-05-21 00:00:00'),
(214, 'brocasds.jpg', 'Masilla lider epoxi Sintesolda x50g', 'no', 12, 1, 1726, 2243, 30, 19, 518, 20706, 26918, 6212, '2019-05-20 00:00:00'),
(215, 'brocasds.jpg', 'Masilla x30Gr estandar xs lider epoxi sintesolda', 'no', 12, 1, 1154, 1501, 30, 19, 346, 13852, 18007, 4155, '2019-05-21 00:00:00'),
(216, 'brocasds.jpg', 'Gastop fuerza media removible', 'no', 6, 1, 4641, 6033, 30, 19, 1392, 27846, 36200, 8354, '2019-05-20 00:00:00'),
(217, 'Poxitanke_Blanco_poximas_x_85G(54ML).jpg', 'Poxitanke Blanco poximas x 85G(54ML)', 'no', 2, 1, 8694, 11302, 30, 19, 2608, 17388, 22604, 5216, '2019-05-09 00:13:32'),
(218, 'brocasds.jpg', 'Poxitanke metalico poximas x 85G(54ML)', 'no', 2, 1, 8694, 11302, 30, 19, 2608, 17388, 22605, 5216, '2019-05-20 00:00:00'),
(219, 'brocasds.jpg', 'Poxitanke Negro poximas x 85G(54ML)', 'no', 2, 1, 8694, 11302, 30, 19, 2608, 17388, 22605, 5216, '2019-05-21 00:00:00'),
(220, 'brocasds.jpg', 'Disco abrasivo fino T1 7x0.055', 'no', 25, 1, 5213, 6777, 30, 19, 1564, 130335, 169435, 39100, '2019-05-20 00:00:00'),
(221, 'brocasds.jpg', 'Disco abrasivo fino T1 4-1/2x0.045', 'no', 25, 1, 2974, 3866, 30, 19, 892, 74345, 96649, 22304, '2019-05-21 00:00:00'),
(222, 'brocasds.jpg', 'Lija de agua profesional carburo de silico hoja H-98 080p', 'no', 50, 11, 749, 973, 30, 19, 225, 37426, 48653, 11228, '2019-05-20 00:00:00'),
(223, 'brocasds.jpg', 'Lija de agua profesional carburo de silico hoja H-98 100p', 'no', 50, 11, 749, 973, 30, 19, 225, 37426, 48653, 11228, '2019-05-21 00:00:00'),
(224, 'brocasds.jpg', 'Lija de agua profesional carburo de silico hoja H-98 120p', 'no', 50, 11, 681, 885, 30, 19, 204, 34034, 44244, 10210, '2019-05-20 00:00:00'),
(225, 'brocasds.jpg', 'Lija de agua profesional carburo de silico hoja H-98 150p', 'no', 150, 11, 681, 885, 30, 19, 204, 102102, 132733, 30631, '2019-05-21 00:00:00'),
(226, 'brocasds.jpg', 'Lija de agua profesional carburo de silico hoja H-98 180p', 'no', 50, 11, 681, 885, 30, 19, 204, 34034, 44244, 10210, '2019-05-20 00:00:00'),
(227, 'brocasds.jpg', 'Lija de agua profesional carburo de silico hoja H-98 220p', 'no', 50, 11, 576, 749, 30, 19, 173, 28798, 37437, 8639, '2019-05-21 00:00:00'),
(228, 'brocasds.jpg', 'Lija de agua profesional carburo de silico hoja H-98 320p', 'no', 50, 11, 576, 749, 30, 19, 173, 28798, 37437, 8639, '2019-05-20 00:00:00'),
(229, 'brocasds.jpg', 'Lija de agua profesional carburo de silico hoja H-98 400p', 'no', 50, 11, 576, 749, 30, 19, 173, 28798, 37437, 8639, '2019-05-21 00:00:00'),
(230, 'brocasds.jpg', 'Tela flexible rollo Jf87 150P fandeli 6 x 25M', 'no', 1, 5, 93519, 121574, 30, 19, 28056, 93519, 121574, 28056, '2019-05-20 00:00:00'),
(231, 'brocasds.jpg', 'Malla cuadrada multi 15x15x1MTx30M Negro', 'no', 30, 4, 3891, 5059, 30, 19, 1167, 116739, 151761, 35022, '2019-05-21 00:00:00'),
(232, 'brocasds.jpg', 'IMP.Cinta aislante amarilla ', 'no', 10, 1, 676, 879, 30, 19, 203, 6759, 8787, 2028, '2019-05-20 00:00:00'),
(233, 'brocasds.jpg', 'IMP.Cinta aislante azul ', 'no', 10, 1, 640, 832, 30, 19, 192, 6402, 8323, 1921, '2019-05-21 00:00:00'),
(234, 'brocasds.jpg', 'IMP.Cinta aislante Blanca ', 'no', 10, 1, 640, 832, 30, 19, 192, 6402, 8323, 1921, '2019-05-20 00:00:00'),
(235, 'brocasds.jpg', 'IMP.Cinta aislante pro negra 5mt', 'no', 10, 5, 1954, 2540, 30, 19, 586, 19540, 25402, 5862, '2019-05-21 00:00:00'),
(236, 'brocasds.jpg', 'IMP.Cinta aislante pro negra 15mt ', 'no', 10, 5, 1962, 2551, 30, 19, 589, 19623, 25510, 5887, '2019-05-20 00:00:00'),
(237, 'brocasds.jpg', 'Aceite 3-en-un gotero 30ml ', 'no', 12, 1, 2260, 2938, 30, 19, 678, 27118, 35253, 8135, '2019-05-21 00:00:00'),
(238, 'brocasds.jpg', 'Aceite 3-en-un gotero 90cc', 'no', 4, 1, 11525, 14983, 30, 19, 3458, 46101, 59931, 13830, '2019-05-20 00:00:00'),
(243, 'sinimg.png', 'Candado encartonado 38-50-63', 'no', 2, 1, 35670, 46371, 30, 19, 10701, 71340, 92742, 21402, '2019-05-08 18:05:05'),
(245, 'Candado_encartonado_32-38-50_1.jpg', 'Candado encartonado 32-38-50 ', 'no', 2, 1, 26861, 34919, 30, 19, 8058, 53722, 69838, 16116, '2019-05-08 18:07:24'),
(246, 'sinimg.png', 'Grapadora profesional', 'Drosh', 3, 1, 21240, 27612, 30, 19, 6372, 63720, 82836, 19116, '2019-05-08 18:15:18'),
(247, 'sinimg.png', 'remachadora Profesional 9.5 ', 'Generico', 3, 1, 10912, 14186, 30, 19, 3274, 32736, 42558, 9822, '2019-05-08 18:17:16'),
(248, 'sinimg.png', 'remachadora Profesional 9.5 ', 'Generico', 3, 1, 10912, 14186, 30, 19, 3274, 32736, 42558, 9822, '2019-05-08 18:17:16'),
(249, 'sinimg.png', 'Pasador Dorado 2x12PZAS en blister', 'Saco', 3, 12, 15798, 20537, 30, 19, 4739, 47394, 61611, 14217, '2019-05-08 19:03:25'),
(250, 'sinimg.png', 'Martillo Profesional MGO Madera 25MM', 'Drosh', 3, 1, 10160, 13208, 30, 19, 3048, 30480, 39624, 9144, '2019-05-08 19:08:03'),
(251, 'sinimg.png', 'dsafaser', 'Malla', 2, 1, 2788, 3624, 30, 19, 836, 5576, 7248, 1672, '2019-05-08 19:08:46'),
(252, 'sinimg.png', 'dsafaser', 'Malla', 2, 1, 2788, 3624, 30, 19, 836, 5576, 7248, 1672, '2019-05-08 19:08:46'),
(270, 'sinimg.png', 'dsafaser', 'asdfasdf', 24, 1, 288108, 380303, 32, 23, 92195, 6914592, 9127272, 2212680, '2019-05-08 22:46:08'),
(272, 'sinimg.png', 'Martillo profesional MGO madera 25MM', 'Drosh', 3, 1, 10172, 13224, 30, 19, 3052, 30516, 39671, 9155, '2019-05-06 00:00:00'),
(273, 'sinimg.png', 'Sierra Copa x 6 Pzas P/Madera', 'Drosh', 6, 1, 7750, 10076, 30, 19, 2325, 46503, 60454, 13951, '2019-05-07 00:00:00'),
(274, 'sinimg.png', 'Pasador cuadrado latonado  1 1/2', 'Drosh', 6, 1, 957, 1244, 30, 19, 287, 5741, 7463, 1722, '2019-05-08 00:00:00'),
(275, 'sinimg.png', 'Chapa Mueble ovalada cromada ', 'Ideace', 6, 1, 2549, 3314, 30, 19, 765, 15294, 19882, 4588, '2019-05-06 00:00:00'),
(276, 'sinimg.png', 'Candado de laton anticiazalla 70', 'Ideace', 2, 1, 48538, 63099, 30, 19, 14561, 97075, 126198, 29123, '2019-05-07 00:00:00'),
(277, 'sinimg.png', 'Agua Stop Negro (Caja)', 'Griplast', 6, 1, 2550, 3315, 30, 19, 765, 15301, 19891, 4590, '2019-05-08 00:00:00'),
(278, 'sinimg.png', 'Agua Stop verde agua marina (Blister)', 'Griplast', 6, 1, 3213, 4177, 30, 19, 964, 19278, 25061, 5783, '2019-05-06 00:00:00'),
(279, 'sinimg.png', 'G4-Rodachin Naranja 2', 'Gener', 12, 1, 2300, 2990, 30, 19, 690, 27603, 35884, 8281, '2019-05-07 00:00:00'),
(280, 'sinimg.png', 'G4-Precio x 6 chapa alcoba pomo madera oscura - OB', 'no', 1, 1, 53100, 69030, 30, 19, 15930, 53100, 69030, 15930, '2019-05-08 00:00:00'),
(281, 'sinimg.png', 'G4-Precio x 6 candado bronce ovalado 60MM', 'Drosh', 1, 14, 112200, 145860, 30, 19, 33660, 112200, 145860, 33660, '2019-05-06 00:00:00'),
(282, 'sinimg.png', 'G4-Precio x 6 Chapa alcoba pomo madera clara-OB', 'Drosh', 1, 1, 53100, 69030, 30, 19, 15930, 53100, 69030, 15930, '2019-05-07 00:00:00'),
(283, 'sinimg.png', 'Varilla roscada G2 zincada 5/16-18 x 1 MT-C.A Mejia', 'no', 6, 1, 1875, 2438, 30, 19, 563, 11253, 14628, 3376, '2019-05-08 00:00:00'),
(284, 'sinimg.png', 'Varilla roscada G2 zincada 1/2-13 x 1 MT-CA Mejia', 'no', 6, 1, 5078, 6601, 30, 19, 1523, 30466, 39606, 9140, '2019-05-06 00:00:00'),
(285, 'sinimg.png', 'Guante Negro C-25 industrial T-9 Triton ', 'Goya', 6, 10, 4040, 5252, 30, 19, 1212, 24240, 31512, 7272, '2019-05-07 00:00:00'),
(286, 'sinimg.png', 'Guante Negro C-25 industrial T-10 Diesel ', 'Goya', 3, 10, 3584, 4660, 30, 19, 1075, 10753, 13979, 3226, '2019-05-08 00:00:00'),
(287, 'sinimg.png', 'Rodillo Fibra poliester rayas naranjas junior 1 1/2', 'Goya', 3, 1, 1956, 2543, 30, 19, 587, 5869, 7630, 1761, '2019-05-06 00:00:00'),
(288, 'sinimg.png', 'Rodillo  Fibra poliester rayas naranjas junior 2', 'Goya', 3, 1, 2107, 2740, 30, 19, 632, 6322, 8219, 1897, '2019-05-07 00:00:00'),
(289, 'sinimg.png', 'Rodillo Fibra poliester rayas naranjas junior 3', 'Goya', 3, 1, 2486, 3232, 30, 19, 746, 7458, 9695, 2237, '2019-05-08 00:00:00'),
(290, 'sinimg.png', 'Rodillo Fibra poliester rayas naranjas junior 5', 'Goya', 3, 1, 3549, 4613, 30, 19, 1065, 10646, 13839, 3194, '2019-05-06 00:00:00'),
(291, 'sinimg.png', 'Rodillo Felpa Insutrial 9 verde bricolaje ', 'Goya', 3, 1, 4201, 5461, 30, 19, 1260, 12602, 16383, 3781, '2019-05-07 00:00:00'),
(292, 'sinimg.png', 'Pincel Madera plano 05', 'Caribe', 6, 1, 866, 1126, 30, 19, 260, 5198, 6757, 1559, '2019-05-08 00:00:00'),
(293, 'sinimg.png', 'Pincel Madera Plano 06', 'Caribe', 6, 1, 990, 1287, 30, 19, 297, 5940, 7723, 1782, '2019-05-07 00:00:00'),
(294, 'sinimg.png', 'Pincel Madera Plano 08', 'Caribe', 6, 1, 1266, 1646, 30, 19, 380, 7597, 9876, 2279, '2019-05-08 00:00:00'),
(295, 'sinimg.png', 'Pincel Madera Plano 10', 'Caribe ', 6, 1, 1599, 2079, 30, 19, 480, 9596, 12475, 2879, '2019-05-07 00:00:00'),
(296, 'sinimg.png', 'Pincel Madera Plano 12', 'Caribe', 6, 1, 2563, 3332, 30, 19, 769, 15380, 19993, 4614, '2019-05-08 00:00:00'),
(297, 'sinimg.png', 'Pincel Madera redondo 05', 'Caribe', 6, 1, 926, 1204, 30, 19, 278, 5555, 7221, 1666, '2019-05-07 00:00:00'),
(298, 'sinimg.png', 'Grapa para alambre de puas 3/4 x 12 (500gr)', 'Caballo', 3, 15, 3096, 4025, 30, 19, 929, 9289, 12076, 2787, '2019-05-08 00:00:00'),
(299, 'sinimg.png', 'Claro AC Lisoconcreto 2 In diametro 4.3MM CA Mejia', 'Mejia', 3, 7, 4278, 5561, 30, 19, 1283, 12834, 16684, 3850, '2019-05-07 00:00:00'),
(300, 'sinimg.png', 'Chazo expansivo zincado 1/4 x 2 1/2 CA mejia', 'Mejia', 24, 1, 275, 357, 30, 19, 82, 6597, 8577, 1979, '2019-05-08 00:00:00'),
(301, 'sinimg.png', 'Chazo expansivo zincado 3/8 x 1 7/8 - C.A Mejia', 'Mejia', 24, 1, 349, 453, 30, 19, 105, 8368, 10879, 2510, '2019-05-07 00:00:00'),
(302, 'sinimg.png', 'Chazo expansivo zincado 5/16 x 2- CA Mejia', 'Mejia', 24, 1, 287, 373, 30, 19, 86, 6883, 8948, 2065, '2019-05-08 00:00:00'),
(303, 'sinimg.png', 'Grapa Plastica Cuadrada 2x14 (Paqx50un) - CA Mejia', 'Mejia', 1, 9, 796, 1035, 30, 19, 239, 796, 1035, 239, '2019-05-07 00:00:00'),
(304, 'sinimg.png', 'Grapa Plastica Cuadrada 2x22(Paq x 50un) - CA Mejia', 'Mejia', 1, 9, 721, 937, 30, 19, 216, 721, 937, 216, '2019-05-08 00:00:00'),
(512, 'sinimg.png', 'Varilla rosca 3/8(u/e50)', 'no', 2, 1, 3740, 5984, 60, 10, 2244, 7480, 11968, 4488, '2019-05-09 11:41:20'),
(513, 'sinimg.png', 'estuco blanco enduit *25 kilos ', 'sika', 8, 1, 23880, 28417, 19, 19, 4537, 191040, 227336, 36296, '2019-05-10 11:25:44'),
(514, 'sinimg.png', 'masilla zinflex 1/32', 'estucar', 3, 1, 3345, 4349, 30, 19, 1004, 10035, 13047, 3012, '2019-05-10 11:34:04'),
(515, 'sinimg.png', 'masilla zinflex 1/16', 'estucar', 3, 1, 8532, 11006, 29, 119, 2474, 25596, 33018, 7422, '2019-05-10 11:37:34'),
(517, 'sinimg.png', 'boquilla estucar gris perla x 2kilos', 'estucar', 3, 9, 4422, 5749, 30, 19, 1327, 13266, 17247, 3981, '2019-05-10 14:16:55'),
(519, 'sinimg.png', 'Varilla roscada 1/2x1 MTR Zincada (U/E 20)', 'No', 2, 1, 4390, 5707, 30, 19, 1317, 8780, 11414, 2634, '2019-05-06 00:00:00'),
(520, 'sinimg.png', 'Varilla roscada 3/16 (U/e 100)', 'No', 6, 1, 689, 896, 30, 19, 207, 4134, 5374, 1240, '2019-05-06 00:00:00'),
(521, 'sinimg.png', 'Varilla roscada 3/8(U/E 50)', 'No', 6, 1, 2280, 2964, 30, 19, 684, 13680, 17784, 4104, '2019-05-06 00:00:00'),
(522, 'sinimg.png', 'Varilla roscada 5/16 (U/E 50)', 'No', 6, 1, 1785, 2321, 30, 19, 536, 10710, 13923, 3213, '2019-05-06 00:00:00'),
(523, 'sinimg.png', 'Canaleta 13 * 8 C/Adhesivo(30UE)', 'No', 3, 1, 2083, 2707, 30, 19, 625, 6248, 8122, 1874, '2019-05-06 00:00:00'),
(524, 'sinimg.png', 'Canaleta 20 * 12 C/Adhesivo(30UE)', 'No', 3, 1, 2871, 3733, 30, 19, 861, 8614, 11199, 2584, '2019-05-06 00:00:00'),
(525, 'sinimg.png', 'Canaleta 25 * 15 C/Adhesivo', 'No', 3, 1, 4098, 5328, 30, 19, 1230, 12295, 15984, 3689, '2019-05-06 00:00:00'),
(526, 'sinimg.png', 'Canaleta 32 * 12 C/Adhesivo(30UE)', 'No', 3, 1, 4106, 5337, 30, 19, 1232, 12317, 16011, 3695, '2019-05-06 00:00:00'),
(527, 'sinimg.png', 'Canaleta 40 * 25 C?Adhesivo', 'No', 3, 1, 7154, 9301, 30, 19, 2146, 21463, 27902, 6439, '2019-05-06 00:00:00'),
(528, 'sinimg.png', 'Tubo café 1/2 x 6 MTS T-113', 'No', 6, 1, 9319, 12115, 30, 19, 2796, 55913, 72687, 16774, '2019-05-06 00:00:00'),
(529, 'sinimg.png', 'Tubo café 1/2 X 6 MTS ', 'No', 6, 1, 9319, 12115, 30, 19, 2796, 55913, 72687, 16774, '2019-05-06 00:00:00'),
(530, 'sinimg.png', 'Amarras 10 cms x paq 100 UND Blanca', 'No', 2, 1, 1322, 1719, 30, 19, 397, 2644, 3437, 793, '2019-05-06 00:00:00'),
(531, 'sinimg.png', 'Adaptador Hembra 1/2 Presión (u/E 200)', 'No', 24, 1, 414, 538, 30, 19, 124, 9939, 12921, 2982, '2019-05-06 00:00:00'),
(532, 'sinimg.png', 'Tee Presion 1/2 (U/E 120)', 'No', 12, 1, 704, 916, 30, 19, 211, 8454, 10990, 2536, '2019-05-06 00:00:00'),
(533, 'sinimg.png', 'Tapon  solda 1/2 Presion (U/E 400)', 'No', 12, 1, 303, 394, 30, 19, 91, 3641, 4734, 1092, '2019-05-06 00:00:00'),
(534, 'sinimg.png', 'Tapon rosca 1/2 presion (U/E 400)', 'No', 12, 1, 415, 540, 30, 19, 125, 4984, 6479, 1495, '2019-05-06 00:00:00'),
(535, 'sinimg.png', 'Buje sold 3x1 1/2 sanit (U/E 25)', 'No', 3, 1, 4956, 6443, 30, 19, 1487, 14869, 19330, 4461, '2019-05-06 00:00:00'),
(536, 'sinimg.png', 'Codo Sanit 1 1/2 C*C (U/E 25)', 'No', 6, 1, 2348, 3052, 30, 19, 704, 14087, 18313, 4226, '2019-05-06 00:00:00'),
(537, 'sinimg.png', 'Semicodo sanit 3 C*C (U/E 50 )', 'No', 3, 1, 7082, 9206, 30, 19, 2125, 21245, 27619, 6374, '2019-05-06 00:00:00'),
(538, 'sinimg.png', 'Tee sanitaria 3 (U/E 25 )', 'No', 3, 1, 7046, 9160, 30, 19, 2114, 21138, 27479, 6341, '2019-05-06 00:00:00'),
(539, 'sinimg.png', 'Tee sanitaria 2 (U/E 60)', 'No', 3, 1, 5614, 7299, 30, 19, 1684, 16843, 21896, 5053, '2019-05-06 00:00:00'),
(540, 'sinimg.png', 'Llave lavadora -1-9915-11 Crom', 'No', 1, 1, 15600, 20280, 30, 19, 4680, 15600, 20280, 4680, '2019-05-06 00:00:00'),
(541, 'sinimg.png', 'Llave lavadora 01-9916-13-satin', 'No', 1, 1, 12464, 16203, 30, 19, 3739, 12464, 16203, 3739, '2019-05-06 00:00:00'),
(542, 'sinimg.png', 'Paq 140*6 Llave terminal cromo satin ', 'No', 1, 1, 121200, 157560, 30, 19, 36360, 121200, 157560, 36360, '2019-05-06 00:00:00'),
(543, 'sinimg.png', 'Paq 141*6 Llave terminal broj', 'No', 1, 1, 75340, 97942, 30, 19, 22602, 75340, 97942, 22602, '2019-05-06 00:00:00'),
(544, 'sinimg.png', 'Paq 144*6 val Bola 1/2 Grival Metalica', 'No', 1, 1, 90500, 117649, 30, 19, 27150, 90500, 117649, 27150, '2019-05-06 00:00:00'),
(545, 'sinimg.png', 'Paq 156*3 Valv reg 1/2 M-H Cruceta', 'No', 1, 1, 62205, 80866, 30, 19, 18661, 62205, 80866, 18661, '2019-05-06 00:00:00'),
(546, 'sinimg.png', 'Paq 180 x 3 rejilla vanguard ', 'No', 1, 1, 79700, 103610, 30, 19, 23910, 79700, 103610, 23910, '2019-05-06 00:00:00'),
(547, 'sinimg.png', 'Rejilla Alum 3*2 Ran', 'No', 2, 1, 1743, 2266, 30, 19, 523, 3487, 4533, 1046, '2019-05-06 00:00:00'),
(548, 'sinimg.png', 'Rejilla Alum 4*3 Ran ', 'No', 2, 1, 2539, 3301, 30, 19, 762, 5079, 6603, 1524, '2019-05-06 00:00:00'),
(549, 'sinimg.png', 'Soporte Bifuncional Teleducha ', 'No', 2, 1, 5315, 6909, 30, 19, 1594, 10629, 13818, 3189, '2019-05-06 00:00:00'),
(550, 'sinimg.png', 'Registro Ducha Briza (Paq 22-32440)', 'No', 2, 1, 22376, 29088, 30, 19, 6713, 44751, 58176, 13425, '2019-05-06 00:00:00'),
(551, 'sinimg.png', 'Rejilla ventil 20*20 T/Persian 023', 'No', 6, 1, 3666, 4766, 30, 19, 1100, 21998, 28598, 6600, '2019-05-06 00:00:00'),
(552, 'sinimg.png', 'Rejilla Ventil 20*20 Gas ref 030', 'No', 6, 1, 2760, 3587, 30, 19, 828, 16558, 21525, 4967, '2019-05-06 00:00:00'),
(553, 'sinimg.png', 'Tapa registro 15*15 ref 516 Oreja ', 'No', 6, 1, 3508, 4561, 30, 19, 1052, 21049, 27363, 6315, '2019-05-06 00:00:00'),
(554, 'sinimg.png', 'Llave terminal 01-9954-11 ext creom r/s mangue', 'No', 2, 1, 32500, 42250, 30, 19, 9750, 65000, 84500, 19500, '2019-05-06 00:00:00'),
(555, 'sinimg.png', 'Paq 149*6 Valv Bola 1/2 minja Mariposa', 'No', 1, 1, 104500, 135850, 30, 19, 31350, 104500, 135850, 31350, '2019-05-06 00:00:00'),
(556, 'sinimg.png', 'Llave lvmano Balta cruceta(Paq 93)', 'No', 1, 1, 19900, 25870, 30, 19, 5970, 19900, 25870, 5970, '2019-05-06 00:00:00'),
(557, 'sinimg.png', 'Llave lvmano Piscis', 'No', 2, 1, 11056, 14373, 30, 19, 3317, 22113, 28746, 6634, '2019-05-06 00:00:00'),
(558, 'sinimg.png', 'Llave lvmanos balta palanca (Paq 94)', 'No', 2, 1, 19900, 25870, 30, 19, 5970, 39801, 51741, 11940, '2019-05-06 00:00:00'),
(559, 'sinimg.png', 'Dilatación Plast Ancha Blanca(20mm x 8mm x 2MTS)', 'No', 6, 1, 2450, 3185, 30, 19, 735, 14701, 19112, 4410, '2019-05-06 00:00:00'),
(560, 'sinimg.png', 'Dilatación Super-ang plat blanca(1mm x 6.5mm x 2MTS)', 'No', 6, 1, 1975, 2568, 30, 19, 593, 11852, 15408, 3556, '2019-05-06 00:00:00'),
(561, 'sinimg.png', 'Piragua aluminio crudo 12.2mm-14MM ref .382x 6 MTS', 'No', 3, 1, 6165, 8015, 30, 19, 1850, 18496, 24045, 5549, '2019-05-06 00:00:00'),
(562, 'sinimg.png', 'Piragua plastica blanca x 2.4MTS', 'No', 3, 1, 1779, 2313, 30, 19, 534, 5337, 6938, 1601, '2019-05-06 00:00:00'),
(563, 'sinimg.png', 'Tubo café 1/2 x 6 MTS T-113', 'No', 6, 1, 9319, 12115, 30, 19, 2796, 55913, 72687, 16774, '2019-05-06 00:00:00'),
(564, 'sinimg.png', 'Tubo café 3/4 x 6 MTS T-112', 'No', 3, 1, 15148, 19692, 30, 19, 4544, 45443, 59075, 13633, '2019-05-06 00:00:00'),
(565, 'sinimg.png', 'Tubo dorado 1/2 x 6 MTS', 'No', 6, 1, 9319, 12115, 30, 19, 2796, 55913, 72687, 16774, '2019-05-06 00:00:00'),
(566, 'sinimg.png', 'Tubo dorado 3/4 x 6 MTS', 'No', 3, 1, 15470, 20111, 30, 19, 4641, 46410, 60333, 13923, '2019-05-06 00:00:00'),
(567, 'sinimg.png', 'Soporte Muro café 1/2 (U/E 50)', 'No', 25, 1, 232, 302, 30, 19, 70, 5801, 7542, 1740, '2019-05-06 00:00:00'),
(568, 'sinimg.png', 'Soporte muro café 3/4 (U/E 50)', 'No', 25, 1, 283, 368, 30, 19, 85, 7081, 9205, 2124, '2019-05-06 00:00:00'),
(569, 'sinimg.png', 'Soporte Muro Dorado 1/2 (U/E 50)', 'No', 25, 1, 414, 538, 30, 19, 124, 10353, 13459, 3106, '2019-05-06 00:00:00'),
(570, 'sinimg.png', 'Soporte Muro Dorado 3/4 (U/E 50)', 'No', 25, 1, 495, 644, 30, 19, 149, 12376, 16089, 3713, '2019-05-06 00:00:00'),
(571, 'sinimg.png', 'Soporte Doble 3/4 Dorado (U.E 50)', 'No', 12, 1, 1247, 1621, 30, 19, 374, 14965, 19455, 4490, '2019-05-06 00:00:00'),
(572, 'sinimg.png', 'Plafon Cortina U.  1/2dorado (U/E 50)', 'No', 25, 1, 369, 480, 30, 19, 111, 9223, 11989, 2767, '2019-05-06 00:00:00'),
(573, 'sinimg.png', 'Plafon Cortina U. 3/4 Dorado (U/E 50)', 'No', 25, 1, 390, 507, 30, 19, 117, 9758, 12685, 2927, '2019-05-06 00:00:00'),
(574, 'sinimg.png', 'Tubo CPVC 1/2 x 3 MTS GERFOR (u/E 25)', 'No', 6, 1, 17930, 23309, 30, 19, 5379, 107578, 139852, 32274, '2019-05-06 00:00:00'),
(575, 'sinimg.png', 'Union CPVC 2/2 Gerfor (U/E 50)', 'No', 6, 1, 951, 1236, 30, 19, 285, 5705, 7416, 1711, '2019-05-06 00:00:00'),
(576, 'sinimg.png', 'Adapta Hembra CPVC 1/2 Gerfor Transicion (U/E 50)', 'No', 6, 1, 2232, 2902, 30, 19, 670, 13395, 17413, 4018, '2019-05-06 00:00:00'),
(577, 'sinimg.png', 'Apapta Macho CPVC Gerfor (U/E 50)', 'No', 6, 1, 1427, 1855, 30, 19, 428, 8561, 11129, 2568, '2019-05-06 00:00:00'),
(578, 'sinimg.png', 'Codo CPVC 1/2 Gerfor (U/E 50)', 'No', 6, 1, 1310, 1703, 30, 19, 393, 7861, 10219, 2358, '2019-05-06 00:00:00'),
(579, 'sinimg.png', 'Tee CPVC 1/2 Gerfor (U/E 50)', 'No', 6, 1, 1739, 2260, 30, 19, 522, 10432, 13561, 3129, '2019-05-06 00:00:00'),
(580, 'sinimg.png', 'Tapon Solda CPVC 1/2 gerfor (U/E 50)', 'No', 6, 1, 1246, 1620, 30, 19, 374, 7476, 9718, 2243, '2019-05-06 00:00:00'),
(581, 'sinimg.png', 'Limpiad Gerfor *1 /64 PVC-CPVC (U/E 40)', 'No', 6, 1, 3678, 4782, 30, 19, 1103, 22070, 28691, 6621, '2019-05-06 00:00:00'),
(582, 'sinimg.png', 'Fijamix x bolsa 2 KGR', 'No', 6, 1, 13199, 17159, 30, 19, 3960, 79197, 102956, 23759, '2019-05-06 00:00:00'),
(583, 'sinimg.png', 'Estucol * kilo ', 'No', 6, 6, 1176, 1528, 30, 19, 353, 7054, 9171, 2116, '2019-05-06 00:00:00'),
(584, 'sinimg.png', 'Estucor x 25 kilos f-Azul ', 'No', 2, 1, 29180, 37934, 30, 19, 8754, 58360, 75868, 17508, '2019-05-06 00:00:00'),
(585, 'sinimg.png', 'Sifon flexible coflex blanco 2-P B9022(U/E 40)', 'No', 6, 1, 6550, 8515, 30, 19, 1965, 39299, 51088, 11790, '2019-05-06 00:00:00'),
(586, 'sinimg.png', 'Balde Manija Forrada U/E 25 construcción', 'No', 10, 1, 2335, 3035, 30, 19, 700, 23348, 30352, 7004, '2019-05-06 00:00:00'),
(587, 'sinimg.png', 'Balde construccion loma', 'No', 10, 1, 2348, 3052, 30, 19, 704, 23479, 30522, 7044, '2019-05-06 00:00:00'),
(588, 'sinimg.png', 'Cinta aislante electri cellux x 5 MT ', 'No', 12, 1, 782, 1016, 30, 19, 235, 9382, 12197, 2815, '2019-05-06 00:00:00');
INSERT INTO `productos` (`id`, `image`, `nameproducnto`, `marca`, `cantidad`, `medidas`, `precio_compra`, `precio_venta`, `por_ganancia`, `iva`, `ganancia`, `compra_total`, `venta_total`, `ganancia_total`, `fechaingresado`) VALUES
(589, 'sinimg.png', 'Regulador Comp Mang Naranja Humcar ', 'No', 3, 1, 14536, 18897, 30, 19, 4361, 43608, 56690, 13082, '2019-05-06 00:00:00'),
(590, 'sinimg.png', 'Puntilla Puma 1 1/2 C/C 500 gr', 'No', 12, 7, 2196, 2854, 30, 19, 659, 26347, 34251, 7904, '2019-05-06 00:00:00'),
(591, 'sinimg.png', 'Puntilla puma 2 CC 500 gr', 'No', 12, 7, 2196, 2854, 30, 19, 659, 26347, 34251, 7904, '2019-05-06 00:00:00'),
(592, 'sinimg.png', 'Puntiila puma 2 1/2 CC 500 gr', 'No', 12, 7, 2196, 2854, 30, 19, 659, 26347, 34251, 7904, '2019-05-06 00:00:00'),
(593, 'sinimg.png', 'Puntilla puma 4 CC 1000gramos', 'No', 2, 6, 4391, 5708, 30, 19, 1317, 8782, 11417, 2635, '2019-05-06 00:00:00'),
(594, 'sinimg.png', 'Puntilla puma 5 CC 1000gr', 'No', 6, 6, 4391, 5708, 30, 19, 1317, 26347, 34251, 7904, '2019-05-06 00:00:00'),
(595, 'sinimg.png', 'Puntilla puma 1 CC 500gr', 'No', 6, 1, 3040, 3953, 30, 19, 912, 18243, 23716, 5473, '2019-05-06 00:00:00'),
(596, 'sinimg.png', 'Clavo Concreto 1 1/2*LB', 'No', 2, 1, 4315, 5609, 30, 19, 1294, 8630, 11219, 2589, '2019-05-06 00:00:00'),
(597, 'sinimg.png', 'Clavo concreto 2*LB', 'No', 2, 1, 4315, 5609, 30, 19, 1294, 8630, 11219, 2589, '2019-05-06 00:00:00'),
(598, 'sinimg.png', 'Cinta enmasc cellux 1/2 * 20 YDS (u/e 168)', 'No', 12, 1, 795, 1033, 30, 19, 238, 9539, 12401, 2862, '2019-05-06 00:00:00'),
(599, 'sinimg.png', 'Cinta emasc cellux 1 * 20 YDS ', 'No', 6, 1, 1590, 2067, 30, 19, 477, 9539, 12401, 2862, '2019-05-06 00:00:00'),
(600, 'sinimg.png', 'Amarras techo (25cms)', 'No', 300, 1, 89, 116, 30, 19, 27, 26775, 34808, 8033, '2019-05-06 00:00:00'),
(601, 'sinimg.png', 'Amarras largar 30 cm(Alambre)', 'No', 150, 1, 105, 136, 30, 19, 31, 15708, 20420, 4712, '2019-05-06 00:00:00'),
(602, 'sinimg.png', 'Platina P/Clarab*JGO (U/E.50)', 'No', 3, 1, 1997, 2596, 30, 19, 599, 5990, 7788, 1797, '2019-05-06 00:00:00'),
(603, 'sinimg.png', 'Union Galv 1/2', 'No', 6, 1, 1186, 1542, 30, 19, 356, 7119, 9254, 2136, '2019-05-06 00:00:00'),
(604, 'sinimg.png', 'NipleGalv 1/2*3', 'No', 6, 1, 1029, 1338, 30, 19, 309, 6176, 8029, 1853, '2019-05-06 00:00:00'),
(605, 'sinimg.png', 'Reducc Bushin 3/4-1/2', 'No', 3, 1, 1309, 1702, 30, 19, 393, 3927, 5105, 1178, '2019-05-06 00:00:00'),
(606, 'sinimg.png', 'Tee Galv 1/2', 'No', 6, 1, 1547, 2011, 30, 19, 464, 9282, 12067, 2785, '2019-05-06 00:00:00'),
(607, 'sinimg.png', 'Tapon Hembra Galv 1/2', 'No', 3, 1, 1000, 1299, 30, 19, 300, 2999, 3898, 900, '2019-05-06 00:00:00'),
(608, 'sinimg.png', 'Valvula regulacion rio', 'No', 3, 1, 2253, 2928, 30, 19, 676, 6758, 8785, 2027, '2019-05-06 00:00:00'),
(609, 'sinimg.png', 'Buje lvmanos cod 1 1/2 dicol 3-712', 'No', 6, 1, 1488, 1934, 30, 19, 446, 8925, 11603, 2678, '2019-05-06 00:00:00'),
(610, 'sinimg.png', 'Buje lvplatos cod 1 1/2 dicol 3-713', 'No', 6, 1, 1488, 1934, 30, 19, 446, 8925, 11603, 2678, '2019-05-06 00:00:00'),
(611, 'sinimg.png', 'Mangue Lavadora 1/2 x 1.5M 9-17 dicol', 'No', 3, 1, 6962, 9050, 30, 19, 2088, 20885, 27150, 6265, '2019-05-06 00:00:00'),
(612, 'sinimg.png', 'Mangue desague 1.5 MTS lavadora 5780', 'No', 3, 1, 6300, 8190, 30, 19, 1890, 18900, 24569, 5670, '2019-05-06 00:00:00'),
(613, 'sinimg.png', 'Brazo ducha Plastico color', 'No', 3, 1, 2242, 2915, 30, 19, 673, 6726, 8744, 2018, '2019-05-06 00:00:00'),
(614, 'sinimg.png', 'Brazo ducha acril crom en bolsa', 'No', 3, 1, 5479, 7122, 30, 19, 1644, 16436, 21367, 4931, '2019-05-06 00:00:00'),
(615, 'sinimg.png', 'Regadera Bl-1430-11 contempra', 'No', 1, 1, 15294, 19882, 30, 19, 4588, 15294, 19882, 4588, '2019-05-06 00:00:00'),
(616, 'sinimg.png', 'Regadera cardenas p/ducha', 'No', 2, 1, 9139, 11881, 30, 19, 2742, 18278, 23762, 5484, '2019-05-06 00:00:00'),
(617, 'sinimg.png', 'Combo 71 Manija Kristal 01-1149-00*6UND', 'No', 1, 1, 31276, 40658, 30, 19, 9383, 31276, 40658, 9383, '2019-05-06 00:00:00'),
(618, 'sinimg.png', 'Maneral Universal Mediana platino crom ', 'No', 6, 1, 2647, 3441, 30, 19, 794, 15879, 20643, 4764, '2019-05-06 00:00:00'),
(619, 'sinimg.png', 'Chupa para sanitario C/Madera', 'No', 3, 1, 2255, 2932, 30, 19, 677, 6765, 8795, 2030, '2019-05-06 00:00:00'),
(620, 'sinimg.png', 'Llave lvmanos diam blanca', 'No', 4, 1, 4210, 5473, 30, 19, 1263, 16841, 21893, 5052, '2019-05-06 00:00:00');

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
  MODIFY `id_medida` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=621;

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
