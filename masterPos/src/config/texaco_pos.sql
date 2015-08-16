-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-08-2015 a las 15:11:35
-- Versión del servidor: 5.5.44
-- Versión de PHP: 5.3.10-1ubuntu3.19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `texaco_pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `codigo_articulo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articulo` varchar(255) NOT NULL,
  `codigo_marca` int(10) unsigned NOT NULL,
  `cod_articulo` int(10) unsigned DEFAULT NULL,
  `codigo_impuesto` int(11) NOT NULL,
  `precio_articulo` double(10,2) DEFAULT NULL,
  `tipo_articulo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`codigo_articulo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=745 ;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`codigo_articulo`, `articulo`, `codigo_marca`, `cod_articulo`, `codigo_impuesto`, `precio_articulo`, `tipo_articulo`) VALUES
(1, 'sopa instantanea', 1, 0, 2, 17.00, 1),
(2, 'tajadas de platano p', 2, 0, 2, 15.00, 1),
(3, 'Tajadas de platano m', 2, 0, 2, 25.00, 1),
(4, 'Tajadas de platano G', 2, 0, 2, 40.00, 1),
(5, 'Tajadas de platano SG', 2, 0, 2, 72.00, 1),
(6, 'galletas largitas 150g', 4, 0, 2, 30.00, 1),
(7, 'galleta frac', 5, 0, 2, 20.00, 1),
(8, 'galleta cremax de nieve 68g ', 6, 0, 2, 13.00, 1),
(10, 'galleta chokis', 6, 0, 2, 13.00, 1),
(11, 'galleta intenso', 6, 0, 2, 13.00, 1),
(12, 'Marshmallow', 8, 0, 2, 50.00, 1),
(13, 'Fudge Sticks', 9, 0, 2, 85.00, 1),
(14, 'galletas iced oatmeal', 10, 0, 2, 60.00, 1),
(15, 'galleta hojalmar 250 g.', 4, 0, 2, 36.00, 1),
(16, 'galleta fruts 104 gr', 6, 0, 2, 13.00, 1),
(17, 'galleta cocanas 167 gr', 11, 0, 2, 15.00, 1),
(18, 'galleta emperador  81 gr.', 6, 0, 2, 13.00, 1),
(19, 'galleta pan crema 106 gr.', 6, 0, 2, 15.00, 1),
(20, 'galleta barras de coco 117 gr.', 6, 0, 2, 15.00, 1),
(21, 'galleta florentinas ', 6, 0, 2, 13.00, 1),
(22, 'galleta hojalmar 100 gr.', 4, 0, 2, 20.00, 1),
(23, 'galleta costa 59 gr.', 5, 0, 2, 12.00, 1),
(24, 'galleta arcoiris ', 6, 0, 2, 13.00, 1),
(25, 'PALOMITAS NATURAL', 12, 0, 2, 25.00, 1),
(26, 'PALOMITAS BUTTER LOVERS', 12, 0, 2, 15.00, 1),
(27, 'PALOMITA QUESO CHEDDAR', 12, 0, 2, 30.00, 1),
(28, 'ARMOUR BARBACOA', 13, 0, 2, 32.00, 1),
(29, 'ARMOUR POTTER MEAT', 13, 0, 2, 16.00, 1),
(30, 'ARMOUR 156GR', 13, 0, 2, 25.00, 1),
(31, 'ARMOUR VIENNA SMOKED', 13, 0, 2, 30.00, 1),
(32, 'CHURRITOS LAYS ', 14, 0, 2, 10.00, 1),
(33, 'TAJADAS DE PLATANO RICA SULA', 15, 0, 2, 25.00, 1),
(34, 'FIESTAS SNAX', 14, 0, 2, 20.00, 1),
(35, 'MILK CHOCOLATE ALMONDS', 16, 0, 2, 27.00, 1),
(36, 'HERSHERYS COOKIES IN CREME ', 16, 0, 2, 28.00, 1),
(37, 'CRUNCH ', 1, 0, 2, 35.00, 1),
(38, 'MILK CHOCOLATE ', 17, 0, 2, 27.00, 1),
(39, 'FERRERO ROCHER CORAZON 100 GR.', 18, 0, 2, 200.00, 1),
(40, 'FERRERO 200 GR.', 18, 0, 2, 240.00, 1),
(41, 'RAFFAELLO 60 GR.', 18, 0, 2, 60.00, 1),
(42, 'AGUA AZUL 1 GAL. ', 19, 0, 2, 25.00, 1),
(45, 'FERRERO 50 GR.', 18, 0, 2, 105.00, 1),
(46, 'FERRERO 100 GR.', 18, 0, 2, 125.00, 1),
(47, 'RAFFAELLO  30 GR.', 18, 0, 2, 35.00, 1),
(48, 'LECHE EN CAJA SULA ', 3, 0, 2, 30.00, 1),
(49, 'BACARDI AÃ‘EJO 750ML', 21, 0, 3, 255.00, 1),
(50, 'PRINGLES GRANDES ', 22, 0, 2, 60.00, 1),
(51, 'PRINGLES MEDIANAS', 22, 0, 2, 35.00, 1),
(52, 'BACARDI GOLD 750ML', 21, 0, 3, 175.00, 1),
(53, 'PRINGLES PEQUEÃ‘AS ', 22, 0, 2, 25.00, 1),
(54, 'BACARDI GOLD 980ML', 21, 0, 3, 220.00, 1),
(55, 'BACARDI RAZZ 750ML', 21, 0, 3, 250.00, 1),
(56, 'LAYS STAX ', 14, 0, 2, 45.00, 1),
(57, 'BACARDI COCONUT 750ML', 21, 0, 3, 250.00, 1),
(58, 'BACARDI LIMON 750ML', 21, 0, 3, 250.00, 1),
(59, 'GALLETA POPULAR ', 23, 0, 2, 20.00, 1),
(60, 'BACARDI SUPERIOR 980M', 21, 0, 3, 210.00, 1),
(61, 'GALLETA COSTA 140 GR.', 5, 0, 2, 25.00, 1),
(62, 'BACARDI SUPERIOR 750ML', 21, 0, 3, 175.00, 1),
(63, 'BACARDI LIMON 375ML', 21, 0, 3, 135.00, 1),
(64, 'GALLETAS ROLAND 125 G.', 24, 0, 2, 50.00, 1),
(65, 'BACARDI SUPERIOR 375ML', 21, 0, 3, 110.00, 1),
(66, 'DULCE CASERO', 25, 0, 1, 45.00, 1),
(67, 'BACARDI GOLD 375ML', 21, 0, 3, 110.00, 1),
(68, 'GALLETA RECREO', 11, 0, 1, 15.00, 1),
(69, 'BACARDI GOLD 200M', 21, 0, 3, 70.00, 1),
(70, 'MINI CHOKIS', 11, 0, 2, 10.00, 1),
(71, 'BACARDI SUPERIOR 200ML', 21, 0, 3, 70.00, 1),
(72, 'MARINELA PINGIIINOS ', 26, 0, 2, 20.00, 1),
(73, 'RON FLOR DE CAÃ‘A 375ML', 28, 0, 3, 120.00, 1),
(74, 'GALLETA CLUB SOCIAL', 29, 0, 2, 4.00, 1),
(75, 'FLOR DE CAÃ‘A BLACK LABEL  750ML', 28, 0, 3, 215.00, 1),
(76, 'RON EXTRA LITE', 28, 0, 3, 120.00, 1),
(77, 'RON EXTRA CECO', 28, 0, 3, 120.00, 1),
(78, 'GALLETA SPONCH ', 30, 0, 2, 15.00, 1),
(79, 'RON AÃ‘EJO ORO 750ML', 28, 0, 3, 180.00, 1),
(80, 'RON EXTRA DRY ', 28, 0, 3, 170.00, 1),
(81, 'SUBMARINOS', 30, 0, 2, 15.00, 1),
(82, 'RON GRAND RESERVE', 28, 0, 3, 250.00, 1),
(83, 'RON PREMIUM 250ML', 31, 0, 3, 50.00, 1),
(84, 'ROLES DE CANELA CON PASAS', 26, 0, 2, 20.00, 1),
(85, 'CANELITAS  60 G.', 30, 0, 2, 12.00, 1),
(86, 'PANQUE CON PASAS', 26, 0, 2, 40.00, 1),
(87, 'Juguitos sula 200 ml .', 3, 0, 2, 10.00, 1),
(88, 'JUGO DE SABILA', 32, 0, 2, 30.00, 1),
(89, 'aguazul  20 onza.', 19, 0, 2, 12.00, 1),
(90, 'AMP 500ML', 20, 0, 2, 25.00, 1),
(91, 'aguazul 1 litro ', 20, 0, 2, 17.00, 1),
(92, 'agua', 20, 0, 2, 3.00, 1),
(93, 'AMP 335ML', 20, 0, 2, 20.00, 1),
(94, 'Gatorade pequeÃ±o .', 20, 0, 2, 20.00, 1),
(95, 'Gatorade grandes 591 ML.', 20, 0, 2, 25.00, 1),
(96, 'ADRENALINA PEQUEÃ‘A.', 20, 0, 2, 40.00, 1),
(97, 'Adrenalina grande.', 20, 0, 2, 50.00, 1),
(98, 'ENERGIZANTES MONSTER', 33, 0, 2, 50.00, 1),
(99, 'Enjoy nectar en lata 330 ML', 20, 0, 2, 15.00, 1),
(100, 'RED BULL', 34, 0, 2, 50.00, 1),
(101, 'WELCH JUGO DE UVA', 35, 0, 2, 80.00, 1),
(102, 'V8 SPLASH', 34, 0, 2, 40.00, 1),
(103, 'MISTIC 16OZ', 34, 0, 2, 46.00, 1),
(104, 'MARGARITAS', 36, 0, 2, 40.00, 1),
(105, 'MILLER DRAFT', 38, 0, 3, 35.00, 1),
(106, 'MARINEROS', 37, 0, 2, 15.00, 1),
(107, 'Te lipton lata ', 20, 0, 2, 16.00, 1),
(108, 'Enjoy 500ml', 20, 0, 2, 17.00, 1),
(109, 'JUGOS FRITO', 37, 0, 2, 12.00, 1),
(111, 'mountam dew 355 ml.', 20, 0, 2, 16.00, 1),
(112, 'mountam dew 473 ml.', 20, 0, 2, 20.00, 1),
(113, 'TROPICS 591 ML.', 20, 0, 2, 15.00, 1),
(114, 'JUGO FRISTY NARANJA 1/2 ', 39, 0, 2, 20.00, 1),
(115, 'QUANTY 500 ML', 20, 0, 2, 10.00, 1),
(116, 'JUGO DE NARANJA 1/2', 39, 0, 2, 25.00, 1),
(117, 'AGUA COCO PEQUEÃ‘A', 20, 0, 2, 40.00, 1),
(118, 'AGUA COCO GRANDE', 20, 0, 1, 60.00, 1),
(119, 'PEPSI 1.25', 20, 0, 2, 25.00, 1),
(120, 'PEPSI 600 ML.', 20, 0, 2, 17.00, 1),
(121, 'PEPSI LATA', 20, 0, 2, 16.00, 1),
(122, 'JUGO DE NARANJA GALON', 39, 0, 2, 35.00, 1),
(123, 'PEPSI 3 LITROS', 20, 0, 2, 45.00, 1),
(125, 'PEPSI 2 LITROS', 20, 0, 2, 35.00, 1),
(126, 'LEYDE 1/2', 40, 0, 2, 18.00, 1),
(127, 'JUGO LEYDE 1/2', 40, 0, 2, 12.00, 1),
(128, 'PORT ROYAL BOTELLA', 38, 0, 3, 32.00, 1),
(129, 'COCAS LATAS', 38, 0, 2, 16.00, 1),
(130, 'COORS LIGHT BOT.', 38, 0, 3, 35.00, 1),
(131, 'COCA 500ML', 38, 0, 2, 17.00, 1),
(132, 'BARENA BOT.', 38, 0, 3, 32.00, 1),
(133, 'MILLER LITE BOT.', 38, 0, 3, 35.00, 1),
(134, 'AGUA DASANI LITRO', 38, 0, 2, 17.00, 1),
(135, 'CORONA', 38, 0, 3, 40.00, 1),
(136, 'AGUA DASANI 500ML', 38, 0, 2, 12.00, 1),
(137, 'COCA 2.5 LITROS ', 38, 0, 2, 35.00, 1),
(138, 'COCA 2 LITROS', 38, 0, 2, 35.00, 1),
(139, 'COCAS 3 LITROS ', 38, 0, 2, 45.00, 1),
(140, 'COCA 1.25', 38, 0, 2, 25.00, 1),
(141, 'CERVEZAS LATAS NACIONALES', 38, 0, 3, 30.00, 1),
(142, 'FOURT LOKO', 41, 0, 3, 135.00, 1),
(143, 'HEINEKEN', 38, 0, 3, 40.00, 1),
(144, 'WIERQUER BIER', 38, 0, 3, 20.00, 1),
(145, 'SMIRNOFF', 38, 0, 2, 40.00, 1),
(146, 'CARTA BLANCA', 38, 0, 3, 25.00, 1),
(147, 'TECATE LATA', 38, 0, 3, 30.00, 1),
(148, 'COORS LIGHT LATA', 38, 0, 3, 30.00, 1),
(149, 'RON PREMIUM 750ML', 31, 0, 3, 125.00, 1),
(150, 'JUGO SULA 1/2', 3, 0, 2, 13.00, 1),
(151, 'JUGO SULA 1 LITRO', 3, 0, 2, 25.00, 1),
(152, 'RON PREMIUM 375ML', 31, 0, 3, 70.00, 1),
(153, 'RON AZUL 350ML', 31, 0, 3, 50.00, 1),
(154, 'SULA 473 ML.', 3, 0, 2, 18.00, 1),
(155, 'RON LITE', 31, 0, 3, 100.00, 1),
(156, 'JUGO NARANJA Y ZANAHORIA 500 ML.', 3, 0, 2, 17.00, 1),
(157, 'JUGO SELECT 1750 ML.', 3, 0, 2, 45.00, 1),
(158, 'zambo 155 gr.', 42, 0, 2, 32.00, 1),
(159, 'RON GOLD 1.75 ML', 21, 0, 3, 350.00, 1),
(160, 'yummix 200 g.', 42, 0, 2, 40.00, 1),
(161, 'RON PREMIUM 1750ML', 31, 0, 3, 220.00, 1),
(162, 'caribas 143 g', 42, 0, 2, 30.00, 1),
(163, 'RON LITE 375ML', 31, 0, 3, 50.00, 1),
(164, 'DORITOS 150 G.', 42, 0, 2, 25.00, 1),
(165, 'RANCHITAS 150G.', 42, 0, 2, 25.00, 1),
(166, 'CHICHARON 110 GR.', 42, 0, 2, 43.00, 1),
(167, 'BOONES BINO 750ML', 43, 0, 3, 110.00, 1),
(168, 'GORDITOS 85 GR. ', 42, 0, 2, 20.00, 1),
(169, 'ZIBAS ANILLITOS 150 GR.', 42, 0, 2, 25.00, 1),
(170, 'ZIBAS PAPITAS 100 GR.', 42, 0, 2, 25.00, 1),
(171, 'RON BARCELO', 44, 0, 3, 250.00, 1),
(172, 'cheetos 80 gr.', 14, 0, 2, 25.00, 1),
(173, 'RON GRAN AÃ‘EJO 750ML', 44, 0, 3, 275.00, 1),
(174, 'lays max 80gr', 14, 0, 2, 32.00, 1),
(175, 'RON AÃ‘EJO 350ML', 44, 0, 3, 145.00, 1),
(176, 'fritos antojitos ', 14, 0, 2, 25.00, 1),
(177, 'RON BARCELO', 44, 0, 3, 115.00, 1),
(178, 'lays original  80 gr.', 14, 0, 2, 32.00, 1),
(179, 'fiestas snax 105 g.', 14, 0, 2, 32.00, 1),
(180, 'pofffets queso 130 gr.', 14, 0, 2, 25.00, 1),
(181, 'NACHOS', 47, 0, 2, 40.00, 1),
(182, 'recargas y paquetigos', 48, 0, 1, 1.00, 1),
(183, 'recargas y paqueclaros', 49, 0, 1, 1.00, 1),
(184, 'pastel de piÃ±a', 47, 0, 1, 12.00, 1),
(185, 'CONFITES', 47, 0, 1, 1.00, 1),
(186, 'TABLETAS DE COCO', 47, 0, 1, 2.00, 1),
(187, 'TAJADAS Y YUQUITAS PEQ.', 47, 0, 1, 7.00, 1),
(188, 'RON DAIQYURI', 21, 0, 3, 220.00, 1),
(189, 'CASABES', 47, 0, 2, 15.00, 1),
(190, 'XL 1 LITRO', 45, 0, 3, 150.00, 1),
(191, 'RON XL 750ML', 45, 0, 1, 145.00, 1),
(192, 'VASOS', 47, 0, 1, 1.00, 1),
(193, 'RON FREIXENET 750ML', 46, 0, 3, 250.00, 1),
(194, 'FREIXENET 200ML', 46, 0, 3, 110.00, 1),
(196, 'HIELO', 47, 0, 1, 20.00, 1),
(197, 'RON BARCELO AÃ‘EJO', 44, 0, 3, 250.00, 1),
(198, 'WRIGLEYS SLIM PACK', 50, 0, 2, 35.00, 1),
(199, 'SPARKTING 750ML', 35, 0, 3, 105.00, 1),
(200, 'WRIGLEYS 5', 50, 0, 2, 40.00, 1),
(201, 'CHICLES 5 STICKS', 50, 0, 2, 10.00, 1),
(202, 'ARECHA CARTA BLANCA', 47, 0, 3, 135.00, 1),
(203, ' CHICLES EXTRA ', 50, 0, 2, 35.00, 1),
(204, 'ECLIPSE 18 PIECES', 50, 0, 2, 35.00, 1),
(205, 'NIGHT TRAIN 750ML', 47, 0, 3, 120.00, 1),
(206, 'TRIDENT TWIST', 50, 0, 2, 25.00, 1),
(207, 'NIGHT TRAIN 375ML', 47, 0, 3, 65.00, 1),
(208, 'TREDENT 18 PIEZAS', 50, 0, 2, 25.00, 1),
(209, 'CALIPTUS ', 50, 0, 2, 10.00, 1),
(210, 'MENTITAS ', 50, 0, 2, 10.00, 1),
(211, 'ISOBELLA SAMBUCA', 47, 0, 3, 280.00, 1),
(212, 'CHICLETS', 50, 0, 2, 12.00, 1),
(213, 'RON SUPERIOR CASTILLO', 47, 0, 3, 90.00, 1),
(214, 'JUICY FRUIT', 50, 0, 2, 35.00, 1),
(215, 'VINO ANDRE 750ML', 47, 0, 3, 190.00, 1),
(216, 'RIUNITE VINO DE MANZANA', 47, 0, 3, 130.00, 1),
(217, 'TRIDENT 16.8 GR.', 50, 0, 2, 12.00, 1),
(218, 'SUNSET VINO 750ML', 47, 0, 3, 110.00, 1),
(219, 'CLORETS 12 PASTILLAS', 50, 0, 2, 12.00, 1),
(220, 'CAFE ', 47, 0, 1, 20.00, 1),
(221, 'te lipton 500 ml ', 20, 0, 2, 17.00, 1),
(222, 'JUGO LEYDE 1/2', 40, 0, 2, 25.00, 1),
(223, 'FRISTY 1/2', 39, 0, 2, 20.00, 1),
(225, 'cigarro LM ', 47, 0, 2, 41.00, 1),
(226, 'BELMONT GRANDE ', 51, 0, 3, 57.00, 1),
(227, 'ROYAL GRANDE', 52, 0, 3, 48.00, 1),
(228, 'DUNHILL', 53, 0, 3, 60.00, 1),
(229, 'BELMONT PEQUEÃ‘O', 51, 0, 3, 29.00, 1),
(230, 'ROYAL PEQUEÃ‘O', 52, 0, 3, 25.00, 1),
(231, 'MARLBORO  GRANDE', 54, 0, 3, 60.00, 1),
(232, 'IMPERIAL', 47, 0, 3, 48.00, 1),
(233, 'CIGARRO VICEROY ', 51, 0, 3, 35.00, 1),
(234, 'MANI 80 GR.', 55, 0, 2, 16.00, 1),
(235, 'DUREX', 56, 0, 2, 80.00, 1),
(236, 'HEROS ', 57, 0, 2, 60.00, 1),
(237, 'DUREX PLAY vibrations', 56, 0, 2, 160.00, 1),
(238, 'cacahuates la catrachita ', 58, 0, 2, 20.00, 1),
(239, 'RON EXTRA LITE 1.75 LITROS', 28, 0, 3, 365.00, 1),
(240, 'pepiayote  ', 58, 0, 2, 30.00, 1),
(241, 'nueces mixtas', 58, 0, 2, 35.00, 1),
(242, 'maraÃ±on ', 58, 0, 2, 35.00, 1),
(243, 'pistachos con sal ', 58, 0, 2, 35.00, 1),
(244, 'JOSE  CUERVO', 59, 0, 3, 440.00, 1),
(245, 'almendras', 58, 0, 2, 35.00, 1),
(247, 'energizer 9V1', 60, 0, 2, 85.00, 1),
(248, 'ENERGIZER AAA2', 60, 0, 2, 40.00, 1),
(249, 'TEQUILA CAZADORES', 47, 0, 3, 650.00, 1),
(250, 'ENERGIZER  AA2', 60, 0, 2, 40.00, 1),
(251, 'TEQUILA CAZADOR AÃ‘EJO', 47, 0, 3, 700.00, 1),
(252, 'EVEREADY GOLD AAA2', 61, 0, 2, 32.00, 1),
(253, 'EVEREADY GOLD AA2', 61, 0, 2, 35.00, 1),
(254, 'RAYOVAC 9V1', 62, 0, 2, 79.00, 1),
(255, 'RAYOVAC AA2', 62, 0, 2, 40.00, 1),
(256, 'SANYO AA2', 47, 0, 2, 40.00, 1),
(257, 'SANYO AAA2', 47, 0, 2, 40.00, 1),
(258, 'RAYOVAC AAA2', 62, 0, 2, 40.00, 1),
(259, 'FIORE MANZANILLA', 47, 0, 2, 20.00, 1),
(260, 'FIORE NOCTURNA ', 47, 0, 2, 30.00, 1),
(261, 'SKITTLES ', 63, 0, 2, 27.00, 1),
(262, 'KOTEX ', 47, 0, 2, 23.00, 1),
(263, 'FIORE ', 47, 0, 2, 15.00, 1),
(264, 'DUREX SPLAY 50 ML.', 56, 0, 2, 140.00, 1),
(265, 'NEU CAR ', 47, 0, 2, 65.00, 1),
(266, 'TEMFLEX ', 47, 0, 2, 35.00, 1),
(267, 'CINTA ', 47, 0, 2, 20.00, 1),
(268, 'AIR FRESHENER', 47, 0, 2, 35.00, 1),
(269, 'PINITOS ', 47, 0, 2, 20.00, 1),
(270, 'ABSOLUD 50ML', 64, 0, 3, 40.00, 1),
(271, 'ZERO VODKA', 64, 0, 3, 175.00, 1),
(272, 'MAGIC MOMENT', 64, 0, 3, 210.00, 1),
(273, 'SCHICK XTREME3', 47, 0, 2, 20.00, 1),
(274, 'GILLRTTE PRESTOBARBA 3', 47, 0, 2, 20.00, 1),
(275, 'ABSOLUD 750ML', 64, 0, 3, 390.00, 1),
(276, 'ENCENDEDOR', 47, 0, 2, 18.00, 1),
(277, 'ENCENDEDOR', 47, 0, 2, 18.00, 1),
(278, 'FOSFOROS', 47, 0, 2, 1.00, 1),
(279, 'NUVO 750ML', 59, 0, 3, 750.00, 1),
(280, 'GREY GOSE 750ML', 64, 0, 3, 950.00, 1),
(281, 'VIZZIO', 47, 0, 2, 45.00, 1),
(282, 'SNICKERS 96.4 G.', 47, 0, 2, 50.00, 1),
(283, 'CHIVAS REGAL', 47, 0, 3, 880.00, 1),
(284, 'SNICKES  GRANDE', 47, 0, 2, 50.00, 1),
(285, 'KISSES ', 47, 0, 2, 25.00, 1),
(286, 'HAIG SUPREME', 47, 0, 3, 435.00, 1),
(287, 'RICE KRISPIES', 47, 0, 2, 15.00, 1),
(288, 'VALLE REDONDO SIDRA', 47, 0, 3, 135.00, 1),
(289, 'RICE KRISPIES 22 G.', 47, 0, 2, 10.00, 1),
(290, 'KINDER BUENO', 47, 0, 2, 35.00, 1),
(291, 'MILKYWAY GRANDE', 47, 0, 2, 50.00, 1),
(292, 'SNICKERS PEQUEÃ‘O', 47, 0, 2, 25.00, 1),
(293, 'MILKYWAY  PEQUEÃ‘A', 47, 0, 2, 27.00, 1),
(294, 'HERSHIYS MIL CHOCOLATE ALMONDS', 47, 0, 2, 28.00, 1),
(295, 'SARITA HELADO GALON', 65, 0, 2, 120.00, 1),
(296, 'NESTLE', 47, 0, 2, 25.00, 1),
(297, 'TOYS CANDY', 66, 0, 2, 15.00, 1),
(298, 'SARITA HELADO 1/2 GALON', 65, 0, 2, 76.00, 1),
(299, 'SARITA 0.5 LITRO', 65, 0, 2, 55.00, 1),
(300, 'SARITA COPITA ', 65, 0, 2, 32.00, 1),
(301, 'SARITA VASITO', 65, 0, 2, 16.00, 1),
(302, 'SARITA BARRITA', 65, 0, 2, 10.00, 1),
(303, 'M&M CHOCOLATE ', 47, 0, 2, 27.00, 1),
(304, 'SARITA PALITOS', 65, 0, 2, 10.00, 1),
(305, 'PAN MONARCA', 47, 0, 2, 30.00, 1),
(306, 'BLINK POP ', 66, 0, 2, 30.00, 1),
(307, 'FLASH POP', 47, 0, 2, 30.00, 1),
(308, 'SARITA PALETAS DE SABORES', 65, 0, 2, 17.00, 1),
(309, 'ANGRY BIRDS', 66, 0, 2, 120.00, 1),
(310, 'JUGUETE PESQUERO', 66, 0, 1, 75.00, 1),
(311, 'SARITA CONOS', 65, 0, 2, 20.00, 1),
(312, 'CINTA NEGRA', 65, 0, 2, 20.00, 1),
(313, 'BASEBALL BAT', 66, 0, 2, 35.00, 1),
(314, 'SARITA SAN GUCHITO', 65, 0, 2, 16.00, 1),
(315, 'CARRO CON DULCES', 66, 0, 2, 70.00, 1),
(316, 'PUSH TRY ME ', 66, 0, 2, 80.00, 1),
(317, 'SARITA CINTA CRISPY', 65, 0, 2, 22.00, 1),
(318, 'MUSCLE PUSH DOWW', 66, 0, 2, 70.00, 1),
(319, 'SARITA PALETA GIGA', 65, 0, 2, 30.00, 1),
(320, 'SUPER MARIO ', 66, 0, 2, 60.00, 1),
(321, 'WARNINO CHOKING ', 66, 0, 2, 40.00, 1),
(322, 'SWEET SOAKER PISTOLITAS ', 66, 0, 2, 40.00, 1),
(323, 'PRESTONE HIDRAULICO 335ML', 67, 0, 2, 50.00, 1),
(324, 'DIZZY POP', 66, 0, 2, 38.00, 1),
(325, 'BARDAHL ADICTIVO', 67, 0, 2, 100.00, 1),
(326, 'PALETA DE SCOOBY  DOO', 66, 0, 2, 30.00, 1),
(327, 'POP TOYS ', 66, 0, 2, 35.00, 1),
(328, 'PURE GUARD Adictivo', 67, 0, 2, 65.00, 1),
(329, 'SDUR SPIIIER', 66, 0, 2, 30.00, 1),
(330, 'BOTTLE POP', 66, 0, 2, 25.00, 1),
(331, 'ABRO LIQUIDO DE FRENO', 67, 0, 2, 60.00, 1),
(332, 'FLASH POP MINI', 66, 0, 2, 20.00, 1),
(333, 'HALOGENAS', 67, 0, 2, 115.00, 1),
(334, 'PUSH POP', 66, 0, 2, 18.00, 1),
(335, 'WHIRLY POP', 66, 0, 2, 35.00, 1),
(336, 'FORMULA 1 CERA CARNAUBA', 67, 0, 2, 120.00, 1),
(337, 'HELLO KITTY ', 66, 0, 2, 37.00, 1),
(338, 'AROMATIZANTE FRESH STONE', 67, 0, 2, 75.00, 1),
(339, 'BOMBON ', 66, 0, 2, 25.00, 1),
(340, 'CELULAR ', 66, 0, 2, 35.00, 1),
(341, 'AROMATIZANTE GLADE', 68, 0, 2, 90.00, 1),
(342, 'GALLETA COCANI 200 GR.', 70, 0, 2, 20.00, 1),
(343, 'GALLETA COCANI 113 GR. ', 70, 0, 2, 10.00, 1),
(344, 'AROMATIZANTE SCENTS VENT OIL', 68, 0, 2, 95.00, 1),
(345, 'CHURRUSCOS', 70, 0, 2, 25.00, 1),
(346, 'AROMATIZANTE FRESH BREEZE', 68, 0, 2, 75.00, 1),
(347, 'ARTESANAS CASERAS 350 GR. ', 70, 0, 2, 28.00, 1),
(348, 'ARTESANAS CASERAS 113 GR. ', 70, 0, 2, 10.00, 1),
(349, 'PEGAMENTO SILICON', 71, 0, 2, 60.00, 1),
(350, 'HOJALDRAS CLAREHS ', 72, 0, 2, 27.00, 1),
(351, 'ROSQUILLAS MAYQUE 12 UNIDADES.', 47, 0, 2, 25.00, 1),
(352, 'RUBRIN COMPOUND', 69, 0, 2, 130.00, 1),
(353, 'ROSQUILLAS MAYQUE 18 UNIDADES', 47, 0, 2, 35.00, 1),
(354, 'formula 1 PROTECTOR DE TABLERO', 69, 0, 2, 90.00, 1),
(355, 'ROSQUILLAS GRANDES 10 UNIDADES ', 47, 0, 2, 45.00, 1),
(356, 'HOJALDRAS GRANDES 10 UNIDADES', 47, 0, 2, 45.00, 1),
(357, 'ACEITE DE TRASMICION MECANICA', 67, 0, 2, 80.00, 1),
(358, 'ROSQUILLAS CLAREHS 5 UNIDADES ', 47, 0, 2, 35.00, 1),
(359, 'ACEITE ATF', 67, 0, 2, 80.00, 1),
(360, 'ROSQUILLAS CLAREHS 12 UNIDADES ', 72, 0, 2, 35.00, 1),
(361, 'ACEITE DE MOTOR', 67, 0, 2, 150.00, 1),
(362, 'HOJALDRAS MIXTAS', 47, 0, 2, 25.00, 1),
(363, 'PENNZOIL ACEITE DE MOTOR 15W-40', 67, 0, 2, 150.00, 1),
(364, 'ROSQUILLAS MAYQUE 140 GR. ', 47, 0, 2, 35.00, 1),
(365, 'QUAKER STATE ACEITE DE MOTOR 20W-50', 67, 0, 2, 150.00, 1),
(366, 'ROSQUILLAS CLAREHS 12 UNIDADES', 72, 0, 2, 35.00, 1),
(367, 'PENNZOIL ACEITE 20W-50 PARA MOTO', 67, 0, 2, 150.00, 1),
(368, 'PANQUECITOS SABOR VAINILLAS 100 G', 26, 0, 2, 20.00, 1),
(369, 'PRINCIPE CRUNCH', 26, 0, 2, 15.00, 1),
(370, 'ACEITE MOTOR PENNZOIL 20W-50', 67, 0, 2, 150.00, 1),
(371, 'MARINELA ORION ', 26, 0, 2, 5.00, 1),
(372, 'BARRITAS FRESA', 26, 0, 2, 10.00, 1),
(373, 'ACEITE ALLIANCE SAE 50', 67, 0, 2, 80.00, 1),
(374, 'ACEITE HAVOLINE MOTO ', 67, 0, 2, 170.00, 1),
(375, 'MARINELA PRINCIPE 85 GR.', 26, 0, 2, 15.00, 1),
(376, 'DALMATA 45 GR. ', 26, 0, 2, 15.00, 1),
(377, 'ACEITE POWER STEERING HIDRAULICO', 67, 0, 2, 80.00, 1),
(378, 'PANQUECITOS CON GOTA DE CHOCOLATE ', 26, 0, 2, 15.00, 1),
(379, 'HAVOLINE ATF', 67, 0, 2, 170.00, 1),
(380, 'CRACKETS 41 GR. ', 6, 0, 2, 10.00, 1),
(381, 'PRO MANI SEMILLAS MIXTAS  80 GR. ', 47, 0, 2, 30.00, 1),
(382, 'MANI HORNEADO 80 GR. ', 47, 0, 2, 20.00, 1),
(383, 'PRO PLATANOS 85 GR. ', 47, 0, 2, 20.00, 1),
(384, 'PERA', 74, 0, 2, 17.00, 1),
(385, 'MANZANAS', 74, 0, 2, 16.00, 1),
(386, 'UVAS ', 74, 0, 2, 60.00, 1),
(387, 'ACEITE DE MOTOR URSA 50', 67, 0, 2, 125.00, 1),
(388, 'ACEITE HAVOLINE 2 IEMPOS', 67, 0, 2, 170.00, 1),
(389, 'ACEITE ALLIANCE 140', 67, 0, 2, 80.00, 1),
(390, 'ABRO MOTOR FLUSH 3 MINUTOS', 67, 0, 2, 65.00, 1),
(391, 'ABRO  OIL TREATMENT 443ML', 67, 0, 2, 60.00, 1),
(392, 'ACEITE XTREME HYDRAULIC 32', 67, 0, 2, 260.00, 1),
(393, 'ACEITE ALLIANCE ATF', 67, 0, 2, 260.00, 1),
(394, 'ACEITE XTREME 140', 67, 0, 2, 260.00, 1),
(395, 'ACEITE ALLIANCE SAE 140', 67, 0, 2, 260.00, 1),
(396, 'ACEITE ALLIANCE SAE 90', 67, 0, 2, 260.00, 1),
(397, 'ACEITE ENGINE COOLANT', 67, 0, 2, 95.00, 1),
(398, 'ACEITE QUAKER STATE 15W-40 GALON', 67, 0, 2, 560.00, 1),
(399, 'ACEITE PENNZOIL 20W-50 GALON', 67, 0, 2, 560.00, 1),
(400, 'ACEITE URSA SAE 50 GALLON', 67, 0, 2, 470.00, 1),
(401, 'ACEITE FREEZETONE RADIATOT ADDICTIE', 67, 0, 2, 55.00, 1),
(402, 'ABRO CLEAN ALL ', 73, 0, 2, 85.00, 1),
(403, 'SUPER RADIATOR ADDICTIVE', 67, 0, 2, 55.00, 1),
(404, 'ABRO LIMPIADOR DE CARBURADOR', 73, 0, 2, 60.00, 1),
(405, 'ABRO BUG&TAR REMOVER', 73, 0, 2, 65.00, 1),
(406, 'ABRO SPRAY DE ARRANQUE ', 73, 0, 2, 75.00, 1),
(407, 'BEST PRICE ALUMINUM FOIL', 47, 0, 2, 17.00, 1),
(408, 'ABRO INFLADOR', 73, 0, 2, 100.00, 1),
(409, 'PAQUETE DE VASOS 25 UNIDADES', 47, 0, 2, 20.00, 1),
(410, 'ABRO FOAMUNG TIRE CLEANER', 73, 0, 2, 110.00, 1),
(411, 'PROTECTOR BEUTIFIER 2000', 73, 0, 2, 80.00, 1),
(412, 'ARMORALL ORIGINAL 118ML', 69, 0, 2, 50.00, 1),
(413, 'ARMORALL ORIGINAL 295ML', 69, 0, 2, 95.00, 1),
(414, 'AROMATIZANTE LA CHICA FRESITA', 68, 0, 2, 55.00, 1),
(415, 'ABRO LUBRICANTE ANTIOXIDO Y PENETRANTE', 67, 0, 2, 65.00, 1),
(416, 'PEGAMENTO 4 MINUTOS', 71, 0, 2, 55.00, 1),
(417, 'GOMILOCAS 125 GR. ', 47, 0, 2, 10.00, 1),
(418, 'AGUA DE BATERIA.', 67, 0, 2, 10.00, 1),
(419, 'CASHITAS MARAÃ‘ON ', 47, 0, 2, 45.00, 1),
(420, 'GANSITO 50 GR. ', 26, 0, 2, 15.00, 1),
(421, 'BARRITAS 53 GR. ', 26, 0, 2, 10.00, 1),
(422, 'MAMUT 30 GR. ', 47, 0, 2, 5.00, 1),
(423, 'RITZ QUESO ', 47, 0, 2, 7.00, 1),
(424, 'RITZ ORIGINAL ', 47, 0, 2, 4.00, 1),
(425, 'OREO ORIGINAL ', 47, 0, 2, 7.00, 1),
(426, 'MARINELA LORS ', 47, 0, 2, 7.00, 1),
(427, 'POZUELO CREMA ', 47, 0, 2, 3.00, 1),
(428, 'GALLETA MANTEQUILLA  PEQUEÃ‘A ', 47, 0, 2, 4.00, 1),
(429, 'KINDER SORPRESA ', 47, 0, 2, 37.00, 1),
(430, 'PALETA BIMBO ', 47, 0, 2, 10.00, 1),
(431, 'SELLADOR DE BATERIA STOP ', 47, 0, 2, 20.00, 1),
(432, 'PANADOL ANTIGRIPAL ', 75, 0, 1, 5.00, 1),
(433, 'TABCIN ANTIGRIPAL ', 75, 0, 1, 5.00, 1),
(434, 'TAP-ON ', 75, 0, 1, 5.00, 1),
(435, 'MUSFLEX', 75, 0, 1, 13.00, 1),
(436, 'ALEVE EXTRA FUERTE ', 75, 0, 1, 8.00, 1),
(437, 'GRIPEX ', 75, 0, 1, 5.00, 1),
(438, 'ANDREWS ORIGINAL ', 75, 0, 1, 5.00, 1),
(439, 'SUDAGRIP ', 75, 0, 1, 5.00, 1),
(440, 'TABCIN DIA', 75, 0, 1, 10.00, 1),
(441, 'TRIANGULOS REFLECTIVOS GTR500 ', 69, 0, 2, 60.00, 1),
(442, 'PANADOL EXTRA FUERTE ', 75, 0, 1, 5.00, 1),
(443, 'PANADOL ULTRA ', 75, 0, 1, 5.00, 1),
(444, 'TRIANGULO REFLECTING ', 69, 0, 2, 90.00, 1),
(445, 'CURE BAND ', 75, 0, 1, 1.00, 1),
(446, 'AMOXICILINA ', 75, 0, 1, 5.00, 1),
(447, 'IBUPROFENO ', 75, 0, 1, 5.00, 1),
(448, 'BARDAHL PARA BRISAS', 69, 0, 2, 120.00, 1),
(449, 'SUPER GLUE ', 47, 0, 1, 10.00, 1),
(450, 'LAFA  LLORON CON LED', 69, 0, 2, 120.00, 1),
(451, 'LAFA LLORON CON LES ', 69, 0, 2, 120.00, 1),
(452, 'TAPA DE GASOLINA ', 69, 0, 2, 40.00, 1),
(453, 'TAPA RADIADOR ', 69, 0, 2, 27.00, 1),
(454, 'XENON HALOGEN BULB ', 69, 0, 2, 115.00, 1),
(455, 'BOMBILLOS LED ', 69, 0, 2, 20.00, 1),
(456, 'XENON 4500K', 69, 0, 2, 215.00, 1),
(457, 'BOMBILLOS LED ', 69, 0, 2, 20.00, 1),
(458, 'CAS CAP TAPON ', 69, 0, 2, 70.00, 1),
(459, 'LAFA BOMBILLOS PARA AUTOS ', 69, 0, 2, 20.00, 1),
(460, 'BOMBILLOS LED', 69, 0, 2, 40.00, 1),
(461, 'TAMBON DE CARRO ', 69, 0, 2, 30.00, 1),
(462, 'SPARK PLUG ', 69, 0, 2, 20.00, 1),
(463, 'SPARK PLUGS ', 69, 0, 2, 25.00, 1),
(464, 'FUSILES ', 69, 0, 2, 10.00, 1),
(465, 'HALOGEN LAMPS ', 69, 0, 2, 80.00, 1),
(466, 'FILTRO DE GASOLINA ', 69, 0, 2, 25.00, 1),
(467, 'RADIADOR PRESSURE CAP ', 69, 0, 2, 45.00, 1),
(468, 'galleta mantequilla ', 11, 0, 2, 25.00, 1),
(469, 'toallitas humedas baby sky', 47, 0, 2, 60.00, 1),
(470, 'DORITOS 60.2 GR. ', 14, 0, 2, 20.00, 1),
(471, 'BIMBOLETES ', 26, 0, 2, 15.00, 1),
(472, 'SILICONE GASKET MAKER ', 67, 0, 2, 50.00, 1),
(473, 'DESODORANTE PARA VENTANAS ', 47, 0, 2, 70.00, 1),
(474, 'H4 BUJIAS ', 47, 0, 2, 70.00, 1),
(475, 'HOJALDRAS GRANDES 140 GR.', 47, 0, 2, 35.00, 1),
(476, 'TABLETA DE COCO EN PAQUETE ', 47, 0, 1, 35.00, 1),
(477, 'CHURRITOS FIESTAS ', 42, 0, 2, 20.00, 1),
(478, 'GALLETA FAMILIAR  345 GR. ', 11, 0, 2, 60.00, 1),
(479, 'BRAKE FLUID ', 67, 0, 2, 130.00, 1),
(480, 'SUBMARINOS 64 GR. ', 26, 0, 2, 15.00, 1),
(481, 'FERRERO ROCHER  200 G. ', 18, 0, 2, 225.00, 1),
(482, 'CHURROS FUTBOLITOS ', 76, 0, 2, 20.00, 1),
(483, 'TAJADAS RICA SULA CON CHICARRON ', 76, 0, 2, 27.00, 1),
(484, 'SNICKERS ALMOND ', 47, 0, 2, 25.00, 1),
(485, 'JUGO DE SABILA 500 ML. ', 77, 0, 2, 40.00, 1),
(486, 'PRESTOBARBA ', 78, 0, 2, 20.00, 1),
(487, 'PASTA GLISTER 60 GR.', 47, 0, 2, 110.00, 1),
(488, 'BUCHANANS', 79, 0, 3, 1000.00, 1),
(489, 'BLACK LABEL', 79, 0, 3, 998.00, 1),
(490, 'FLOR DE CAÃ‘A 4 AÃ‘OS EXTRA LITE', 80, 0, 3, 420.00, 1),
(491, 'FLOR DE CAÃ‘A AÃ‘EJO ORO 4 AÃ‘O ', 80, 0, 3, 420.00, 1),
(492, 'PACE SALSA', 47, 0, 2, 50.00, 1),
(493, 'Galleta nature valley', 47, 0, 2, 15.00, 1),
(494, 'RAP TOR ENERGIZANTE ', 47, 0, 2, 25.00, 1),
(495, 'POZOL JIREH', 47, 0, 2, 40.00, 1),
(496, 'HORCHATA JIREH ', 47, 0, 2, 40.00, 1),
(497, 'VIP BOTRAN ', 47, 0, 3, 40.00, 1),
(498, 'V8 VFUSION ENERGY', 47, 0, 2, 25.00, 1),
(499, 'Tajadas Letos chile y limon ', 47, 0, 2, 12.00, 1),
(500, 'ferrero rocher 3 unidades', 18, 0, 2, 45.00, 1),
(501, 'TABLETA DE COCO 240 GR. ', 81, 0, 1, 25.00, 1),
(502, 'DULCE 160 GR. ', 81, 0, 1, 25.00, 1),
(503, 'JALEA DE FRUTAS DULCES', 81, 0, 1, 25.00, 1),
(504, 'LECHE DE BURRA', 81, 0, 1, 25.00, 1),
(505, 'CARAMELOS ', 81, 0, 1, 20.00, 1),
(506, 'SIDRA VALLE REDONDO ', 47, 0, 3, 140.00, 1),
(507, 'FRUTTE JUGO DE MANZANA 700 ML', 82, 0, 2, 95.00, 1),
(508, 'FRUTTE JUGO DE UVA 700 ML.', 82, 0, 2, 105.00, 1),
(509, 'ORBIT WHITE', 47, 0, 2, 35.00, 1),
(510, 'MARLBORO  BLUE ICE', 47, 0, 3, 60.00, 1),
(511, 'SERVILLETAS MAX PAPPEL', 47, 0, 2, 20.00, 1),
(512, 'CUBIERTOS ', 47, 0, 2, 10.00, 1),
(513, 'CACAHUATE CON AJONJOLI', 47, 0, 2, 30.00, 1),
(514, 'PAN TOSTADO', 26, 0, 2, 30.00, 1),
(515, 'COCANAS 6 GALLETAS ', 11, 0, 2, 7.00, 1),
(516, 'MULTI GRANO', 26, 0, 2, 12.00, 1),
(517, 'BATERILLAS AAA2 SANYO', 47, 0, 2, 40.00, 1),
(518, 'HOJALDRAS MAYQUE 10 UNIDADES.', 4, 0, 2, 35.00, 1),
(519, 'PLATOS GRANDES 50 UND.', 47, 0, 2, 65.00, 1),
(520, 'PLATOS PEQUEÃ‘OS 25 UND.', 47, 0, 2, 25.00, 1),
(521, 'GERBER ', 47, 0, 2, 20.00, 1),
(522, 'OREO ORIGINAL ', 47, 0, 2, 65.00, 1),
(523, 'BUBBLE BLASTER PISTOLAS G. ', 47, 0, 2, 80.00, 1),
(524, 'HERSHEYS MILK CHOCOLATE ', 16, 0, 2, 28.00, 1),
(525, 'ENERGIZER D2 MAX', 47, 0, 2, 90.00, 1),
(526, 'MASQUINTEY ', 47, 0, 2, 20.00, 1),
(527, 'GIFITY    L 180.00', 83, 0, 3, 180.00, 1),
(528, 'GIFITY   L 200.00', 83, 0, 3, 200.00, 1),
(529, 'SUPREME 20W-50 SAE', 67, 0, 2, 450.00, 1),
(530, 'ALLIANCE SAE 50 GALON ', 67, 0, 2, 260.00, 1),
(531, 'XTREME TYPEA  GALON', 67, 0, 2, 260.00, 1),
(532, 'XTREME AW 32 HYDRAULIC OIL', 67, 0, 2, 260.00, 1),
(533, 'MANTRA DE SABORES ', 84, 0, 2, 36.00, 1),
(534, 'CUBA LIBRE ', 47, 0, 3, 30.00, 1),
(535, 'CRUSH SODA ', 47, 0, 2, 16.00, 1),
(536, 'COORS LIGHT BOTELLA.', 38, 0, 3, 35.00, 1),
(537, 'LAYS SOUR CREAM 184.2 G.', 14, 0, 2, 65.00, 1),
(538, 'ENCENDEDOR BLANCO ', 47, 0, 2, 20.00, 1),
(539, 'BORNES', 47, 0, 2, 35.00, 1),
(540, 'ABRO STARTING FLUID', 67, 0, 2, 80.00, 1),
(541, 'ACETAMINOFEN  500 MG.', 75, 0, 1, 3.00, 1),
(542, 'ALKA-SELTZER ', 75, 0, 1, 5.00, 1),
(543, 'PASTILLAS VICK ', 75, 0, 1, 10.00, 1),
(544, 'DRAMAMINE ', 75, 0, 1, 10.00, 1),
(545, 'SOMETHING SPECIAL ', 79, 0, 3, 460.00, 1),
(546, 'MANTRA  LMOKING', 47, 0, 2, 30.00, 1),
(547, 'CHIVAS REGAL 18 GOLD SIGNATURE ', 79, 0, 3, 1900.00, 1),
(548, 'PALITOS CROCANTES CON  AJO ', 85, 0, 2, 25.00, 1),
(549, 'GALLETAS LENGUITAS COOKIES', 85, 0, 2, 30.00, 1),
(550, 'BIZCOCHITOS DE COCO', 85, 0, 2, 30.00, 1),
(551, 'PAN DE YEMA  140 G.', 85, 0, 2, 35.00, 1),
(552, 'SEMITA DE YEMA 200 G. ', 85, 0, 2, 35.00, 1),
(553, 'AGUA AZUL 5 LITRO ', 20, 0, 2, 40.00, 1),
(554, 'CROWN MIXED NUTS  142 G', 47, 0, 2, 65.00, 1),
(555, 'CROWN PEANUTS 141 G.', 47, 0, 2, 40.00, 1),
(556, 'BUMBLE BEE', 47, 0, 2, 45.00, 1),
(557, 'ARMOUR VIENNA SAUSAGE ', 13, 0, 2, 30.00, 1),
(558, 'V8 ORIGINAL ', 47, 0, 2, 30.00, 1),
(559, 'DULCE NAVIDEÃ‘OS ', 81, 0, 2, 25.00, 1),
(560, 'aceite 2 tiempo', 67, 0, 2, 80.00, 1),
(562, 'GALLETA DE AVENA QUAKER ', 47, 0, 2, 13.00, 1),
(563, 'DIPPAS 390 G.', 14, 0, 2, 70.00, 1),
(564, 'ZAMBO YUQUITAS ', 42, 0, 2, 30.00, 1),
(565, 'CAPPY INFLADITOS ', 42, 0, 2, 20.00, 1),
(566, 'BISCOCHOS KARLITA', 47, 0, 2, 30.00, 1),
(567, 'ESPUMILLAS KARLITA', 47, 0, 2, 20.00, 1),
(568, 'FIORE PROTECTORES ', 47, 0, 2, 30.00, 1),
(569, 'HOJALMAR 50. G. ', 4, 0, 2, 10.00, 1),
(570, 'BIMBO NEGRITO ', 47, 0, 2, 15.00, 1),
(571, 'CANDY JUGUETE DULCE', 47, 0, 2, 15.00, 1),
(572, 'CACA COLA 251 ML.', 47, 0, 2, 30.00, 1),
(573, 'SEMITAS TABORA 12 UNIDADES', 47, 0, 1, 35.00, 1),
(574, 'FERRERO COLLECTION 162 G.', 18, 0, 2, 280.00, 1),
(575, 'FERRERO COLLECTION 97 G. ', 18, 0, 2, 185.00, 1),
(576, 'FERRERO ROCHER 62.5 G.', 18, 0, 2, 80.00, 1),
(577, 'FERRERO ROCHER 75 G. ', 18, 0, 2, 150.00, 1),
(578, 'WARNING CHOKING HAZARD', 47, 0, 2, 65.00, 1),
(579, 'PIRATE FLASH POP ', 47, 0, 2, 35.00, 1),
(580, 'CARROS SWEET RACER', 47, 0, 2, 35.00, 1),
(581, 'JUGUETE CELULAR', 47, 0, 2, 35.00, 1),
(582, 'TICTAC ', 47, 0, 2, 20.00, 1),
(583, 'PROTECTANT FORMULA 1', 47, 0, 2, 100.00, 1),
(584, 'PROTECTANCT FORMULA 1', 47, 0, 2, 100.00, 1),
(585, 'DESODORANTE CHICA FRESA LIQUIDO', 47, 0, 2, 65.00, 1),
(586, 'BUD LIGHT BOTELLA.', 47, 0, 2, 35.00, 1),
(587, 'BUDWEISER BOTELLA', 47, 0, 2, 35.00, 1),
(588, 'BUD LIGHT LATA.', 47, 0, 2, 30.00, 1),
(589, 'BUDWEISER LATA. ', 47, 0, 2, 30.00, 1),
(590, 'BOLSAS GRANDES', 47, 0, 2, 1.00, 1),
(591, 'PAPEL NEVAR ', 47, 0, 2, 20.00, 1),
(592, 'ROMPOPO SULA', 47, 0, 2, 45.00, 1),
(593, 'COORS LIGHT ALUMINUM', 47, 0, 2, 45.00, 1),
(594, 'BLUE MOON 355 ML. ', 47, 0, 2, 40.00, 1),
(595, 'galleta chiky  ', 47, 0, 2, 7.00, 1),
(596, 'DUNHILL PEQUEÃ‘O', 47, 0, 2, 31.00, 1),
(597, 'GALLETA COSTA SODA', 47, 0, 2, 13.00, 1),
(598, 'SEMITA DE YEMA  100 G.', 1, 0, 2, 25.00, 1),
(599, 'BOLSA GRANDE DE ROSITAS', 47, 0, 1, 65.00, 1),
(600, 'TAJADAS YOCOZ', 47, 0, 2, 17.00, 1),
(601, 'PLATANOS PRO CON LIMON Y SAL ', 47, 0, 2, 20.00, 1),
(602, 'YUCAS PRO 50 GR.', 47, 0, 2, 15.00, 1),
(603, 'RON FLOR DE CAÃ‘A EXTRA DRAY  4 AÃ‘OS PEQ.', 47, 0, 3, 105.00, 1),
(604, 'RANCHITA NATURALES  300 G.', 47, 0, 2, 40.00, 1),
(605, 'SLAM BUNK ', 47, 0, 2, 35.00, 1),
(606, 'ALOE VERA 1500 ML', 47, 0, 2, 75.00, 1),
(607, 'GRASA TUBO ', 47, 0, 2, 95.00, 1),
(608, 'CHOCO CHISPAS', 47, 0, 2, 12.00, 1),
(609, 'CANAPINAS', 47, 0, 2, 12.00, 1),
(610, 'GALLETAS MARIA', 47, 0, 2, 15.00, 1),
(611, 'DANISH DELIGHTS 12 ONZ', 47, 0, 2, 115.00, 1),
(612, 'CRACKER JACK', 47, 0, 2, 15.00, 1),
(613, 'BASTONES DULCES', 47, 0, 2, 5.00, 1),
(614, 'RAPTOP EN LATA', 47, 0, 2, 20.00, 1),
(615, 'FRLO DE CAÃ‘A 7 AÃ‘OS', 80, 0, 3, 250.00, 1),
(616, 'PROMOCION DE GATORABE ', 47, 0, 2, 35.00, 1),
(617, 'DORITOS NACHOS EXPORT', 47, 0, 2, 55.00, 1),
(618, 'AMP POWER 500 ML', 47, 0, 2, 25.00, 1),
(619, 'GALLETA FAMILIA POZUELO', 47, 0, 2, 45.00, 1),
(620, 'PAN MOLDEN TABORA', 47, 0, 1, 35.00, 1),
(621, 'rica sula guacamole', 47, 0, 2, 20.00, 1),
(622, 'oreo tubo', 47, 0, 2, 15.00, 1),
(623, 'ritz tubo', 47, 0, 2, 12.00, 1),
(624, 'phone pop', 47, 0, 2, 30.00, 1),
(625, 'HAPPY VAN', 47, 0, 2, 35.00, 1),
(626, 'CAR RESCUE', 47, 0, 2, 35.00, 1),
(627, 'JUMBO PUSH POP', 47, 0, 2, 35.00, 1),
(628, 'CAR F1 RACER', 47, 0, 2, 35.00, 1),
(629, 'PAN DE YEMA 2UNI', 85, 0, 1, 25.00, 1),
(630, 'jugito sula', 77, 0, 2, 7.00, 1),
(631, 'pasteles de carne', 86, 0, 1, 12.00, 1),
(632, 'churritos de queso', 86, 0, 1, 12.00, 1),
(633, 'tajadas preparadas', 86, 0, 1, 40.00, 1),
(634, 'tortillas con quesillo', 86, 0, 1, 20.00, 1),
(635, 'gringas de pollo', 86, 0, 1, 20.00, 1),
(636, 'chocolate 300g.', 18, 0, 1, 420.00, 1),
(637, 'chocolate 100g', 18, 0, 1, 200.00, 1),
(638, 'mani garapinado', 55, 0, 1, 16.00, 1),
(639, 'galon de quaker state 20w-50', 73, 0, 1, 520.00, 1),
(640, 'tacos de pollo', 86, 0, 1, 20.00, 1),
(641, 'sandwish de pollo', 86, 0, 1, 20.00, 1),
(642, 'galletas artesanas ', 87, 0, 1, 35.00, 1),
(645, 'galleta en lata ', 88, 0, 1, 115.00, 1),
(646, 'galleta pequena 100g', 87, 0, 1, 15.00, 1),
(647, 'galleta artesanas 330g', 87, 0, 1, 35.00, 1),
(648, 'galleta artesana', 87, 0, 1, 7.00, 1),
(649, 'galleta chip chop', 5, 0, 1, 27.00, 1),
(650, 'cerveza modelo', 89, 0, 1, 40.00, 1),
(651, 'cubeta de aceite sae barato', 90, 0, 1, 1700.00, 1),
(652, 'ACEITE URSA CUBETA', 91, 0, 1, 2400.00, 1),
(653, 'LIQUIDO DE FRENOS DOT-3', 47, 0, 1, 60.00, 1),
(654, 'RON XL', 45, 0, 1, 145.00, 1),
(655, 'JUGUETES DE DULCES', 47, 0, 1, 35.00, 1),
(656, 'HOJALDRAS ', 85, 0, 1, 35.00, 1),
(657, 'ROSQUILLAS', 85, 0, 2, 30.00, 1),
(658, 'HOJALDRA GRANDES', 85, 0, 2, 35.00, 1),
(659, 'BUCHANANS 12 YEARS', 92, 0, 3, 1200.00, 1),
(660, 'zibas papitas 80g', 93, 0, 2, 34.00, 1),
(661, 'pizza unidad', 86, 0, 1, 25.00, 1),
(662, 'chocolate kisses 99g', 47, 0, 2, 65.00, 1),
(663, 'SEMILLAS MIXTAS PROTY', 94, 0, 2, 35.00, 1),
(664, 'PISTACHOS PROTY', 94, 0, 2, 35.00, 1),
(665, 'MANI CON CHILE Y SAL PROTY', 94, 0, 2, 20.00, 1),
(666, 'MANI SALADITO PROTY', 94, 0, 2, 20.00, 1),
(667, 'MANI CON LIMON Y SAL PROTY', 94, 0, 2, 20.00, 1),
(668, 'ALMENDRA SALADITA PROTY', 94, 0, 2, 20.00, 1),
(669, 'TROPIMAS  JAMAICA TEA', 95, 0, 2, 30.00, 1),
(670, 'ferrero rocher 200g', 18, 0, 2, 240.00, 1),
(671, 'tropitea green tea', 95, 0, 2, 20.00, 1),
(672, 'tropitea lemon iced tea', 95, 0, 2, 20.00, 1),
(673, 'chocolate ferrero rocher 15 unds', 18, 0, 2, 305.00, 1),
(674, 'hojalmar 150g', 4, 0, 2, 30.00, 1),
(675, 'rosquillas tabora', 85, 0, 2, 75.00, 1),
(676, 'promocion de 3 churros', 93, 0, 2, 52.00, 1),
(677, 'promocion de 3 churros ', 93, 0, 2, 65.00, 1),
(678, 'jugo fristy de naranja', 3, 0, 2, 35.00, 1),
(679, 'extintor de incendios', 47, 0, 2, 65.00, 1),
(680, 'tortas tabora', 85, 0, 2, 50.00, 1),
(681, 'rosquillas tabora', 85, 0, 2, 35.00, 1),
(682, 'hielo bolsa grande', 47, 0, 1, 25.00, 1),
(683, 'vodka karat', 64, 0, 3, 215.00, 1),
(684, 'sunset de mandarina', 44, 0, 3, 110.00, 1),
(685, 'tropimas de uva', 82, 0, 2, 30.00, 1),
(686, 'NUTELLA FERRERO', 1, 0, 2, 50.00, 1),
(687, 'hersheys free 236ml', 16, 0, 2, 30.00, 1),
(688, 'hersheys chocolate 236ml', 16, 0, 2, 28.00, 1),
(689, 'frappuccino', 97, 0, 2, 60.00, 1),
(690, 'baleadas orden de 2 unds', 86, 0, 1, 20.00, 1),
(691, 'paleta grande', 7, 0, 2, 39.00, 1),
(692, 'paleta en forma de pez', 8, 0, 2, 25.00, 1),
(693, 'YO-YO SUPER', 98, 0, 2, 32.00, 1),
(694, 'JUGO DE TAZITAS TEA SET', 99, 0, 2, 45.00, 1),
(695, 'JUGUETE DE BUSITO', 100, 0, 2, 40.00, 1),
(696, 'PISTOLA DE AGUA ', 101, 0, 2, 47.00, 1),
(697, 'MUNECOS DE ACCION XTREME', 102, 0, 2, 40.00, 1),
(698, 'JUEGO DE TRES CARRITOS ', 103, 0, 2, 40.00, 1),
(699, 'JUEGO DE DOCTOR PLAY', 104, 0, 2, 35.00, 1),
(700, 'SET DE MAGICA BEAUTY', 105, 0, 2, 56.00, 1),
(701, 'JUMBO JACK ', 106, 0, 2, 40.00, 1),
(702, 'SET DE 4 SIRENITAS', 107, 0, 2, 63.00, 1),
(703, 'JUMBO JACKS ', 106, 0, 2, 45.00, 1),
(704, 'FASHION MAKE -UP', 108, 0, 2, 55.00, 1),
(705, 'JUEGO DE BILLAR', 109, 0, 2, 40.00, 1),
(706, 'bebida horse', 110, 0, 3, 25.00, 1),
(707, 'agua de coco ', 47, 0, 2, 28.00, 1),
(708, 'taco fajitas barbacoa', 42, 0, 2, 20.00, 1),
(709, 'leche sula cajita', 3, 0, 2, 10.00, 1),
(710, 'PASTILLAS VITAFLENACO', 111, 0, 1, 10.00, 1),
(711, 'BON BON UNIDAD', 112, 0, 2, 5.00, 1),
(712, 'JUGUETE ORIGINAL CON DULCES', 113, 0, 2, 35.00, 1),
(713, 'JUGO SCORBY', 114, 0, 2, 12.00, 1),
(714, 'SORPRESA DE 2 UNDS', 36, 0, 2, 65.00, 1),
(715, 'BRAZO GITANO', 86, 0, 1, 15.00, 1),
(716, 'PASTELES DE 3 LECHES', 86, 0, 1, 30.00, 1),
(717, 'red bull grande', 83, 0, 3, 70.00, 1),
(718, 'red bull grande', 83, 0, 2, 70.00, 1),
(719, 'coctel de frutas 136g', 5, 0, 2, 25.00, 1),
(720, 'tajadita yocoz gde ', 12, 0, 2, 27.00, 1),
(721, 'PALETA DE COLOR CARNIVAL POPS', 115, 0, 2, 42.00, 1),
(722, 'HELADO CASERO', 5, 0, 2, 12.00, 1),
(723, 'PALOMITA EN BOLSA PEQUENA', 116, 0, 2, 10.00, 1),
(724, 'PALOMITAS EN BOLSA MEDIANA', 116, 0, 2, 20.00, 1),
(725, 'TOSTADITAS DE MALANGA', 117, 0, 2, 31.00, 1),
(726, 'CEPILLO CLASICO UNIDAD', 118, 0, 2, 12.00, 1),
(727, 'PASTA COLGATE PEQUENA', 119, 0, 2, 17.00, 1),
(728, 'TEQUILA JARANA', 120, 0, 3, 300.00, 1),
(729, 'MILK CHOCOLATE', 109, 0, 2, 27.00, 1),
(730, 'TOALLAS HUMEDAS BABY SEC', 121, 0, 2, 60.00, 1),
(731, 'BEBIDA CRUSH ', 122, 0, 2, 20.00, 1),
(732, 'BEBIDA CRUSH', 122, 0, 2, 20.00, 1),
(733, 'BEBIDA GINGER ALE', 123, 0, 2, 45.00, 1),
(734, 'OKA ALOE', 124, 0, 2, 45.00, 1),
(735, 'BEBIDA BRAZIL GOURMET', 125, 0, 2, 20.00, 1),
(736, 'JUGO SUNNY D', 126, 0, 2, 25.00, 1),
(737, 'BEBIDA CRUSH', 122, 0, 2, 20.00, 1),
(738, 'CHOCOLATE MYM ', 17, 0, 2, 65.00, 1),
(739, 'bebida shark', 0, NULL, 2, 40.00, 1),
(740, 'ganchos para aire acondicionado', 0, NULL, 2, 70.00, 1),
(741, 'galleta artesanas 100g', 0, NULL, 2, 15.00, 1),
(742, 'galleta artesana de naranja', 0, NULL, 2, 15.00, 1),
(743, 'galleta artesanas', 58, NULL, 2, 15.00, 1),
(744, 'gancho p/aire acondicionado', 9, NULL, 2, 70.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_bodega`
--

CREATE TABLE IF NOT EXISTS `articulo_bodega` (
  `codigo_bodega` int(10) unsigned NOT NULL,
  `codigo_articulo` int(11) NOT NULL,
  `existencia` float NOT NULL,
  KEY `codigo_articulo` (`codigo_articulo`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulo_bodega`
--

INSERT INTO `articulo_bodega` (`codigo_bodega`, `codigo_articulo`, `existencia`) VALUES
(1, 7, 48),
(1, 14, -18),
(1, 19, -3),
(1, 3, 162),
(1, 4, 9),
(1, 2, 132),
(1, 8, 46),
(1, 9, 97),
(1, 24, -1),
(1, 22, -2),
(1, 10, -5),
(1, 13, -3),
(1, 16, -1),
(1, 15, -3),
(1, 25, -6),
(1, 292, -4),
(1, 284, -4),
(1, 291, -12),
(1, 105, -1),
(1, 243, -3),
(1, 305, -1),
(1, 138, -2),
(1, 265, -4),
(1, 237, -4),
(1, 11, -5),
(1, 200, -5),
(1, 347, -3),
(1, 280, -2),
(1, 121, -10),
(1, 111, -6),
(1, 71, -1),
(1, 69, -2),
(1, 142, -3),
(1, 272, -1),
(1, 180, -1),
(1, 270, -2),
(1, 320, -7),
(1, 32, -7),
(1, 98, -9),
(1, 431, -2),
(1, 473, -1),
(1, 49, -1),
(1, 28, -2),
(1, 544, -1),
(1, 129, -15),
(1, 225, -1),
(1, 107, -1),
(1, 41, -3),
(1, 1, -3),
(1, 101, -8),
(1, 36, -2),
(1, 48, -2),
(1, 386, -2),
(1, 87, -1),
(1, 145, -4),
(1, 160, -1),
(1, 12, -1),
(1, 203, -5),
(1, 42, -1),
(1, 586, -6),
(1, 130, -1),
(1, 147, -13),
(1, 282, -1),
(1, 181, -1),
(1, 186, -15),
(1, 220, -4),
(1, 196, -16),
(1, 425, -3),
(1, 526, -2),
(1, 57, -1),
(1, 597, -3),
(1, 127, -9),
(1, 182, -1605),
(1, 221, -4),
(1, 208, -2),
(1, 293, -1),
(1, 51, -3),
(1, 88, -6),
(1, 384, -8),
(1, 139, -7),
(1, 368, -3),
(1, 92, -51),
(1, 150, -7),
(1, 126, -4),
(1, 131, -34),
(1, 229, -3),
(1, 278, -1),
(1, 90, -5),
(1, 134, -3),
(1, 18, -1),
(1, 72, -2),
(1, 95, -12),
(1, 91, -13),
(1, 206, -2),
(1, 89, -13),
(1, 53, -3),
(1, 666, -1),
(1, 165, -1),
(1, 178, -1),
(1, 385, -6),
(1, 170, -1),
(1, 201, -1),
(1, 158, -2),
(1, 125, -1),
(1, 192, -21),
(1, 96, -8),
(1, 94, -10),
(1, 266, -3),
(1, 140, -4),
(1, 86, -3),
(1, 162, -1),
(1, 261, -2),
(1, 428, -1),
(1, 294, -2),
(1, 317, -2),
(1, 115, -3),
(1, 663, -1),
(1, 185, -39),
(1, 223, -2),
(1, 163, -2),
(1, 565, -1),
(1, 106, -1),
(1, 209, -2),
(1, 93, -3),
(1, 204, -4),
(1, 123, -2),
(1, 97, -5),
(1, 304, -6),
(1, 655, -2),
(1, 236, -1),
(1, 712, -3),
(1, 380, -2),
(1, 50, -2),
(1, 438, -1),
(1, 176, -1),
(1, 136, -4),
(1, 120, -2),
(1, 78, -1),
(1, 363, -2),
(1, 468, -1),
(1, 312, -2),
(1, 303, -2),
(1, 184, -1),
(1, 423, -2),
(1, 148, -6),
(1, 164, -4),
(1, 219, -1),
(1, 100, -1),
(1, 301, -2),
(1, 580, -3),
(1, 311, -1),
(1, 314, -1),
(1, 542, -2),
(1, 230, -1),
(1, 295, -1),
(1, 5, -1),
(1, 369, -2),
(1, 523, -1),
(1, 493, -1),
(1, 298, -1),
(1, 319, -1),
(1, 119, -1),
(1, 135, -1),
(1, 269, -1),
(1, 132, -1),
(1, 70, -1),
(1, 536, -3),
(1, 146, -1),
(1, 235, -1),
(1, 122, -1),
(1, 183, -25),
(1, 344, -1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_kardex`
--

CREATE TABLE IF NOT EXISTS `articulo_kardex` (
  `codigo_kardex` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_articulo` int(11) NOT NULL,
  `codigo_bodega` int(11) NOT NULL,
  `cantidad_maxima` float NOT NULL,
  `cantidad_minima` float NOT NULL,
  `metodo` varchar(145) NOT NULL DEFAULT 'Promedio ponderado',
  PRIMARY KEY (`codigo_kardex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `articulo_kardex`
--

INSERT INTO `articulo_kardex` (`codigo_kardex`, `codigo_articulo`, `codigo_bodega`, `cantidad_maxima`, `cantidad_minima`, `metodo`) VALUES
(1, 2, 1, 100, 10, 'Promedio ponderado'),
(2, 3, 1, 50, 10, 'Promedio ponderado'),
(3, 7, 1, 100, 5, 'Promedio ponderado'),
(4, 8, 1, 500, 10, 'Promedio ponderado'),
(5, 9, 1, 50, 1, 'Promedio ponderado'),
(6, 290, 1, 10, 100, 'Promedio ponderado'),
(7, 291, 1, 10, 100, 'Promedio ponderado'),
(8, 292, 1, 10, 100, 'Promedio ponderado'),
(9, 366, 1, 10, 100, 'Promedio ponderado'),
(10, 367, 1, 10, 100, 'Promedio ponderado'),
(11, 10, 1, 30, 10, 'Promedio ponderado'),
(12, 11, 1, 50, 100, 'Promedio ponderado'),
(13, 13, 1, 10, 20, 'Promedio ponderado'),
(14, 739, 1, 10, 100, 'Promedio ponderado'),
(15, 740, 1, 10, 100, 'Promedio ponderado'),
(16, 741, 1, 10, 100, 'Promedio ponderado'),
(17, 742, 1, 10, 100, 'Promedio ponderado'),
(18, 743, 1, 10, 100, 'Promedio ponderado'),
(19, 744, 1, 10, 100, 'Promedio ponderado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE IF NOT EXISTS `bodega` (
  `codigo_bodega` varchar(5) NOT NULL,
  `descripcion_bodega` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_bodega`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bodega`
--

INSERT INTO `bodega` (`codigo_bodega`, `descripcion_bodega`) VALUES
('1', 'Tienda Principal'),
('2', 'Bodega 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cierre_caja`
--

CREATE TABLE IF NOT EXISTS `cierre_caja` (
  `idCierre` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `factura_inicial` varchar(100) DEFAULT NULL,
  `factura_final` varchar(100) DEFAULT NULL,
  `efectivo` float DEFAULT NULL,
  `creditos` float DEFAULT '0',
  `isv15` float DEFAULT NULL,
  `isv18` float DEFAULT NULL,
  `totalventa` float DEFAULT NULL,
  `totalimpuesto` float DEFAULT NULL,
  `tarjeta` float DEFAULT '0',
  `usuario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idCierre`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `cierre_caja`
--

INSERT INTO `cierre_caja` (`idCierre`, `fecha`, `factura_inicial`, `factura_final`, `efectivo`, `creditos`, `isv15`, `isv18`, `totalventa`, `totalimpuesto`, `tarjeta`, `usuario`) VALUES
(1, '2015-08-09', '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL),
(10, '2015-08-09', '1', '123', 7974, NULL, 891.07, 110.29, 8649, NULL, 675, 'kelsy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `codigo_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `movil` varchar(9) DEFAULT NULL,
  `rtn` varchar(45) DEFAULT '   ',
  PRIMARY KEY (`codigo_cliente`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`codigo_cliente`, `nombre_cliente`, `direccion`, `telefono`, `movil`, `rtn`) VALUES
(1, 'Consumidor final', NULL, NULL, NULL, ''),
(2, 'Jose David', 'Barrio suyapa', '164646', '46464', '4646'),
(3, 'sdfadsf', 'fdsafas', 'dfafsad', 'fdsafas', 'asdfas'),
(4, 'Maria', 'San Juan Pueblo', '999999', '999999', 're6877688'),
(5, 'Jose Fernado', 'sdfsa', '16464', '46464', '44646464'),
(6, 'Maria Dolores', 'fsdafa', '44446', '6464', '446454'),
(7, 'Luis Fernando Mayorga', 'San Juan Pueblo', '2544', '65458', '   '),
(8, 'kkk', '', '', '', '01144'),
(9, 'bbb', '', '', '', '2222'),
(10, 'juan', '', '', '', ''),
(11, '', '', '', '', ''),
(12, 'jesus', '', '', '', ''),
(13, 'MARIO DIAZ', '', '', '', ''),
(14, 'IGLESIA DE JESUCRISTO S.U.D.', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_articulos`
--

CREATE TABLE IF NOT EXISTS `codigos_articulos` (
  `codigo_articulo` int(10) unsigned NOT NULL,
  `codigo_barra` varchar(150) NOT NULL,
  `id_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1113 ;

--
-- Volcado de datos para la tabla `codigos_articulos`
--

INSERT INTO `codigos_articulos` (`codigo_articulo`, `codigo_barra`, `id_codigo`) VALUES
(1, '750894680672', 1),
(1, '750894680092', 2),
(1, '750894680689', 3),
(1, '750894680078', 4),
(2, '7421240800015', 5),
(3, '7421240800022', 6),
(4, '7421240800046', 7),
(5, '7421240800039', 8),
(6, '7793450000159', 9),
(6, '7793450000128', 10),
(7, '7802215512308', 11),
(7, '7802215512292', 12),
(7, '7802215512261', 13),
(7, '7802215512285', 14),
(8, '7501000644261', 15),
(8, '7501000614547', 16),
(8, '7501000614530', 17),
(9, '041565000098', 18),
(9, '041565000074', 19),
(10, '7501000635306', 20),
(10, '7501000638925', 21),
(10, '7501000657797', 22),
(11, '7501000638499', 23),
(11, '7501000638512', 24),
(12, '049243003027', 25),
(12, '072108128139', 26),
(12, '072108128115', 27),
(12, '072108128122', 28),
(13, '030100058014', 29),
(14, '086106002063', 30),
(15, '7793450000111', 31),
(16, '7501000663705', 32),
(17, '086581007607', 33),
(18, '7501000621057', 34),
(19, '7501000645756', 35),
(20, '7501000669509', 36),
(21, '7501000601745', 37),
(21, '7501000601738', 38),
(22, '7793450000135', 39),
(22, '7793450000166', 40),
(131, '7422110102994', 936),
(131, '7422110102529', 935),
(24, '7501000635726', 43),
(25, '076150601329', 44),
(27, '076150220230', 45),
(26, '076150232486', 46),
(28, '017000009360', 47),
(29, '017000009469', 48),
(30, '017000009506', 49),
(31, '017000009391', 50),
(32, '721282202004', 51),
(32, '721282202707', 52),
(32, '721282202714', 53),
(32, '721282101628', 54),
(32, '721282201991', 55),
(33, '730406002079', 56),
(34, '721282202745', 57),
(35, '342410', 58),
(36, '03423909', 746),
(37, '028000131708', 60),
(421, '74000579', 815),
(39, '7898024395072', 62),
(41, '789742140068', 63),
(42, '611594000019', 64),
(43, '7421610704011', 65),
(44, '611594000149', 66),
(45, '80135500', 67),
(46, '7861002900117', 68),
(47, '80052487', 69),
(48, '7401005500817', 70),
(48, '7421000811169', 71),
(48, '7421000811367', 72),
(49, '7501008611135', 73),
(48, '7421000840817', 74),
(50, '038000844966', 75),
(50, '038000845000', 76),
(50, '038000844980', 77),
(51, '038000845253', 78),
(51, '038000845260', 79),
(51, '038000845246', 80),
(52, '7501008604014', 81),
(53, '038000845512', 82),
(53, '038000846748', 83),
(53, '038000845536', 84),
(54, '7501008604021', 85),
(55, '7501008645246', 86),
(56, '028400055093', 87),
(59, '797936000326', 88),
(57, '080480400637', 89),
(58, '7501008616130', 90),
(60, '7501008603024', 91),
(61, '7802215505287', 92),
(61, '7802215505294', 93),
(62, '7501008603017', 94),
(64, '041224711761', 95),
(64, '041224711907', 96),
(63, '080480355609', 97),
(64, '041224711945', 98),
(64, '041224711983', 99),
(64, '041224711921', 100),
(65, '7501008613078', 101),
(66, '7423410090097', 102),
(67, '7501008612071', 103),
(68, '086581005382', 104),
(69, '7501008612040', 105),
(70, '7501000610228', 106),
(71, '7501008613047', 107),
(72, '74000685', 108),
(73, '026964824735', 109),
(73, '026964458763', 110),
(73, '026964726398', 111),
(74, '725156003650', 112),
(75, '026964334227', 113),
(76, '026964809718', 114),
(77, '026964453188', 115),
(78, '74001200', 116),
(78, '74001095', 117),
(79, '026964237689', 118),
(80, '026964453188', 119),
(82, '026964257014', 120),
(84, '7401006712127', 121),
(83, '7422111007045', 122),
(85, '74000593', 123),
(86, '7401006712301', 124),
(87, '7421000800255', 125),
(87, '7421000841579', 126),
(87, '7421000841593', 127),
(87, '7421000841586o', 128),
(87, '7421000800279', 129),
(88, '4710589320722', 130),
(89, '611594000170', 131),
(90, '7421600303507', 132),
(91, '611594000033', 133),
(93, '7421600306522', 134),
(92, '01', 135),
(94, '036731001757', 136),
(94, '036731001733', 137),
(94, '036731001740', 138),
(95, '7421600302111', 139),
(95, '7421600302012', 140),
(95, '7421600303262', 141),
(95, '7421600304788', 142),
(96, '7421600303835', 143),
(96, '7421600305051', 144),
(97, '7421600303828', 145),
(98, '070847005216', 146),
(98, '070847005070', 147),
(98, '070847005407', 148),
(98, '070847005230', 149),
(99, '7421600304702', 150),
(99, '7421600304689', 151),
(99, '7421600304696', 152),
(99, '7421600304672', 153),
(100, '9002490204006', 154),
(101, '041800203505', 155),
(102, '051000146533', 156),
(102, '051000146557', 157),
(103, '089396156126', 158),
(103, '089396152906', 159),
(103, '089396152920', 160),
(103, '089396153309', 161),
(104, '08548609', 162),
(105, '03456217', 163),
(106, '081537200811', 164),
(106, '081537200828', 165),
(109, '081537200736', 166),
(109, '081537200729', 167),
(109, '081537200743', 168),
(109, '081537200750', 169),
(107, '7421600304153', 170),
(108, '7421600302821', 171),
(108, '7421600305129', 172),
(108, '7421600305105', 173),
(110, '7421600302302', 174),
(110, '7421600301435', 175),
(111, '7421600304559', 176),
(112, '7421600304566', 177),
(113, '7421600304955', 178),
(113, '7421600304986', 179),
(115, '611594000125', 180),
(115, '611594000552', 181),
(115, '611594000279', 182),
(115, '611594000231', 183),
(198, '02266600', 390),
(117, '7421632400021', 185),
(118, '7421632400014', 186),
(418, '18', 688),
(119, '7421600301497', 188),
(119, '7421600302913', 189),
(119, '7421600301541', 190),
(119, '7421600301534', 191),
(120, '7421600304719', 192),
(120, '7421600304733', 193),
(120, '7421600304740', 194),
(120, '7421600304771', 195),
(120, '7421600304801', 196),
(120, '7421600304757', 197),
(120, '7421600305259', 198),
(198, '02266503', 391),
(121, '7421600303330', 200),
(121, '7421600304047', 201),
(121, '7421600303354', 202),
(122, '7421000840039', 203),
(123, '7421600301732', 204),
(123, '7421600301008', 205),
(123, '7421600301725', 206),
(123, '7421600301718', 207),
(124, '7422540000181', 208),
(124, '795893201329', 209),
(124, '7422540000174', 210),
(125, '7421600300346', 211),
(125, '7421600300278', 212),
(126, '795893105221', 213),
(485, '610585434918', 773),
(125, '7421600300247', 215),
(104, '08513108', 772),
(127, '795893201220', 217),
(128, '7422110100266', 218),
(129, '7401002307518', 219),
(129, '7411001800231', 220),
(129, '7411001805236', 221),
(129, '7411001830238', 222),
(536, '07199044', 855),
(131, '7422110102505', 224),
(131, '7422110100600', 225),
(131, '7422110101744', 226),
(131, '7422110102482', 227),
(131, '784562021351', 228),
(131, '784562012359', 229),
(131, '7422110100495', 230),
(132, '7422110100365', 231),
(131, '7422110102499', 232),
(131, '784562023355', 233),
(133, '7422110102185', 234),
(134, '7422110100914', 235),
(135, '75032715', 236),
(136, '7422110100907', 237),
(138, '7422110100617', 240),
(137, '7422110102017', 239),
(138, '784562010508', 241),
(139, '7422110100570', 242),
(139, '7422110100556', 243),
(139, '7422110101218', 244),
(139, '7422110100938', 245),
(140, '7422110101096', 246),
(139, '7422110101225', 247),
(140, '7422110101065', 248),
(140, '7422110101089', 249),
(140, '7422110101072', 250),
(140, '7422110101041', 251),
(142, '895216001077', 252),
(142, '895216001046', 253),
(141, '784562401054', 254),
(141, '784562400057', 255),
(141, '7422110101003', 256),
(141, '03435418', 257),
(143, '764009016089', 258),
(144, '8423453901014', 259),
(146, '7501061651543', 260),
(145, '082000723844', 261),
(147, '75002459', 262),
(148, '719984', 263),
(108, '7421600302791', 264),
(108, '7421600302814', 265),
(108, '7421600302807', 266),
(150, '7421000823230', 267),
(150, '7421000811619', 268),
(150, '7421000823131', 269),
(150, '7421000811374', 270),
(149, '7422111006277', 271),
(151, '7421000823155', 272),
(154, '7421000840596', 273),
(154, '7421000840572', 274),
(154, '7421000840640', 275),
(155, '026964911909', 276),
(155, '026964638547', 277),
(156, '7421000841357', 278),
(152, '026964548914', 279),
(153, '026964319453', 280),
(157, '7421000845805', 281),
(158, '750894600717', 282),
(158, '750894600267', 283),
(158, '750894600106', 284),
(159, '7501008612163', 285),
(160, '750894609475', 286),
(161, '026964678802', 287),
(162, '721282301172', 288),
(162, '721282302445', 289),
(163, '026964214307', 290),
(164, '721282300434', 291),
(164, '721282300397', 292),
(165, '750894602421', 293),
(165, '750894606399', 294),
(229, '74203024', 479),
(166, '750894601196', 1015),
(168, '750894603824', 297),
(169, '750894606627', 298),
(167, '085000001936', 299),
(167, '085000005828', 300),
(167, '085000001509', 301),
(167, '085000009147', 302),
(167, '085000007303', 303),
(170, '750894609178', 304),
(171, '7461323129589', 305),
(171, '7461323129077', 306),
(171, '7461323129244', 307),
(172, '721282301042', 308),
(172, '721282301059', 309),
(173, '7461323129367', 310),
(174, '721282300540', 311),
(175, '7461323129282', 312),
(641, '35', 996),
(176, '753650162528', 314),
(177, '7461323129411', 994),
(178, '721282300526', 316),
(179, '721282300793', 317),
(180, '721282300908', 318),
(181, '02', 319),
(182, '03', 320),
(183, '04', 321),
(184, '05', 322),
(185, '06', 323),
(186, '07', 324),
(187, '08', 325),
(188, '080480001049', 326),
(189, '09', 327),
(190, '7401005001871', 328),
(657, '7421200900410', 1012),
(655, '072084002584', 1010),
(192, '10', 331),
(191, '7401005006609', 332),
(193, '8410036002015', 333),
(193, '8410036001094', 334),
(193, '8410036009014', 335),
(194, '8410036001131', 336),
(194, '8410036009298', 337),
(194, '8410036006297', 338),
(195, '022000013439', 339),
(196, '11', 340),
(197, '7461323129893', 341),
(198, '02266901', 389),
(199, '041800716005', 345),
(200, '022000116390', 346),
(200, '022000116376', 347),
(201, '02217206', 392),
(202, '8500000033708', 351),
(203, '02289106', 396),
(204, '022000013316', 355),
(204, '022000013279', 356),
(204, '022000013200', 357),
(205, '085000005774', 358),
(204, '022000013194', 359),
(206, '7506105602635', 360),
(206, '7506105604448', 361),
(206, '7506105604462', 362),
(206, '7506105604431', 363),
(206, '7506105602543', 364),
(206, '7501056903947', 365),
(207, '08565907', 366),
(208, '7506105606053', 367),
(208, '7501056901592', 368),
(208, '7506105606084', 369),
(208, '7506105606091', 370),
(209, '7802200139664', 371),
(211, '8001110011148', 372),
(210, '7802200137974', 373),
(212, '7702133100116', 374),
(213, '7412100033216', 375),
(214, '02266707', 395),
(215, '085000007495', 377),
(216, '8002550900108', 378),
(217, '7506105602628', 379),
(217, '7506105603236', 380),
(218, '729090019852', 381),
(218, '729090019869', 382),
(219, '7702133865459', 383),
(220, '12', 384),
(221, '7421600302302', 385),
(221, '7421600303491', 386),
(222, '795893201329', 387),
(223, '7421000840046', 388),
(201, '02217808', 393),
(201, '02217109', 394),
(203, '02289902', 397),
(203, '02284509', 398),
(225, '74203697', 399),
(226, '74200085', 403),
(226, '74200054', 401),
(226, '74200078', 402),
(226, '74200474', 404),
(227, '74200610', 405),
(227, '74200160', 406),
(228, '75042905', 407),
(229, '74200061', 408),
(229, '74200481', 409),
(229, '74200924', 410),
(230, '74200177', 411),
(230, '74200627', 412),
(231, '09080025', 424),
(232, '74200016', 415),
(233, '74200139', 416),
(234, '7441005702873', 417),
(381, '7441005702200', 645),
(234, '7441005703054', 420),
(234, '7441005702248', 646),
(234, '7441005710212', 422),
(234, '7441005702231', 423),
(231, '09080229', 425),
(235, '7501159033565', 426),
(235, '7501159033312', 427),
(235, '7501159731133', 428),
(235, '7501159033442', 429),
(228, '75040970', 430),
(236, '7420015300033', 431),
(236, '7420015300064', 432),
(236, '7420015300026', 433),
(236, '7420015300040', 434),
(236, '7420015300057', 435),
(237, '5038483393987', 436),
(238, '7423530300069', 437),
(238, '7423530300113', 438),
(238, '7423530300137', 439),
(238, '7423530300052', 440),
(239, '26964906318', 441),
(240, '7423530300083', 442),
(241, '7423530300014', 443),
(242, '7423530300045', 444),
(243, '7423530300038', 445),
(244, '7501035010109', 446),
(245, '7423530300021', 447),
(244, '7501035042322', 448),
(246, '26964462470', 449),
(247, '039800013613', 450),
(248, '039800014009', 451),
(249, '080480170028', 455),
(250, '039800015464', 453),
(251, '080480172527', 456),
(252, '8888021201468', 457),
(253, '8888021201444', 458),
(254, '012800330355', 459),
(255, '012800180936', 460),
(256, '043712107766', 461),
(258, '012800198443', 462),
(259, '013117017823', 463),
(260, '013117017854', 464),
(261, '022000015259', 467),
(261, '04016007', 468),
(261, '022000016096', 469),
(261, '04016201', 470),
(261, '022000014054', 471),
(261, '04016308', 472),
(262, '7702425631397', 473),
(263, '013117017830', 474),
(264, '7501159033701', 475),
(264, '7501159033725', 476),
(265, '076171090898', 477),
(266, '7441002704856', 478),
(267, '7441002704863', 480),
(268, '087388355663', 481),
(269, '076171101891', 482),
(269, '076171105264', 483),
(270, '7312040050505', 484),
(270, '7312040150052', 485),
(269, '076171101556', 486),
(269, '076171102904', 487),
(269, '076171101051', 488),
(271, '7412100073243', 489),
(269, '076171103123', 490),
(272, '8902147014921', 491),
(273, '7591066711014', 492),
(274, '7702018880409', 493),
(275, '7312040050758', 494),
(276, '7421000592297', 495),
(275, '7312040040759', 496),
(275, '7312040017010', 497),
(275, '7312040150755', 498),
(275, '7312040090754', 499),
(277, '13', 501),
(278, '22', 502),
(279, '088076177437', 503),
(280, '5010677850209', 504),
(281, '7802215104404', 505),
(282, '040000464082', 506),
(283, '080432400395', 507),
(284, '04026305', 508),
(286, '5000281027012', 509),
(285, '03412107', 510),
(287, '038000765414', 511),
(288, '7501036130011', 512),
(289, '038000012518', 513),
(290, '80052760', 514),
(291, '04040101', 515),
(292, '040000424314', 516),
(293, '040000422068', 517),
(294, '03424102', 518),
(295, '7401090801448', 519),
(295, '7401090801325', 520),
(295, '7401090801332', 521),
(295, '7401090802100', 522),
(295, '7401090801318', 523),
(295, '7401090801349', 524),
(295, '7401090801394', 525),
(295, '7401090801356', 526),
(296, '088169060967', 1071),
(297, '010309620076', 528),
(298, '7401090801653', 529),
(298, '7401090801639', 531),
(298, '7401090801691', 532),
(299, '7401090801813', 533),
(299, '7401090801820', 534),
(300, '7401090800342', 535),
(300, '7401090802889', 536),
(300, '7401090800403', 537),
(301, '7401090800052', 538),
(301, '7401090800045', 539),
(302, '7401090800106', 540),
(302, '7401090800083', 541),
(303, '040000402657', 542),
(302, '7401090800090', 543),
(303, '04014407', 544),
(303, '04003207', 545),
(304, '7401090800250', 546),
(304, '7401090800267', 547),
(304, '7401090800274', 548),
(305, '7401006713308', 549),
(304, '7401090800120', 550),
(304, '7401090800113', 551),
(306, '686464480000', 552),
(307, '686464455008', 553),
(308, '7401090800168', 554),
(308, '7401090803077', 555),
(309, '038252399009', 556),
(308, '7401090800458', 557),
(308, '7401090802803', 558),
(310, '083933013033', 559),
(311, '7401090800069', 560),
(311, '7401090800076', 561),
(312, '7401090800175', 562),
(313, '686464465007', 563),
(314, '7401090800038', 564),
(315, '083933005007', 565),
(316, '083933020000', 566),
(317, '7401090802001', 567),
(318, '083933025135', 568),
(319, '7401090800014', 569),
(319, '7401090803527', 570),
(320, '660973119705', 571),
(486, '7506295398080', 782),
(322, '686464495004', 573),
(323, '797496861603', 574),
(324, '073563020068', 575),
(325, '076906035101', 576),
(325, '076906050685', 577),
(325, '076906035101', 578),
(326, '083933063182', 579),
(327, '072084003185', 580),
(328, '733704939894', 581),
(329, '686464542005', 582),
(328, '733704800125', 583),
(330, '041116006340', 584),
(331, '790920012732', 585),
(332, '686464494007', 586),
(333, '730157169359', 587),
(333, '730157169342', 588),
(334, '041116005343', 589),
(336, '071099137618', 590),
(335, '072965700059', 591),
(337, '872635001246', 592),
(338, '730157052019', 593),
(338, '730157052163', 594),
(339, '609454617187', 595),
(340, '14', 596),
(341, '019912013954', 597),
(341, '019912014074', 598),
(342, '755111130923', 599),
(343, '755111160920', 600),
(344, '075847115484', 601),
(344, '075847118683', 602),
(344, '075847113008', 603),
(345, '755111130909', 604),
(346, '730157056246', 605),
(347, '755111130916', 606),
(348, '755111160913', 607),
(349, '078727653090', 608),
(349, '078727273090', 609),
(349, '078727999396', 610),
(350, '7423431400028', 611),
(351, '7423430200155', 612),
(352, '089269086109', 613),
(353, '7423430200117', 614),
(354, '071099132255', 615),
(355, '7423430200049', 616),
(356, '7423430200070', 617),
(357, '733704930426', 618),
(358, '7423431400264', 619),
(359, '657805021503', 620),
(360, '7423431400042', 621),
(361, '023968467265', 622),
(363, '073102307544', 745),
(364, '7423430200056', 625),
(365, '073102364547', 626),
(367, '071611938860', 627),
(368, '7401006712349', 628),
(369, '7441029511581', 629),
(370, '071611935692', 630),
(371, '441029503456', 631),
(208, '7506105606060', 816),
(373, '657805021626', 633),
(366, '7423431400257', 634),
(375, '7441029504613', 635),
(374, '842071002299', 636),
(376, '74001187', 637),
(377, '072372500259', 638),
(378, '74001125', 639),
(375, '7441029506181', 640),
(379, '076568040383', 641),
(380, '7501000610235', 642),
(382, '7441005710793', 647),
(383, '7441005702361', 648),
(127, '7422540000143', 649),
(384, '15', 650),
(385, '16', 651),
(386, '17', 652),
(387, '842071002565', 653),
(388, '076568029234', 654),
(389, '657805021084', 655),
(390, '790920013692', 656),
(391, '790920011452', 657),
(392, '072372200852', 658),
(393, '657805021497', 659),
(394, '072372300156', 660),
(395, '657805021077', 661),
(396, '657805021022', 662),
(397, '736324000098', 663),
(398, '073102012684', 664),
(399, '071611013758', 665),
(400, '842071002572', 666),
(401, '081905415083', 667),
(402, '790920036356', 668),
(403, '081905020324', 669),
(404, '790920013326', 670),
(405, '790920012046', 671),
(406, '0790920129669', 673),
(407, '6910631183918', 674),
(408, '790920127610', 675),
(409, '763910013101', 676),
(410, '790920030385', 677),
(411, '078727208108', 678),
(412, '070612100405', 679),
(413, '070612100108', 680),
(414, '7501088401046', 681),
(415, '790920049288', 682),
(416, '078727442090', 683),
(417, '074323079715', 684),
(138, '784562023508', 687),
(119, '7421600301442', 686),
(419, '760573070243', 689),
(420, '74000708', 690),
(421, '74000586', 813),
(422, '7501000636921', 692),
(423, '7622300800642', 693),
(424, '7622300803810', 694),
(425, '725156314510', 695),
(426, '7441029507263', 696),
(427, '086581015091', 697),
(428, '086581017316', 698),
(429, '80741251', 699),
(430, '074323078879', 700),
(431, '19', 701),
(432, '7451079000140', 702),
(434, '702241008103', 703),
(435, '7420002000151', 704),
(436, '011418210295', 705),
(437, '7420000401318', 706),
(438, '74410187', 707),
(439, '7410002011028', 708),
(440, '011418222410', 709),
(441, '7453000509722', 710),
(442, '7451079000133', 711),
(443, '7451079002298', 712),
(444, '1111970400772', 713),
(445, '7702136645003', 714),
(446, '20', 715),
(447, '21', 716),
(448, '076906170185', 717),
(433, '011418217003', 718),
(449, '23', 719),
(450, '7453011728068', 720),
(451, '7453011728037', 721),
(452, '7453042861161', 722),
(451, '7453011728082', 723),
(453, '7453011737213', 724),
(454, '730157169366', 725),
(455, '7453011724183', 726),
(456, '730157152962', 727),
(457, '7453011710711', 728),
(458, '7453011727047', 729),
(459, '7453011721182', 730),
(460, '7453011724183', 731),
(461, '7453011715068', 732),
(462, '087295174210', 733),
(465, '730157159183', 739),
(464, '24', 738),
(463, '87295151105', 737),
(465, '730157159077', 740),
(465, '730157159053', 741),
(467, '25', 744),
(466, '7453011720420', 743),
(468, '086581007324', 747),
(469, '7503006503016', 748),
(470, '028400012102', 749),
(471, '74000517', 750),
(56, '028400055116', 751),
(261, '04026606', 752),
(472, '078727730098', 753),
(473, '075847115538', 754),
(473, '075847390027', 755),
(474, '730157154188', 756),
(362, '7423430200131', 757),
(475, '7423430200063', 758),
(476, '20', 759),
(170, '750894609826', 760),
(477, '753650120122', 761),
(478, '086581003029', 762),
(479, '021603000327', 763),
(480, '74000654', 764),
(480, '74000661', 765),
(670, '7898024390107', 1028),
(482, '730406000457', 767),
(483, '730406001003', 768),
(484, '04010508', 769),
(126, '795893103227', 770),
(126, '795893106228', 771),
(485, '610585434895', 774),
(485, '610585434932', 775),
(485, '610585434949', 776),
(485, '610585435014', 777),
(486, '7501009222729', 781),
(321, '083933020253', 779),
(321, '083933010254', 780),
(487, 'E1959S', 783),
(659, '50196388', 1019),
(489, '5000267024004', 785),
(490, '026964906318', 786),
(491, '026964690262', 787),
(492, '041565000098', 788),
(492, '041565000074', 789),
(493, '016000439894', 790),
(493, '016000264793', 791),
(494, '7401000707723', 792),
(495, '94772647', 793),
(496, '94772401', 794),
(497, '7401005001802', 795),
(497, '7401005002472', 796),
(498, '051000196200', 797),
(498, '051000196217', 798),
(499, '010120130201', 799),
(500, '78909434', 800),
(501, '7422410000051', 801),
(502, '7422410000013', 802),
(503, '7422410000150', 803),
(504, '7422410000389', 804),
(505, '7422410001270', 805),
(505, '7422410002109', 806),
(506, '7501036130028', 807),
(507, '729090046001', 808),
(508, '729090046018', 809),
(660, '750894609840', 1016),
(7, '7802215512278', 811),
(303, '04003100', 812),
(509, '022000013439', 817),
(510, '74205844', 818),
(511, '7404004200597', 819),
(512, '763910000552', 820),
(512, '763910000521', 821),
(513, '7423530300076', 822),
(514, '7441029500400', 823),
(515, '7441163401779', 824),
(516, '7501030424345', 825),
(517, '043712107803', 826),
(518, '7423430200148', 827),
(519, '763910004093', 828),
(520, '763910003072', 829),
(521, '7613032978228', 830),
(521, '7613032978273', 831),
(521, '05293726', 832),
(429, '80741244', 833),
(522, '7622210293718', 834),
(523, '686464496001', 835),
(524, '03424005', 836),
(525, '039800011398', 837),
(526, '28', 926),
(527, '180', 839),
(528, '200', 840),
(529, '023968347260', 841),
(530, '657805021619', 845),
(531, '072372200050', 843),
(532, '072372200852', 844),
(533, '689076532099', 846),
(533, '689076531696', 847),
(533, '689076532792', 848),
(533, '736211985071', 849),
(533, '689076533393', 850),
(534, '033906110016', 851),
(733, '078000003468', 1098),
(537, '028400017015', 856),
(538, '2401', 858),
(539, '2501', 859),
(221, '7421600302708', 860),
(221, '7421600302708', 861),
(221, '7421600301435', 862),
(221, '7421600301909', 863),
(540, '790920129669', 864),
(541, '6923034310362', 865),
(542, '011418040168', 866),
(543, '7501001147846', 867),
(545, '080432402795', 870),
(544, '7702035881496', 869),
(546, '8414775013578', 871),
(547, '5000299225028', 872),
(548, '7421200900120', 873),
(549, '7421200900502', 874),
(550, '7421200901011', 875),
(551, '7421200900113', 876),
(552, '7421200901028', 877),
(553, '1021', 878),
(493, '016000247093', 879),
(554, '012656100430', 880),
(555, '012656100324', 881),
(556, '08662036', 882),
(557, '017000009339', 883),
(557, '017000009520', 884),
(557, '017000009254', 885),
(558, '051000153159', 886),
(559, '1425', 887),
(560, '072372402140', 888),
(562, '7501000634118', 889),
(562, '7501000634149', 890),
(562, '7501000634125', 891),
(563, '721282300618', 892),
(564, '750894604302', 893),
(565, '750894607129', 894),
(566, '7150646004191', 895),
(566, '7150646004207', 896),
(566, '7320646200804', 897),
(567, '7770050106467', 898),
(679, '42', 1038),
(569, '7793450000302', 900),
(569, '7793450000296', 901),
(570, '7441029502091', 902),
(571, '6945132100010', 903),
(572, '049000049930', 904),
(573, '30', 905),
(673, '8000500179734', 1031),
(575, '8000500178638', 907),
(576, '80135906', 908),
(577, '8000500160466', 909),
(578, '083933023773', 910),
(579, '686464521000', 911),
(580, '686464516006', 1104),
(581, '083933021304', 913),
(582, '78603752', 914),
(582, '78603769', 915),
(583, '071099136383', 916),
(584, '071099134969', 917),
(585, '7501088401817', 918),
(586, '01816927', 919),
(587, '01816820', 920),
(588, '01810622', 921),
(589, '01801624', 922),
(590, '26', 925),
(591, '7441057217738', 927),
(592, '7421000845553', 928),
(593, '071990301033', 929),
(594, '08787337', 930),
(595, '086581110888', 931),
(596, '78018716', 932),
(597, '7802215511615', 933),
(597, '7802215511622', 934),
(131, '7422110102512', 937),
(131, '7422110102536', 938),
(598, '7421200900519', 939),
(599, '10102', 940),
(600, '0016', 941),
(601, '7441005710502', 942),
(602, '7441005707007', 943),
(602, '7441005710243', 944),
(602, '7441005711301', 945),
(656, '7421200905651', 1011),
(603, '5632', 947),
(604, '750894608331', 948),
(605, '686464100311', 949),
(606, '4710589321279', 950),
(607, '021400026858', 951),
(516, '7501000339198', 952),
(516, '7441029503418', 953),
(608, '7441029502107', 954),
(609, '7441029511611', 955),
(610, '7441029511482', 956),
(611, '858218006228', 957),
(612, '028400085298', 958),
(613, '405', 959),
(614, '7406189003741', 960),
(615, '026964852745', 961),
(616, '1807', 962),
(617, '028400017299', 963),
(618, '7421600305563', 964),
(619, '086581003067', 965),
(620, '7421200900106', 966),
(621, '730406002055', 967),
(622, '7622210293800', 968),
(623, '7622300265939', 969),
(624, '686464487009', 970),
(625, '686464525008', 971),
(626, '686464533003', 972),
(627, '041116005275', 973),
(628, '686464543002', 977),
(629, '7421200905620', 979),
(630, '123', 980),
(631, '27', 981),
(632, '29', 983),
(633, '31', 985),
(634, '32', 986),
(635, '33', 987),
(636, '7898024395331', 988),
(640, '34', 995),
(638, '7441005702255', 992),
(639, '073102013384', 993),
(662, '03412000', 1018),
(643, '750894600267', 998),
(645, '9556995130440', 999),
(646, '755111185060', 1000),
(647, '755111185039', 1001),
(648, '755111185800', 1002),
(649, '7802215505140', 1003),
(650, '75027278', 1004),
(651, '36', 1005),
(652, '37', 1006),
(653, '38', 1007),
(654, '7401005001864', 1009),
(658, '7421200901035', 1013),
(663, '7421002580018', 1020),
(661, '40', 1017),
(664, '7421002560010', 1021),
(665, '7421002510039', 1022),
(666, '7421002510015', 1023),
(667, '7421002510046', 1024),
(668, '7421002570019', 1025),
(669, '861566000046', 1026),
(671, '861566000008', 1029),
(672, '861566000022', 1030),
(674, '7793450000128', 1032),
(675, '7421200903107', 1033),
(676, '39', 1034),
(677, '41', 1036),
(680, '43', 1039),
(681, '7421200905644', 1040),
(682, '44', 1041),
(683, '7501043710701', 1042),
(684, '729090019883', 1043),
(685, '861566000053', 1044),
(686, '009800800056', 1045),
(687, '754686000525', 1046),
(688, '034000830398', 1047),
(689, '01264904', 1096),
(690, '45', 1049),
(691, '072965702060', 1050),
(692, '072084003239', 1051),
(693, '680058387409', 1052),
(694, '680058747715', 1053),
(695, '680058747937', 1054),
(696, '680058416215', 1055),
(697, '680058798038', 1056),
(698, '680058243620', 1057),
(699, '690110151428', 1058),
(700, '680059468053', 1059),
(701, '680058272071', 1060),
(702, '680058760004', 1061),
(703, '680058467330', 1062),
(704, '680058382565', 1063),
(705, '680058380196', 1064),
(706, '8725000209056', 1065),
(707, '46', 1066),
(708, '750894610044', 1067),
(709, '7421000841548', 1068),
(710, '47', 1069),
(711, '48', 1070),
(712, '686464301114', 1072),
(713, '7401090803732', 1073),
(714, '8000500120699', 1075),
(715, '49', 1076),
(716, '50', 1077),
(718, '9002490212148', 1078),
(719, '7420854658821', 1080),
(720, '51', 1081),
(721, '073563002651', 1082),
(722, '7401090802575', 1083),
(723, '52', 1084),
(724, '53', 1085),
(725, '7421200300227', 1086),
(726, '6939112800267', 1087),
(727, '099176480501', 1088),
(728, '7501043710565', 1089),
(729, '028000080006', 1090),
(730, '7806500730705', 1091),
(689, '01235504', 1097),
(734, '4712098455100', 1101),
(735, '024024103622', 1102),
(736, '050200015441', 1103),
(737, '078000009132', 1105),
(738, '04043108', 1106),
(739, '8851123229074', 1107),
(740, '075847290235', 1108),
(741, '755111185060', 1109),
(742, '755111185077', 1110),
(743, '755111185077', 1111),
(744, '075847290235', 1112);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `codigo_departamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(245) NOT NULL,
  PRIMARY KEY (`codigo_departamento`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`codigo_departamento`, `nombre`) VALUES
(1, 'Enfermeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE IF NOT EXISTS `detalle_factura` (
  `numero_factura` int(11) NOT NULL,
  `codigo_articulo` varchar(45) NOT NULL,
  `precio` float DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `impuesto` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `descuento` float DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  KEY `codigo_articulo` (`codigo_articulo`) USING BTREE,
  KEY `numero_factura` (`numero_factura`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`numero_factura`, `codigo_articulo`, `precio`, `cantidad`, `impuesto`, `subtotal`, `descuento`, `total`) VALUES
(1, '597', 13, 1, 1.7, 11.3, 0, '13'),
(1, '127', 12, 1, 1.57, 10.43, 0, '12'),
(1, '182', 1, 46, 0, 46, 0, '46'),
(2, '182', 1, 104, 0, 104, 0, '104'),
(2, '526', 20, 1, 2.61, 17.39, 0, '20'),
(3, '221', 17, 1, 2.22, 14.78, 0, '17'),
(3, '19', 15, 1, 1.96, 13.04, 0, '15'),
(4, '208', 25, 1, 3.26, 21.74, 0, '25'),
(4, '293', 27, 1, 3.52, 23.48, 0, '27'),
(4, '51', 35, 2, 9.13, 60.87, 0, '70'),
(4, '88', 30, 2, 7.83, 52.17, 0, '60'),
(4, '384', 17, 1, 2.22, 14.78, 0, '17'),
(4, '10', 13, 1, 1.7, 11.3, 0, '13'),
(4, '139', 45, 1, 5.87, 39.13, 0, '45'),
(5, '368', 20, 1, 2.61, 17.39, 0, '20'),
(5, '92', 3, 2, 0.78, 5.22, 0, '6'),
(5, '129', 16, 1, 2.09, 13.91, 0, '16'),
(6, '150', 13, 1, 1.7, 11.3, 0, '13'),
(7, '126', 18, 1, 2.35, 15.65, 0, '18'),
(8, '182', 1, 46, 0, 46, 0, '46'),
(9, '131', 17, 2, 4.43, 29.57, 0, '34'),
(10, '229', 29, 1, 4.42, 24.58, 0, '29'),
(10, '278', 1, 1, 0.13, 0.87, 0, '1'),
(11, '92', 3, 2, 0.78, 5.22, 0, '6'),
(12, '90', 25, 1, 3.26, 21.74, 0, '25'),
(12, '220', 20, 1, 0, 20, 0, '20'),
(12, '368', 20, 1, 2.61, 17.39, 0, '20'),
(13, '147', 30, 12, 54.92, 305.08, 0, '360'),
(14, '92', 3, 5, 1.96, 13.04, 0, '15'),
(15, '200', 40, 1, 5.22, 34.78, 0, '40'),
(15, '134', 17, 1, 2.22, 14.78, 0, '17'),
(16, '220', 20, 2, 0, 40, 0, '40'),
(16, '182', 1, 26, 0, 26, 0, '26'),
(16, '92', 3, 10, 3.91, 26.09, 0, '30'),
(17, '18', 13, 1, 1.7, 11.3, 0, '13'),
(17, '131', 17, 1, 2.22, 14.78, 0, '17'),
(17, '72', 20, 1, 2.61, 17.39, 0, '20'),
(17, '229', 29, 1, 4.42, 24.58, 0, '29'),
(17, '95', 25, 1, 3.26, 21.74, 0, '25'),
(17, '91', 17, 1, 2.22, 14.78, 0, '17'),
(17, '206', 25, 1, 3.26, 21.74, 0, '25'),
(18, '89', 12, 1, 1.57, 10.43, 0, '12'),
(19, '53', 25, 1, 3.26, 21.74, 0, '25'),
(19, '139', 45, 2, 11.74, 78.26, 0, '90'),
(19, '51', 35, 1, 4.57, 30.43, 0, '35'),
(19, '597', 13, 1, 1.7, 11.3, 0, '13'),
(20, '92', 3, 1, 0.39, 2.61, 0, '3'),
(20, '666', 20, 1, 2.61, 17.39, 0, '20'),
(20, '221', 17, 1, 2.22, 14.78, 0, '17'),
(20, '139', 45, 1, 5.87, 39.13, 0, '45'),
(20, '165', 25, 1, 3.26, 21.74, 0, '25'),
(20, '178', 32, 1, 4.17, 27.83, 0, '32'),
(21, '186', 2, 5, 0, 10, 0, '10'),
(21, '95', 25, 1, 3.26, 21.74, 0, '25'),
(21, '385', 16, 1, 2.09, 13.91, 0, '16'),
(21, '91', 17, 1, 2.22, 14.78, 0, '17'),
(21, '170', 25, 1, 3.26, 21.74, 0, '25'),
(21, '201', 10, 1, 1.3, 8.7, 0, '10'),
(22, '158', 32, 1, 4.17, 27.83, 0, '32'),
(22, '91', 17, 1, 2.22, 14.78, 0, '17'),
(22, '292', 25, 1, 3.26, 21.74, 0, '25'),
(23, '125', 35, 1, 4.57, 30.43, 0, '35'),
(23, '192', 1, 4, 0, 4, 0, '4'),
(24, '96', 40, 1, 5.22, 34.78, 0, '40'),
(24, '89', 12, 1, 1.57, 10.43, 0, '12'),
(25, '96', 40, 1, 5.22, 34.78, 0, '40'),
(25, '94', 20, 1, 2.61, 17.39, 0, '20'),
(25, '92', 3, 2, 0.78, 5.22, 0, '6'),
(26, '266', 35, 1, 4.57, 30.43, 0, '35'),
(26, '91', 17, 1, 2.22, 14.78, 0, '17'),
(26, '140', 25, 1, 3.26, 21.74, 0, '25'),
(26, '86', 40, 1, 5.22, 34.78, 0, '40'),
(26, '158', 32, 1, 4.17, 27.83, 0, '32'),
(26, '162', 30, 1, 3.91, 26.09, 0, '30'),
(26, '385', 16, 1, 2.09, 13.91, 0, '16'),
(26, '261', 27, 1, 3.52, 23.48, 0, '27'),
(26, '192', 1, 3, 0, 3, 0, '3'),
(27, '36', 28, 1, 3.65, 24.35, 0, '28'),
(27, '386', 60, 1, 7.83, 52.17, 0, '60'),
(27, '91', 17, 1, 2.22, 14.78, 0, '17'),
(27, '206', 25, 1, 3.26, 21.74, 0, '25'),
(28, '89', 12, 1, 1.57, 10.43, 0, '12'),
(28, '428', 4, 1, 0.52, 3.48, 0, '4'),
(29, '95', 25, 1, 3.26, 21.74, 0, '25'),
(29, '294', 28, 1, 3.65, 24.35, 0, '28'),
(30, '317', 22, 1, 2.87, 19.13, 0, '22'),
(30, '115', 10, 1, 1.3, 8.7, 0, '10'),
(30, '96', 40, 1, 5.22, 34.78, 0, '40'),
(31, '663', 35, 1, 4.57, 30.43, 0, '35'),
(31, '221', 17, 1, 2.22, 14.78, 0, '17'),
(31, '91', 17, 1, 2.22, 14.78, 0, '17'),
(32, '95', 25, 2, 6.52, 43.48, 0, '50'),
(32, '94', 20, 1, 2.61, 17.39, 0, '20'),
(32, '10', 13, 1, 1.7, 11.3, 0, '13'),
(33, '129', 16, 1, 2.09, 13.91, 0, '16'),
(34, '127', 12, 1, 1.57, 10.43, 0, '12'),
(34, '127', 12, 1, 1.57, 10.43, 0, '12'),
(35, '185', 1, 10, 0, 10, 0, '10'),
(36, '94', 20, 1, 2.61, 17.39, 0, '20'),
(36, '53', 25, 1, 3.26, 21.74, 0, '25'),
(37, '223', 20, 1, 2.61, 17.39, 0, '20'),
(37, '163', 50, 1, 7.63, 42.37, 0, '50'),
(37, '565', 20, 1, 2.61, 17.39, 0, '20'),
(38, '127', 12, 1, 1.57, 10.43, 0, '12'),
(38, '182', 1, 30, 0, 30, 0, '30'),
(39, '182', 1, 52, 0, 52, 0, '52'),
(39, '182', 1, 52, 0, 52, 0, '52'),
(40, '182', 1, 52, 0, 52, 0, '52'),
(41, '92', 3, 1, 0.39, 2.61, 0, '3'),
(42, '115', 10, 2, 2.61, 17.39, 0, '20'),
(42, '92', 3, 2, 0.78, 5.22, 0, '6'),
(43, '106', 15, 1, 1.96, 13.04, 0, '15'),
(43, '209', 10, 1, 1.3, 8.7, 0, '10'),
(44, '266', 35, 1, 4.57, 30.43, 0, '35'),
(45, '93', 20, 1, 2.61, 17.39, 0, '20'),
(46, '384', 17, 2, 4.43, 29.57, 0, '34'),
(46, '385', 16, 2, 4.17, 27.83, 0, '32'),
(46, '8', 13, 2, 3.39, 22.61, 0, '26'),
(46, '185', 1, 8, 0, 8, 0, '8'),
(47, '129', 16, 1, 2.09, 13.91, 0, '16'),
(48, '294', 28, 1, 3.65, 24.35, 0, '28'),
(48, '185', 1, 4, 0, 4, 0, '4'),
(49, '204', 35, 1, 4.57, 30.43, 0, '35'),
(50, '126', 18, 2, 4.7, 31.3, 0, '36'),
(51, '91', 17, 1, 2.22, 14.78, 0, '17'),
(52, '266', 35, 1, 4.57, 30.43, 0, '35'),
(53, '182', 1, 52, 0, 52, 0, '52'),
(54, '129', 16, 1, 2.09, 13.91, 0, '16'),
(55, '123', 45, 1, 5.87, 39.13, 0, '45'),
(56, '150', 13, 3, 5.09, 33.91, 0, '39'),
(57, '97', 50, 1, 6.52, 43.48, 0, '50'),
(58, '304', 10, 3, 3.91, 26.09, 0, '30'),
(59, '145', 40, 2, 10.43, 69.57, 0, '80'),
(60, '145', 40, 1, 5.22, 34.78, 0, '40'),
(60, '204', 35, 1, 4.57, 30.43, 0, '35'),
(61, '182', 1, 21, 0, 21, 0, '21'),
(62, '304', 10, 3, 3.91, 26.09, 0, '30'),
(62, '655', 35, 2, 0, 70, 0, '70'),
(63, '236', 60, 1, 7.83, 52.17, 0, '60'),
(63, '712', 35, 3, 13.7, 91.3, 0, '105'),
(63, '380', 10, 2, 2.61, 17.39, 0, '20'),
(63, '50', 60, 1, 7.83, 52.17, 0, '60'),
(63, '200', 40, 2, 10.43, 69.57, 0, '80'),
(64, '91', 17, 1, 2.22, 14.78, 0, '17'),
(64, '121', 16, 1, 2.09, 13.91, 0, '16'),
(64, '90', 25, 1, 3.26, 21.74, 0, '25'),
(65, '92', 3, 1, 0.39, 2.61, 0, '3'),
(66, '438', 5, 1, 0, 5, 0, '5'),
(66, '176', 25, 1, 3.26, 21.74, 0, '25'),
(66, '134', 17, 1, 2.22, 14.78, 0, '17'),
(66, '127', 12, 1, 1.57, 10.43, 0, '12'),
(66, '129', 16, 1, 2.09, 13.91, 0, '16'),
(66, '209', 10, 1, 1.3, 8.7, 0, '10'),
(66, '186', 2, 2, 0, 4, 0, '4'),
(67, '136', 12, 1, 1.57, 10.43, 0, '12'),
(67, '121', 16, 1, 2.09, 13.91, 0, '16'),
(68, '182', 1, 21, 0, 21, 0, '21'),
(68, '129', 16, 1, 2.09, 13.91, 0, '16'),
(69, '131', 17, 4, 8.87, 59.13, 0, '68'),
(69, '368', 20, 1, 2.61, 17.39, 0, '20'),
(70, '129', 16, 1, 2.09, 13.91, 0, '16'),
(71, '2', 15, 1, 1.96, 13.04, 0, '15'),
(72, '243', 35, 1, 4.57, 30.43, 0, '35'),
(72, '131', 17, 2, 4.43, 29.57, 0, '34'),
(73, '120', 17, 1, 2.22, 14.78, 0, '17'),
(73, '78', 15, 1, 1.96, 13.04, 0, '15'),
(73, '11', 13, 1, 1.7, 11.3, 0, '13'),
(74, '93', 20, 1, 2.61, 17.39, 0, '20'),
(74, '97', 50, 1, 6.52, 43.48, 0, '50'),
(75, '91', 17, 1, 2.22, 14.78, 0, '17'),
(75, '131', 17, 1, 2.22, 14.78, 0, '17'),
(76, '89', 12, 1, 1.57, 10.43, 0, '12'),
(76, '3', 25, 1, 3.26, 21.74, 0, '25'),
(77, '182', 1, 150, 0, 150, 0, '150'),
(78, '94', 20, 1, 2.61, 17.39, 0, '20'),
(78, '363', 150, 1, 19.57, 130.43, 0, '150'),
(79, '127', 12, 3, 4.7, 31.3, 0, '36'),
(79, '129', 16, 1, 2.09, 13.91, 0, '16'),
(79, '597', 13, 1, 1.7, 11.3, 0, '13'),
(79, '32', 10, 1, 1.3, 8.7, 0, '10'),
(79, '425', 7, 2, 1.83, 12.17, 0, '14'),
(80, '468', 25, 1, 3.26, 21.74, 0, '25'),
(81, '185', 1, 10, 0, 10, 0, '10'),
(82, '312', 20, 1, 2.61, 17.39, 0, '20'),
(83, '384', 17, 1, 2.22, 14.78, 0, '17'),
(83, '204', 35, 1, 4.57, 30.43, 0, '35'),
(84, '303', 27, 2, 7.04, 46.96, 0, '54'),
(85, '97', 50, 1, 6.52, 43.48, 0, '50'),
(86, '50', 60, 1, 7.83, 52.17, 0, '60'),
(86, '204', 35, 1, 4.57, 30.43, 0, '35'),
(86, '88', 30, 1, 3.91, 26.09, 0, '30'),
(87, '98', 50, 1, 6.52, 43.48, 0, '50'),
(88, '184', 12, 1, 0, 12, 0, '12'),
(89, '131', 17, 1, 2.22, 14.78, 0, '17'),
(90, '423', 7, 2, 1.83, 12.17, 0, '14'),
(90, '72', 20, 1, 2.61, 17.39, 0, '20'),
(90, '150', 13, 1, 1.7, 11.3, 0, '13'),
(90, '221', 17, 1, 2.22, 14.78, 0, '17'),
(91, '223', 20, 1, 2.61, 17.39, 0, '20'),
(91, '163', 50, 1, 7.63, 42.37, 0, '50'),
(92, '91', 17, 1, 2.22, 14.78, 0, '17'),
(93, '86', 40, 1, 5.22, 34.78, 0, '40'),
(93, '120', 17, 1, 2.22, 14.78, 0, '17'),
(93, '182', 1, 21, 0, 21, 0, '21'),
(94, '148', 30, 6, 27.46, 152.54, 0, '180'),
(95, '89', 12, 1, 1.57, 10.43, 0, '12'),
(96, '164', 25, 1, 3.26, 21.74, 0, '25'),
(96, '164', 25, 1, 3.26, 21.74, 0, '25'),
(97, '111', 16, 2, 4.17, 27.83, 0, '32'),
(97, '129', 16, 1, 2.09, 13.91, 0, '16'),
(97, '86', 40, 1, 5.22, 34.78, 0, '40'),
(98, '182', 1, 45, 0, 45, 0, '45'),
(98, '219', 12, 1, 1.57, 10.43, 0, '12'),
(98, '123', 45, 1, 5.87, 39.13, 0, '45'),
(98, '150', 13, 1, 1.7, 11.3, 0, '13'),
(99, '100', 50, 1, 6.52, 43.48, 0, '50'),
(100, '182', 1, 16, 0, 16, 0, '16'),
(101, '301', 16, 2, 4.17, 27.83, 0, '32'),
(101, '261', 27, 1, 3.52, 23.48, 0, '27'),
(101, '94', 20, 1, 2.61, 17.39, 0, '20'),
(101, '96', 40, 2, 10.43, 69.57, 0, '80'),
(101, '580', 35, 1, 4.57, 30.43, 0, '35'),
(101, '92', 3, 1, 0.39, 2.61, 0, '3'),
(101, '311', 20, 1, 2.61, 17.39, 0, '20'),
(101, '314', 16, 1, 2.09, 13.91, 0, '16'),
(102, '131', 17, 1, 2.22, 14.78, 0, '17'),
(103, '131', 17, 3, 6.65, 44.35, 0, '51'),
(103, '542', 5, 2, 0, 10, 0, '10'),
(103, '192', 1, 1, 0, 1, 0, '1'),
(103, '136', 12, 1, 1.57, 10.43, 0, '12'),
(103, '230', 25, 1, 3.81, 21.19, 0, '25'),
(104, '92', 3, 4, 1.57, 10.43, 0, '12'),
(105, '96', 40, 2, 10.43, 69.57, 0, '80'),
(105, '95', 25, 2, 6.52, 43.48, 0, '50'),
(105, '94', 20, 4, 10.43, 69.57, 0, '80'),
(105, '192', 1, 2, 0, 2, 0, '2'),
(105, '92', 3, 5, 1.96, 13.04, 0, '15'),
(106, '131', 17, 12, 26.61, 177.39, 0, '204'),
(106, '121', 16, 4, 8.35, 55.65, 0, '64'),
(107, '182', 1, 50, 0, 50, 0, '50'),
(108, '131', 17, 2, 4.43, 29.57, 0, '34'),
(109, '89', 12, 1, 1.57, 10.43, 0, '12'),
(109, '88', 30, 1, 3.91, 26.09, 0, '30'),
(110, '90', 25, 1, 3.26, 21.74, 0, '25'),
(110, '88', 30, 1, 3.91, 26.09, 0, '30'),
(110, '126', 18, 1, 2.35, 15.65, 0, '18'),
(111, '295', 120, 1, 15.65, 104.35, 0, '120'),
(112, '182', 1, 41, 0, 41, 0, '41'),
(113, '140', 25, 1, 3.26, 21.74, 0, '25'),
(113, '90', 25, 1, 3.26, 21.74, 0, '25'),
(113, '95', 25, 1, 3.26, 21.74, 0, '25'),
(114, '5', 72, 1, 9.39, 62.61, 0, '72'),
(114, '4', 40, 1, 5.22, 34.78, 0, '40'),
(114, '369', 15, 2, 3.91, 26.09, 0, '30'),
(114, '523', 80, 1, 10.43, 69.57, 0, '80'),
(114, '131', 17, 2, 4.43, 29.57, 0, '34'),
(114, '384', 17, 2, 4.43, 29.57, 0, '34'),
(115, '2', 15, 1, 1.96, 13.04, 0, '15'),
(115, '243', 35, 1, 4.57, 30.43, 0, '35'),
(116, '90', 25, 1, 3.26, 21.74, 0, '25'),
(117, '97', 50, 1, 6.52, 43.48, 0, '50'),
(117, '89', 12, 1, 1.57, 10.43, 0, '12'),
(117, '93', 20, 1, 2.61, 17.39, 0, '20'),
(118, '208', 25, 1, 3.26, 21.74, 0, '25'),
(118, '95', 25, 1, 3.26, 21.74, 0, '25'),
(118, '493', 15, 1, 1.96, 13.04, 0, '15'),
(119, '92', 3, 10, 3.91, 26.09, 0, '30'),
(119, '91', 17, 2, 4.43, 29.57, 0, '34'),
(119, '580', 35, 1, 4.57, 30.43, 0, '35'),
(120, '298', 76, 1, 9.91, 66.09, 0, '76'),
(120, '319', 30, 1, 3.91, 26.09, 0, '30'),
(120, '312', 20, 1, 2.61, 17.39, 0, '20'),
(120, '317', 22, 1, 2.87, 19.13, 0, '22'),
(121, '92', 3, 2, 0.78, 5.22, 0, '6'),
(121, '385', 16, 1, 2.09, 13.91, 0, '16'),
(121, '131', 17, 2, 4.43, 29.57, 0, '34'),
(122, '140', 25, 1, 3.26, 21.74, 0, '25'),
(123, '182', 1, 104, 0, 104, 0, '104'),
(123, '119', 25, 1, 3.26, 21.74, 0, '25'),
(124, '139', 45, 1, 5.87, 39.13, 0, '45'),
(125, '135', 40, 1, 6.1, 33.9, 0, '40'),
(126, '136', 12, 1, 1.57, 10.43, 0, '12'),
(126, '185', 1, 2, 0, 2, 0, '2'),
(127, '129', 16, 1, 2.09, 13.91, 0, '16'),
(128, '95', 25, 2, 6.52, 43.48, 0, '50'),
(128, '89', 12, 1, 1.57, 10.43, 0, '12'),
(128, '384', 17, 1, 2.22, 14.78, 0, '17'),
(129, '140', 25, 1, 3.26, 21.74, 0, '25'),
(129, '192', 1, 5, 0, 5, 0, '5'),
(130, '53', 25, 1, 3.26, 21.74, 0, '25'),
(131, '200', 40, 1, 5.22, 34.78, 0, '40'),
(131, '136', 12, 1, 1.57, 10.43, 0, '12'),
(132, '363', 150, 1, 19.57, 130.43, 0, '150'),
(133, '580', 35, 1, 4.57, 30.43, 0, '35'),
(134, '269', 20, 1, 2.61, 17.39, 0, '20'),
(135, '192', 1, 5, 0, 5, 0, '5'),
(135, '139', 45, 1, 5.87, 39.13, 0, '45'),
(136, '132', 32, 1, 4.88, 27.12, 0, '32'),
(137, '384', 17, 1, 2.22, 14.78, 0, '17'),
(137, '127', 12, 1, 1.57, 10.43, 0, '12'),
(137, '70', 10, 1, 1.3, 8.7, 0, '10'),
(137, '185', 1, 1, 0, 1, 0, '1'),
(138, '88', 30, 1, 3.91, 26.09, 0, '30'),
(139, '536', 35, 3, 16.02, 88.98, 0, '105'),
(140, '385', 16, 1, 2.09, 13.91, 0, '16'),
(141, '146', 25, 1, 3.81, 21.19, 0, '25'),
(141, '182', 1, 52, 0, 52, 0, '52'),
(141, '95', 25, 1, 3.26, 21.74, 0, '25'),
(142, '150', 13, 1, 1.7, 11.3, 0, '13'),
(143, '182', 1, 416, 0, 416, 0, '416'),
(144, '235', 80, 1, 10.43, 69.57, 0, '80'),
(144, '229', 29, 1, 4.42, 24.58, 0, '29'),
(144, '96', 40, 1, 5.22, 34.78, 0, '40'),
(144, '89', 12, 1, 1.57, 10.43, 0, '12'),
(145, '101', 80, 1, 10.43, 69.57, 0, '80'),
(146, '134', 17, 1, 2.22, 14.78, 0, '17'),
(146, '2', 15, 1, 1.96, 13.04, 0, '15'),
(146, '192', 1, 1, 0, 1, 0, '1'),
(147, '185', 1, 4, 0, 4, 0, '4'),
(148, '196', 20, 1, 0, 20, 0, '20'),
(149, '122', 35, 1, 4.57, 30.43, 0, '35'),
(150, '182', 1, 104, 0, 104, 0, '104'),
(150, '182', 1, 104, 0, 104, 0, '104'),
(151, '94', 20, 1, 2.61, 17.39, 0, '20'),
(151, '92', 3, 2, 0.78, 5.22, 0, '6'),
(151, '186', 2, 1, 0, 2, 0, '2'),
(152, '183', 1, 25, 0, 25, 0, '25'),
(153, '196', 20, 1, 0, 20, 0, '20'),
(153, '139', 45, 1, 5.87, 39.13, 0, '45'),
(153, '131', 17, 1, 2.22, 14.78, 0, '17'),
(154, '10', 13, 1, 1.7, 11.3, 0, '13'),
(154, '89', 12, 1, 1.57, 10.43, 0, '12'),
(155, '89', 12, 1, 1.57, 10.43, 0, '12'),
(156, '164', 25, 1, 3.26, 21.74, 0, '25'),
(156, '129', 16, 1, 2.09, 13.91, 0, '16'),
(156, '196', 20, 5, 0, 100, 0, '100'),
(157, '89', 12, 2, 3.13, 20.87, 0, '24'),
(157, '164', 25, 1, 3.26, 21.74, 0, '25'),
(157, '196', 20, 1, 0, 20, 0, '20'),
(158, '97', 50, 1, 6.52, 43.48, 0, '50'),
(158, '91', 17, 1, 2.22, 14.78, 0, '17'),
(158, '121', 16, 1, 2.09, 13.91, 0, '16'),
(159, '344', 95, 1, 12.39, 82.61, 0, '95'),
(159, '186', 2, 2, 0, 4, 0, '4'),
(160, '92', 3, 1, 0.39, 2.61, 0, '3'),
(161, '196', 20, 3, 0, 60, 0, '60'),
(162, '196', 20, 2, 0, 40, 0, '40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura_compra`
--

CREATE TABLE IF NOT EXISTS `detalle_factura_compra` (
  `numero_compra` int(11) NOT NULL,
  `codigo_articulo` int(10) unsigned NOT NULL,
  `precio` float DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `impuesto` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  KEY `codigo_articulo` (`codigo_articulo`) USING BTREE,
  KEY `numero_factura` (`numero_compra`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_factura_compra`
--

INSERT INTO `detalle_factura_compra` (`numero_compra`, `codigo_articulo`, `precio`, `cantidad`, `impuesto`, `subtotal`) VALUES
(2, 2, 35, 30, 0, 1050),
(2, 3, 15, 10, 0, 150),
(2, 7, 110, 20, 0, 2200),
(2, 8, 26, 50, 0, 1300),
(2, 9, 70, 100, 0, 7000),
(3, 2, 35, 10, 0, 350),
(3, 3, 18, 30, 0, 540),
(4, 2, 32, 100, 0, 3200),
(4, 3, 200, 122, 0, 24400),
(4, 7, 54, 35, 0, 1890);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura_temp`
--

CREATE TABLE IF NOT EXISTS `detalle_factura_temp` (
  `numero_factura` int(11) NOT NULL,
  `codigo_articulo` varchar(45) NOT NULL,
  `precio` float DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `impuesto` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `descuento` float DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  KEY `codigo_articulo` (`codigo_articulo`) USING BTREE,
  KEY `numero_factura` (`numero_factura`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_movimiento_kardex`
--

CREATE TABLE IF NOT EXISTS `detalle_movimiento_kardex` (
  `codigo_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_kardex` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `no_documento` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_movimiento`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `detalle_movimiento_kardex`
--

INSERT INTO `detalle_movimiento_kardex` (`codigo_movimiento`, `codigo_kardex`, `fecha`, `descripcion`, `no_documento`) VALUES
(1, '1', '2015-06-19', 'Inventario Inicial', '10'),
(2, '2', '2015-06-19', 'Inventario Inicial', '10'),
(3, '3', '2015-06-19', 'Inventario Incial', '10'),
(4, '4', '2015-06-19', 'Inventario Inicial', '10'),
(5, '5', '2015-06-19', 'Inventario Inicial', '10'),
(6, '1', '2015-06-19', 'Venta de productos', '1'),
(7, '2', '2015-06-19', 'Venta de productos', '1'),
(8, '3', '2015-06-19', 'Venta de productos', '1'),
(9, '4', '2015-06-19', 'Venta de productos', '1'),
(10, '5', '2015-06-19', 'Venta de productos', '1'),
(11, '1', '2015-06-19', 'Compra de productos', '124'),
(12, '2', '2015-06-19', 'Compra de productos', '124'),
(13, '3', '2015-06-19', 'Compra de productos', '124'),
(14, '4', '2015-06-19', 'Compra de productos', '124'),
(15, '5', '2015-06-19', 'Compra de productos', '124'),
(16, '1', '2015-06-20', 'Compra de productos', '3547'),
(17, '2', '2015-06-20', 'Compra de productos', '3547'),
(18, '1', '2015-06-22', 'Venta de productos', '2'),
(19, '2', '2015-06-22', 'Venta de productos', '2'),
(20, '3', '2015-06-22', 'Venta de productos', '2'),
(21, '4', '2015-06-22', 'Venta de productos', '2'),
(22, '5', '2015-06-22', 'Venta de productos', '2'),
(23, '2', '2015-06-22', 'Venta de productos', '3'),
(24, '1', '2015-06-22', 'Venta de productos', '3'),
(25, '3', '2015-06-22', 'Venta de productos', '3'),
(26, '1', '2015-07-12', 'Compra de productos', '1245'),
(27, '2', '2015-07-12', 'Compra de productos', '1245'),
(28, '3', '2015-07-12', 'Compra de productos', '1245'),
(29, '11', '2015-07-16', 'Inventario Inicial', '24'),
(30, '10', '2015-07-16', 'Inventario Inicial', '655');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_requisicion`
--

CREATE TABLE IF NOT EXISTS `detalle_requisicion` (
  `codigo_requisicion` int(10) unsigned NOT NULL,
  `codigo_articulo` int(10) unsigned NOT NULL,
  `cantidad` float NOT NULL,
  `precio_unidad` float NOT NULL,
  `total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_factura`
--

CREATE TABLE IF NOT EXISTS `encabezado_factura` (
  `numero_factura` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `subtotal` float(8,2) NOT NULL,
  `impuesto` float(8,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `codigo_cliente` varchar(18) NOT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  `estado_factura` varchar(25) DEFAULT NULL,
  `isv18` float(255,2) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `pago` float NOT NULL DEFAULT '0',
  `descuento` varchar(255) DEFAULT NULL,
  `tipo_factura` int(11) NOT NULL DEFAULT '1',
  `agrega_kardex` int(11) NOT NULL DEFAULT '0',
  `tipo_pago` int(11) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `total_letras` varchar(500) DEFAULT ' ',
  PRIMARY KEY (`numero_factura`),
  UNIQUE KEY `numero_factura` (`numero_factura`) USING BTREE,
  KEY `codigo_cliente` (`codigo_cliente`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=163 ;

--
-- Volcado de datos para la tabla `encabezado_factura`
--

INSERT INTO `encabezado_factura` (`numero_factura`, `fecha`, `subtotal`, `impuesto`, `total`, `codigo_cliente`, `codigo`, `estado_factura`, `isv18`, `usuario`, `pago`, `descuento`, `tipo_factura`, `agrega_kardex`, `tipo_pago`, `observacion`, `total_letras`) VALUES
(1, '2015-08-09', 67.73, 3.27, 71.00, '1', NULL, 'ACT', 0.00, 'kelsy', 71, '0', 1, 0, 1, '', 'SETENTA Y UN LEMPIRAS'),
(2, '2015-08-09', 121.39, 2.61, 124.00, '1', NULL, 'ACT', 0.00, 'kelsy', 124, '0', 1, 0, 1, '', 'CIENTO VENTICUATRO LEMPIRAS'),
(3, '2015-08-09', 27.82, 4.18, 32.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '', 'TREINTA Y DOS LEMPIRAS'),
(4, '2015-08-09', 223.47, 33.53, 257.00, '1', NULL, 'ACT', 0.00, 'kelsy', 257, '0', 1, 0, 1, '', 'DOSCIENTOS CINCUENTA Y SIETE LEMPIRAS'),
(5, '2015-08-09', 36.52, 5.48, 42.00, '1', NULL, 'ACT', 0.00, 'kelsy', 45, '0', 1, 0, 1, '', 'CUARENTA Y DOS LEMPIRAS'),
(6, '2015-08-09', 11.30, 1.70, 13.00, '1', NULL, 'ACT', 0.00, 'kelsy', 13, '0', 1, 0, 1, '', 'TRECE LEMPIRAS'),
(7, '2015-08-09', 15.65, 2.35, 18.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '', 'DIECIOCHOLEMPIRAS'),
(8, '2015-08-09', 46.00, 0.00, 46.00, '1', NULL, 'ACT', 0.00, 'kelsy', 46, '0', 1, 0, 2, '001068', 'CUARENTA Y SEIS LEMPIRAS'),
(9, '2015-08-09', 29.57, 4.43, 34.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001068', 'TREINTA Y CUATRO LEMPIRAS'),
(10, '2015-08-09', 25.45, 0.13, 30.00, '1', NULL, 'ACT', 4.42, 'kelsy', 30, '0', 1, 0, 1, '001068', 'TREINTA LEMPIRAS'),
(11, '2015-08-09', 5.22, 0.78, 6.00, '1', NULL, 'ACT', 0.00, 'kelsy', 6, '0', 1, 0, 1, '001068', 'SEIS LEMPIRAS'),
(12, '2015-08-09', 59.13, 5.87, 65.00, '13', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001068', 'SESENTA Y CINCO LEMPIRAS'),
(13, '2015-08-09', 305.08, 0.00, 360.00, '13', NULL, 'ACT', 54.92, 'kelsy', 500, '0', 1, 0, 1, '001068', 'TRESCIENTOS SESENTA LEMPIRAS'),
(14, '2015-08-09', 13.04, 1.96, 15.00, '13', NULL, 'ACT', 0.00, 'kelsy', 15, '0', 1, 0, 1, '001068', 'QUINCE LEMPIRAS'),
(15, '2015-08-09', 49.56, 7.44, 57.00, '13', NULL, 'ACT', 0.00, 'kelsy', 57, '0', 1, 0, 1, '001068', 'CINCUENTA Y SIETE LEMPIRAS'),
(16, '2015-08-09', 92.09, 3.91, 96.00, '13', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '001068', 'NOVENTA Y SEIS LEMPIRAS'),
(17, '2015-08-09', 126.31, 15.27, 146.00, '13', NULL, 'ACT', 4.42, 'kelsy', 150, '0', 1, 0, 1, '001068', 'CIENTO CUARENTA Y SEIS LEMPIRAS'),
(18, '2015-08-09', 10.43, 1.57, 12.00, '13', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '001068', 'DOCE LEMPIRAS'),
(19, '2015-08-09', 141.73, 21.27, 163.00, '14', NULL, 'ACT', 0.00, 'kelsy', 163, '0', 1, 0, 1, '001068', 'CIENTO SESENTA Y TRES LEMPIRAS'),
(20, '2015-08-09', 123.48, 18.52, 142.00, '14', NULL, 'ACT', 0.00, 'kelsy', 142, '0', 1, 0, 1, '001068', 'CIENTO CUARENTA Y DOS LEMPIRAS'),
(21, '2015-08-09', 90.87, 12.13, 103.00, '14', NULL, 'ACT', 0.00, 'kelsy', 103, '0', 1, 0, 1, '001068', 'CIENTO TRES LEMPIRAS'),
(22, '2015-08-09', 64.35, 9.65, 74.00, '14', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '001068', 'SETENTA Y CUATRO LEMPIRAS'),
(23, '2015-08-09', 34.43, 4.57, 39.00, '14', NULL, 'ACT', 0.00, 'kelsy', 40, '0', 1, 0, 1, '001068', 'TREINTA Y NUEVE LEMPIRAS'),
(24, '2015-08-09', 45.21, 6.79, 52.00, '14', NULL, 'ACT', 0.00, 'kelsy', 55, '0', 1, 0, 1, '001068', 'CINCUENTA Y DOS LEMPIRAS'),
(25, '2015-08-09', 57.39, 8.61, 66.00, '14', NULL, 'ACT', 0.00, 'kelsy', 66, '0', 1, 0, 1, '001068', 'SESENTA Y SEIS LEMPIRAS'),
(26, '2015-08-09', 196.04, 28.96, 225.00, '14', NULL, 'ACT', 0.00, 'kelsy', 230, '0', 1, 0, 1, '001068', 'DOSCIENTOS VENTICINCO LEMPIRAS'),
(27, '2015-08-09', 113.04, 16.96, 130.00, '14', NULL, 'ACT', 0.00, 'kelsy', 150, '0', 1, 0, 1, '001068', 'CIENTO TREINTA LEMPIRAS'),
(28, '2015-08-09', 13.91, 2.09, 16.00, '14', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '001068', 'DIECISEISLEMPIRAS'),
(29, '2015-08-09', 46.09, 6.91, 53.00, '14', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001068', 'CINCUENTA Y TRES LEMPIRAS'),
(30, '2015-08-09', 62.61, 9.39, 72.00, '14', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001068', 'SETENTA Y DOS LEMPIRAS'),
(31, '2015-08-09', 59.99, 9.01, 69.00, '14', NULL, 'ACT', 0.00, 'kelsy', 70, '0', 1, 0, 1, '001068', 'SESENTA Y NUEVE LEMPIRAS'),
(32, '2015-08-09', 72.17, 10.83, 83.00, '14', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '001068', 'OCHENTA Y TRES LEMPIRAS'),
(33, '2015-08-09', 13.91, 2.09, 16.00, '14', NULL, 'ACT', 0.00, 'kelsy', 16, '0', 1, 0, 1, '001068', 'DIECISEISLEMPIRAS'),
(34, '2015-08-09', 20.86, 3.14, 24.00, '14', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001068', 'VENTICUATRO LEMPIRAS'),
(35, '2015-08-09', 10.00, 0.00, 10.00, '14', NULL, 'ACT', 0.00, 'kelsy', 10, '0', 1, 0, 1, '001068', 'DIEZ LEMPIRAS'),
(36, '2015-08-09', 39.13, 5.87, 45.00, '14', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '001068', 'CUARENTA Y CINCO LEMPIRAS'),
(37, '2015-08-09', 77.15, 5.22, 90.00, '14', NULL, 'ACT', 7.63, 'kelsy', 100, '0', 1, 0, 1, '001068', 'NOVENTA LEMPIRAS'),
(38, '2015-08-09', 40.43, 1.57, 42.00, '14', NULL, 'ACT', 0.00, 'kelsy', 42, '0', 1, 0, 1, '001068', 'CUARENTA Y DOS LEMPIRAS'),
(39, '2015-08-09', 104.00, 0.00, 104.00, '14', NULL, 'ACT', 0.00, 'kelsy', 104, '0', 1, 0, 2, '585040', 'CIENTO CUATRO LEMPIRAS'),
(40, '2015-08-09', 52.00, 0.00, 52.00, '14', NULL, 'ACT', 0.00, 'kelsy', 52, '0', 1, 0, 1, '585040', 'CINCUENTA Y DOS LEMPIRAS'),
(41, '2015-08-09', 2.61, 0.39, 3.00, '14', NULL, 'ACT', 0.00, 'kelsy', 3, '0', 1, 0, 1, '585040', 'TRES LEMPIRAS'),
(42, '2015-08-09', 22.61, 3.39, 26.00, '14', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '585040', 'VENTISEIS LEMPIRAS'),
(43, '2015-08-09', 21.74, 3.26, 25.00, '14', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '585040', 'VENTICINCO LEMPIRAS'),
(44, '2015-08-09', 30.43, 4.57, 35.00, '14', NULL, 'ACT', 0.00, 'kelsy', 35, '0', 1, 0, 1, '585040', 'TREINTA Y CINCO LEMPIRAS'),
(45, '2015-08-09', 17.39, 2.61, 20.00, '14', NULL, 'ACT', 0.00, 'kelsy', 50, '0', 1, 0, 1, '585040', 'VEINTELEMPIRAS'),
(46, '2015-08-09', 88.01, 11.99, 100.00, '14', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '585040', 'CIENLEMPIRAS'),
(47, '2015-08-09', 13.91, 2.09, 16.00, '14', NULL, 'ACT', 0.00, 'kelsy', 16, '0', 1, 0, 1, '585040', 'DIECISEISLEMPIRAS'),
(48, '2015-08-09', 28.35, 3.65, 32.00, '14', NULL, 'ACT', 0.00, 'kelsy', 32, '0', 1, 0, 1, '585040', 'TREINTA Y DOS LEMPIRAS'),
(49, '2015-08-09', 30.43, 4.57, 35.00, '14', NULL, 'ACT', 0.00, 'kelsy', 50, '0', 1, 0, 1, '585040', 'TREINTA Y CINCO LEMPIRAS'),
(50, '2015-08-09', 31.30, 4.70, 36.00, '14', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '585040', 'TREINTA Y SEIS LEMPIRAS'),
(51, '2015-08-09', 14.78, 2.22, 17.00, '14', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '585040', 'DIECISIETELEMPIRAS'),
(52, '2015-08-09', 30.43, 4.57, 35.00, '14', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '585040', 'TREINTA Y CINCO LEMPIRAS'),
(53, '2015-08-09', 52.00, 0.00, 52.00, '14', NULL, 'ACT', 0.00, 'kelsy', 52, '0', 1, 0, 1, '585040', 'CINCUENTA Y DOS LEMPIRAS'),
(54, '2015-08-09', 13.91, 2.09, 16.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '585040', 'DIECISEISLEMPIRAS'),
(55, '2015-08-09', 39.13, 5.87, 45.00, '1', NULL, 'ACT', 0.00, 'kelsy', 45, '0', 1, 0, 2, '152969', 'CUARENTA Y CINCO LEMPIRAS'),
(56, '2015-08-09', 33.91, 5.09, 39.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '152969', 'TREINTA Y NUEVE LEMPIRAS'),
(57, '2015-08-09', 43.48, 6.52, 50.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '152969', 'CINCUENTA LEMPIRAS'),
(58, '2015-08-09', 26.09, 3.91, 30.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '152969', 'TREINTA LEMPIRAS'),
(59, '2015-08-09', 69.57, 10.43, 80.00, '1', NULL, 'ACT', 0.00, 'kelsy', 80, '0', 1, 0, 1, '152969', 'OCHENTA LEMPIRAS'),
(60, '2015-08-09', 65.21, 9.79, 75.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '152969', 'SETENTA Y CINCO LEMPIRAS'),
(61, '2015-08-09', 21.00, 0.00, 21.00, '1', NULL, 'ACT', 0.00, 'kelsy', 21, '0', 1, 0, 1, '152969', 'VENTIUN LEMPIRAS'),
(62, '2015-08-09', 96.09, 3.91, 100.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '152969', 'CIENLEMPIRAS'),
(63, '2015-08-09', 282.60, 42.40, 325.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '152969', 'TRESCIENTOS VENTICINCO LEMPIRAS'),
(64, '2015-08-09', 50.43, 7.57, 58.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '152969', 'CINCUENTA Y OCHO LEMPIRAS'),
(65, '2015-08-09', 2.61, 0.39, 3.00, '1', NULL, 'ACT', 0.00, 'kelsy', 3, '0', 1, 0, 1, '152969', 'TRES LEMPIRAS'),
(66, '2015-08-09', 78.56, 10.44, 89.00, '1', NULL, 'ACT', 0.00, 'kelsy', 90, '0', 1, 0, 1, '152969', 'OCHENTA Y NUEVE LEMPIRAS'),
(67, '2015-08-09', 24.34, 3.66, 28.00, '1', NULL, 'ACT', 0.00, 'kelsy', 50, '0', 1, 0, 1, '152969', 'VENTIOCHO LEMPIRAS'),
(68, '2015-08-09', 34.91, 2.09, 37.00, '1', NULL, 'ACT', 0.00, 'kelsy', 37, '0', 1, 0, 2, '001069', 'TREINTA Y SIETE LEMPIRAS'),
(69, '2015-08-09', 76.52, 11.48, 88.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '001069', 'OCHENTA Y OCHO LEMPIRAS'),
(70, '2015-08-09', 13.91, 2.09, 16.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001069', 'DIECISEISLEMPIRAS'),
(71, '2015-08-09', 13.04, 1.96, 15.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '001069', 'QUINCE LEMPIRAS'),
(72, '2015-08-09', 60.00, 9.00, 69.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '001069', 'SESENTA Y NUEVE LEMPIRAS'),
(73, '2015-08-09', 39.12, 5.88, 45.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001069', 'CUARENTA Y CINCO LEMPIRAS'),
(74, '2015-08-09', 60.87, 9.13, 70.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001069', 'SETENTA LEMPIRAS'),
(75, '2015-08-09', 29.56, 4.44, 34.00, '1', NULL, 'ACT', 0.00, 'kelsy', 40, '0', 1, 0, 1, '001069', 'TREINTA Y CUATRO LEMPIRAS'),
(76, '2015-08-09', 32.17, 4.83, 37.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001069', 'TREINTA Y SIETE LEMPIRAS'),
(77, '2015-08-09', 150.00, 0.00, 150.00, '1', NULL, 'ACT', 0.00, 'kelsy', 150, '0', 1, 0, 1, '001069', 'CIENTO CINCUENTA LEMPIRAS'),
(78, '2015-08-09', 147.82, 22.18, 170.00, '1', NULL, 'ACT', 0.00, 'kelsy', 200, '0', 1, 0, 1, '001069', 'CIENTO SETENTA LEMPIRAS'),
(79, '2015-08-09', 77.38, 11.62, 89.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001069', 'OCHENTA Y NUEVE LEMPIRAS'),
(80, '2015-08-09', 21.74, 3.26, 25.00, '1', NULL, 'ACT', 0.00, 'kelsy', 25, '0', 1, 0, 1, '001069', 'VENTICINCO LEMPIRAS'),
(81, '2015-08-09', 10.00, 0.00, 10.00, '1', NULL, 'ACT', 0.00, 'kelsy', 10, '0', 1, 0, 1, '001069', 'DIEZ LEMPIRAS'),
(82, '2015-08-09', 17.39, 2.61, 20.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '001069', 'VEINTELEMPIRAS'),
(83, '2015-08-09', 45.21, 6.79, 52.00, '1', NULL, 'ACT', 0.00, 'kelsy', 52, '0', 1, 0, 1, '001069', 'CINCUENTA Y DOS LEMPIRAS'),
(84, '2015-08-09', 46.96, 7.04, 54.00, '1', NULL, 'ACT', 0.00, 'kelsy', 60, '0', 1, 0, 1, '001069', 'CINCUENTA Y CUATRO LEMPIRAS'),
(85, '2015-08-09', 43.48, 6.52, 50.00, '1', NULL, 'ACT', 0.00, 'kelsy', 50, '0', 1, 0, 1, '001069', 'CINCUENTA LEMPIRAS'),
(86, '2015-08-09', 108.69, 16.31, 125.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '001069', 'CIENTO VENTICINCO LEMPIRAS'),
(87, '2015-08-09', 43.48, 6.52, 50.00, '1', NULL, 'ACT', 0.00, 'kelsy', 50, '0', 1, 0, 1, '001069', 'CINCUENTA LEMPIRAS'),
(88, '2015-08-09', 12.00, 0.00, 12.00, '1', NULL, 'ACT', 0.00, 'kelsy', 12, '0', 1, 0, 1, '001069', 'DOCE LEMPIRAS'),
(89, '2015-08-09', 14.78, 2.22, 17.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '001069', 'DIECISIETELEMPIRAS'),
(90, '2015-08-09', 55.64, 8.36, 64.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001069', 'SESENTA Y CUATRO LEMPIRAS'),
(91, '2015-08-09', 59.76, 2.61, 70.00, '1', NULL, 'ACT', 7.63, 'kelsy', 500, '0', 1, 0, 1, '001069', 'SETENTA LEMPIRAS'),
(92, '2015-08-09', 14.78, 2.22, 17.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001069', 'DIECISIETELEMPIRAS'),
(93, '2015-08-09', 70.56, 7.44, 78.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '001069', 'SETENTA Y OCHO LEMPIRAS'),
(94, '2015-08-09', 152.54, 0.00, 180.00, '1', NULL, 'ACT', 27.46, 'kelsy', 200, '0', 1, 0, 1, '001069', 'CIENTO OCHENTA LEMPIRAS'),
(95, '2015-08-09', 10.43, 1.57, 12.00, '1', NULL, 'ACT', 0.00, 'kelsy', 15, '0', 1, 0, 1, '001069', 'DOCE LEMPIRAS'),
(96, '2015-08-09', 43.48, 6.52, 50.00, '1', NULL, 'ACT', 0.00, 'kelsy', 50, '0', 1, 0, 1, '', 'CINCUENTA LEMPIRAS'),
(97, '2015-08-09', 76.52, 11.48, 88.00, '1', NULL, 'ACT', 0.00, 'kelsy', 88, '0', 1, 0, 1, '', 'OCHENTA Y OCHO LEMPIRAS'),
(98, '2015-08-09', 105.86, 9.14, 115.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '', 'CIENTO QUINCE LEMPIRAS'),
(99, '2015-08-09', 43.48, 6.52, 50.00, '1', NULL, 'ACT', 0.00, 'kelsy', 50, '0', 1, 0, 1, '', 'CINCUENTA LEMPIRAS'),
(100, '2015-08-09', 16.00, 0.00, 16.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '', 'DIECISEISLEMPIRAS'),
(101, '2015-08-09', 202.61, 30.39, 233.00, '1', NULL, 'ACT', 0.00, 'kelsy', 250, '0', 1, 0, 1, '', 'DOSCIENTOS TREINTA Y TRES LEMPIRAS'),
(102, '2015-08-09', 14.78, 2.22, 17.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '', 'DIECISIETELEMPIRAS'),
(103, '2015-08-09', 86.97, 8.22, 99.00, '1', NULL, 'ACT', 3.81, 'kelsy', 99, '0', 1, 0, 2, '004671', 'NOVENTA Y NUEVE LEMPIRAS'),
(104, '2015-08-09', 10.43, 1.57, 12.00, '1', NULL, 'ACT', 0.00, 'kelsy', 12, '0', 1, 0, 1, '004671', 'DOCE LEMPIRAS'),
(105, '2015-08-09', 197.66, 29.34, 227.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '004671', 'DOSCIENTOS VENTISIETE LEMPIRAS'),
(106, '2015-08-09', 233.04, 34.96, 268.00, '1', NULL, 'ACT', 0.00, 'kelsy', 268, '0', 1, 0, 2, '801486', 'DOSCIENTOS SESENTA Y OCHO LEMPIRAS'),
(107, '2015-08-09', 50.00, 0.00, 50.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '801486', 'CINCUENTA LEMPIRAS'),
(108, '2015-08-09', 29.57, 4.43, 34.00, '1', NULL, 'ACT', 0.00, 'kelsy', 34, '0', 1, 0, 2, '801503', 'TREINTA Y CUATRO LEMPIRAS'),
(109, '2015-08-09', 36.52, 5.48, 42.00, '1', NULL, 'ACT', 0.00, 'kelsy', 42, '0', 1, 0, 2, '587209', 'CUARENTA Y DOS LEMPIRAS'),
(110, '2015-08-09', 63.48, 9.52, 73.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '587209', 'SETENTA Y TRES LEMPIRAS'),
(111, '2015-08-09', 104.35, 15.65, 120.00, '1', NULL, 'ACT', 0.00, 'kelsy', 120, '0', 1, 0, 1, '587209', 'CIENTO VEINTELEMPIRAS'),
(112, '2015-08-09', 41.00, 0.00, 41.00, '1', NULL, 'ACT', 0.00, 'kelsy', 41, '0', 1, 0, 1, '587209', 'CUARENTA Y UN LEMPIRAS'),
(113, '2015-08-09', 65.22, 9.78, 75.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '587209', 'SETENTA Y CINCO LEMPIRAS'),
(114, '2015-08-09', 252.19, 37.81, 290.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '587209', 'DOSCIENTOS NOVENTA LEMPIRAS'),
(115, '2015-08-09', 43.47, 6.53, 50.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '587209', 'CINCUENTA LEMPIRAS'),
(116, '2015-08-09', 21.74, 3.26, 25.00, '1', NULL, 'ACT', 0.00, 'kelsy', 25, '0', 1, 0, 1, '587209', 'VENTICINCO LEMPIRAS'),
(117, '2015-08-09', 71.30, 10.70, 82.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '587209', 'OCHENTA Y DOS LEMPIRAS'),
(118, '2015-08-09', 56.52, 8.48, 65.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '', 'SESENTA Y CINCO LEMPIRAS'),
(119, '2015-08-09', 86.09, 12.91, 99.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '', 'NOVENTA Y NUEVE LEMPIRAS'),
(120, '2015-08-09', 128.70, 19.30, 148.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '', 'CIENTO CUARENTA Y OCHO LEMPIRAS'),
(121, '2015-08-09', 48.70, 7.30, 56.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '', 'CINCUENTA Y SEIS LEMPIRAS'),
(122, '2015-08-09', 21.74, 3.26, 25.00, '1', NULL, 'ACT', 0.00, 'kelsy', 25, '0', 1, 0, 1, '', 'VENTICINCO LEMPIRAS'),
(123, '2015-08-09', 125.74, 3.26, 129.00, '1', NULL, 'ACT', 0.00, 'kelsy', 150, '0', 1, 0, 1, '', 'CIENTO VENTINUEVE LEMPIRAS'),
(124, '2015-08-09', 39.13, 5.87, 45.00, '1', NULL, 'ACT', 0.00, 'kelsy', 45, '0', 1, 0, 2, '588219', 'CUARENTA Y CINCO LEMPIRAS'),
(125, '2015-08-09', 33.90, 0.00, 40.00, '1', NULL, 'ACT', 6.10, 'kelsy', 40, '0', 1, 0, 1, '588219', 'CUARENTA LEMPIRAS'),
(126, '2015-08-09', 12.43, 1.57, 14.00, '1', NULL, 'ACT', 0.00, 'kelsy', 14, '0', 1, 0, 1, '', 'CATORCE LEMPIRAS'),
(127, '2015-08-09', 13.91, 2.09, 16.00, '1', NULL, 'ACT', 0.00, 'kelsy', 16, '0', 1, 0, 1, '', 'DIECISEISLEMPIRAS'),
(128, '2015-08-09', 68.69, 10.31, 79.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '', 'SETENTA Y NUEVE LEMPIRAS'),
(129, '2015-08-09', 26.74, 3.26, 30.00, '1', NULL, 'ACT', 0.00, 'kelsy', 40, '0', 1, 0, 1, '', 'TREINTA LEMPIRAS'),
(130, '2015-08-09', 21.74, 3.26, 25.00, '1', NULL, 'ACT', 0.00, 'kelsy', 25, '0', 1, 0, 1, '', 'VENTICINCO LEMPIRAS'),
(131, '2015-08-09', 45.21, 6.79, 52.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '', 'CINCUENTA Y DOS LEMPIRAS'),
(132, '2015-08-09', 130.43, 19.57, 150.00, '1', NULL, 'ACT', 0.00, 'kelsy', 150, '0', 1, 0, 1, '', 'CIENTO CINCUENTA LEMPIRAS'),
(133, '2015-08-09', 30.43, 4.57, 35.00, '1', NULL, 'ACT', 0.00, 'kelsy', 50, '0', 1, 0, 1, '', 'TREINTA Y CINCO LEMPIRAS'),
(134, '2015-08-09', 17.39, 2.61, 20.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '', 'VEINTELEMPIRAS'),
(135, '2015-08-09', 44.13, 5.87, 50.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '', 'CINCUENTA LEMPIRAS'),
(136, '2015-08-09', 27.12, 0.00, 32.00, '1', NULL, 'ACT', 4.88, 'kelsy', 100, '0', 1, 0, 1, '', 'TREINTA Y DOS LEMPIRAS'),
(137, '2015-08-09', 34.91, 5.09, 40.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '', 'CUARENTA LEMPIRAS'),
(138, '2015-08-09', 26.09, 3.91, 30.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '', 'TREINTA LEMPIRAS'),
(139, '2015-08-09', 88.98, 0.00, 105.00, '1', NULL, 'ACT', 16.02, 'kelsy', 105, '0', 1, 0, 1, '', 'CIENTO CINCO LEMPIRAS'),
(140, '2015-08-09', 13.91, 2.09, 16.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '', 'DIECISEISLEMPIRAS'),
(141, '2015-08-09', 94.93, 3.26, 102.00, '1', NULL, 'ACT', 3.81, 'kelsy', 102, '0', 1, 0, 2, '589680', 'CIENTO DOS LEMPIRAS'),
(142, '2015-08-09', 11.30, 1.70, 13.00, '1', NULL, 'ACT', 0.00, 'kelsy', 13, '0', 1, 0, 1, '589680', 'TRECE LEMPIRAS'),
(143, '2015-08-09', 416.00, 0.00, 416.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '589680', 'CUATROCIENTOS DIECISEISLEMPIRAS'),
(144, '2015-08-09', 139.36, 17.22, 161.00, '1', NULL, 'ACT', 4.42, 'kelsy', 501, '0', 1, 0, 1, '589680', 'CIENTO SESENTA Y UN LEMPIRAS'),
(145, '2015-08-09', 69.57, 10.43, 80.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '589680', 'OCHENTA LEMPIRAS'),
(146, '2015-08-09', 28.82, 4.18, 33.00, '1', NULL, 'ACT', 0.00, 'kelsy', 40, '0', 1, 0, 1, '589680', 'TREINTA Y TRES LEMPIRAS'),
(147, '2015-08-09', 4.00, 0.00, 4.00, '1', NULL, 'ACT', 0.00, 'kelsy', 4, '0', 1, 0, 1, '589680', 'CUATRO LEMPIRAS'),
(148, '2015-08-09', 20.00, 0.00, 20.00, '1', NULL, 'ACT', 0.00, 'kelsy', 20, '0', 1, 0, 1, '589680', 'VEINTELEMPIRAS'),
(149, '2015-08-09', 30.43, 4.57, 35.00, '1', NULL, 'ACT', 0.00, 'kelsy', 40, '0', 1, 0, 1, '589680', 'TREINTA Y CINCO LEMPIRAS'),
(150, '2015-08-09', 208.00, 0.00, 208.00, '1', NULL, 'ACT', 0.00, 'kelsy', 510, '0', 1, 0, 1, '589680', 'DOSCIENTOS OCHO LEMPIRAS'),
(151, '2015-08-09', 24.61, 3.39, 28.00, '1', NULL, 'ACT', 0.00, 'kelsy', 50, '0', 1, 0, 1, '589680', 'VENTIOCHO LEMPIRAS'),
(152, '2015-08-09', 25.00, 0.00, 25.00, '1', NULL, 'ACT', 0.00, 'kelsy', 25, '0', 1, 0, 1, '589680', 'VENTICINCO LEMPIRAS'),
(153, '2015-08-09', 73.91, 8.09, 82.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '589680', 'OCHENTA Y DOS LEMPIRAS'),
(154, '2015-08-09', 21.73, 3.27, 25.00, '1', NULL, 'ACT', 0.00, 'kelsy', 40, '0', 1, 0, 1, '589680', 'VENTICINCO LEMPIRAS'),
(155, '2015-08-09', 10.43, 1.57, 12.00, '1', NULL, 'ACT', 0.00, 'kelsy', 15, '0', 1, 0, 1, '589680', 'DOCE LEMPIRAS'),
(156, '2015-08-09', 135.65, 5.35, 141.00, '1', NULL, 'ACT', 0.00, 'kelsy', 150, '0', 1, 0, 1, '589680', 'CIENTO CUARENTA Y UN LEMPIRAS'),
(157, '2015-08-09', 62.61, 6.39, 69.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '589680', 'SESENTA Y NUEVE LEMPIRAS'),
(158, '2015-08-09', 72.17, 10.83, 83.00, '1', NULL, 'ACT', 0.00, 'kelsy', 500, '0', 1, 0, 1, '589680', 'OCHENTA Y TRES LEMPIRAS'),
(159, '2015-08-09', 86.61, 12.39, 99.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '589680', 'NOVENTA Y NUEVE LEMPIRAS'),
(160, '2015-08-09', 2.61, 0.39, 3.00, '1', NULL, 'ACT', 0.00, 'kelsy', 5, '0', 1, 0, 1, '589680', 'TRES LEMPIRAS'),
(161, '2015-08-09', 60.00, 0.00, 60.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '589680', 'SESENTA LEMPIRAS'),
(162, '2015-08-09', 40.00, 0.00, 40.00, '1', NULL, 'ACT', 0.00, 'kelsy', 100, '0', 1, 0, 1, '589680', 'CUARENTA LEMPIRAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_factura_compra`
--

CREATE TABLE IF NOT EXISTS `encabezado_factura_compra` (
  `numero_compra` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `subtotal` float(8,2) NOT NULL,
  `impuesto` float(8,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `codigo_proveedor` varchar(18) NOT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  `estado_factura` varchar(25) DEFAULT NULL,
  `isv18` float(255,2) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `pago` float DEFAULT '0',
  `no_factura_compra` varchar(100) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `tipo_factura` int(10) unsigned NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `agrega_kardex` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`numero_compra`),
  UNIQUE KEY `numero_factura` (`numero_compra`) USING BTREE,
  KEY `codigo_cliente` (`codigo_proveedor`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `encabezado_factura_compra`
--

INSERT INTO `encabezado_factura_compra` (`numero_compra`, `fecha`, `subtotal`, `impuesto`, `total`, `codigo_proveedor`, `codigo`, `estado_factura`, `isv18`, `usuario`, `pago`, `no_factura_compra`, `fecha_ingreso`, `tipo_factura`, `fecha_vencimiento`, `agrega_kardex`) VALUES
(1, '2015-06-12', 8250.00, 0.00, 8250.00, '1', NULL, 'NULA', NULL, NULL, 0, '1455', '2015-06-17', 1, '0000-00-00', 0),
(2, '2015-06-18', 11700.00, 0.00, 11700.00, '1', NULL, 'ACT', NULL, NULL, 0, '124', '2015-06-18', 1, '0000-00-00', 1),
(3, '2015-06-19', 890.00, 0.00, 890.00, '7', NULL, 'ACT', NULL, NULL, 0, '3547', '2015-06-19', 1, '0000-00-00', 1),
(4, '2015-06-19', 29490.00, 0.00, 29490.00, '8', NULL, 'ACT', NULL, NULL, 0, '1245', '2015-06-20', 1, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_factura_temp`
--

CREATE TABLE IF NOT EXISTS `encabezado_factura_temp` (
  `numero_factura` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `subtotal` float(8,2) NOT NULL,
  `impuesto` float(8,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `codigo_cliente` varchar(18) NOT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  `estado_factura` varchar(25) DEFAULT NULL,
  `isv18` float(255,2) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `pago` float NOT NULL DEFAULT '0',
  `descuento` varchar(255) DEFAULT NULL,
  `tipo_factura` int(11) NOT NULL,
  PRIMARY KEY (`numero_factura`),
  UNIQUE KEY `numero_factura` (`numero_factura`) USING BTREE,
  KEY `codigo_cliente` (`codigo_cliente`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_requisicion`
--

CREATE TABLE IF NOT EXISTS `encabezado_requisicion` (
  `codigo_requisicion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `total` float NOT NULL,
  `codigo_departamento` int(10) unsigned NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `agrega_kardex` int(10) unsigned NOT NULL DEFAULT '0',
  `estado_requisicion` varchar(45) NOT NULL DEFAULT 'ACT',
  PRIMARY KEY (`codigo_requisicion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas_productos`
--

CREATE TABLE IF NOT EXISTS `entradas_productos` (
  `codigo_factura` int(10) unsigned NOT NULL,
  `codigo_articulo` int(10) unsigned NOT NULL,
  `codigo_bodega` int(10) unsigned NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `precio_unidad` double DEFAULT NULL,
  `codigo_impuesto` int(10) unsigned DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `codigo_entrada` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo_entrada`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_compra`
--

CREATE TABLE IF NOT EXISTS `factura_compra` (
  `codigo_compra` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo_proveedor` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL,
  `total` double NOT NULL,
  `impuesto` double NOT NULL,
  `subtotal` double NOT NULL,
  `codigo_factura` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo_compra`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuesto`
--

CREATE TABLE IF NOT EXISTS `impuesto` (
  `codigo_impuesto` varchar(5) NOT NULL,
  `descripcion_impuesto` varchar(255) NOT NULL,
  `porcentaje` double NOT NULL,
  PRIMARY KEY (`codigo_impuesto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `impuesto`
--

INSERT INTO `impuesto` (`codigo_impuesto`, `descripcion_impuesto`, `porcentaje`) VALUES
('1', 'Exectos', 0),
('2', 'Basicos', 15),
('3', 'Lujo', 18),
('5', 'otro mas', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE IF NOT EXISTS `kardex` (
  `no_documento` int(10) unsigned NOT NULL,
  `codigo_articulo` int(10) unsigned NOT NULL,
  `codigo_bodega` int(10) unsigned NOT NULL,
  `salida` float DEFAULT '0',
  `fecha` datetime NOT NULL,
  `idKardex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrada` float DEFAULT '0',
  `existencia` float DEFAULT NULL,
  PRIMARY KEY (`idKardex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=599 ;

--
-- Volcado de datos para la tabla `kardex`
--

INSERT INTO `kardex` (`no_documento`, `codigo_articulo`, `codigo_bodega`, `salida`, `fecha`, `idKardex`, `entrada`, `existencia`) VALUES
(29, 7, 1, 1, '2015-06-10 21:55:11', 68, 0, NULL),
(29, 14, 1, 1, '2015-06-10 21:55:11', 69, 0, NULL),
(29, 19, 1, 1, '2015-06-10 21:55:11', 70, 0, NULL),
(30, 7, 1, 1, '2015-06-10 21:55:57', 71, 0, -2),
(30, 14, 1, 1, '2015-06-10 21:55:57', 72, 0, -2),
(30, 19, 1, 1, '2015-06-10 21:55:57', 73, 0, -2),
(1, 3, 1, 0, '2015-06-17 16:01:58', 74, 10, NULL),
(1, 4, 1, 0, '2015-06-17 16:01:58', 75, 10, NULL),
(1, 2, 1, 1, '2015-06-19 10:41:04', 76, 0, NULL),
(1, 3, 1, 1, '2015-06-19 10:41:04', 77, 0, 9),
(1, 7, 1, 1, '2015-06-19 10:41:04', 78, 0, -3),
(1, 8, 1, 1, '2015-06-19 10:41:04', 79, 0, NULL),
(1, 9, 1, 1, '2015-06-19 10:41:04', 80, 0, NULL),
(2, 2, 1, 0, '2015-06-19 22:07:01', 81, 30, 29),
(2, 3, 1, 0, '2015-06-19 22:07:01', 82, 10, 19),
(2, 7, 1, 0, '2015-06-19 22:07:01', 83, 20, 17),
(2, 8, 1, 0, '2015-06-19 22:07:01', 84, 50, 49),
(2, 9, 1, 0, '2015-06-19 22:07:01', 85, 100, 99),
(3, 2, 1, 0, '2015-06-20 13:35:37', 86, 10, 39),
(3, 3, 1, 0, '2015-06-20 13:35:37', 87, 30, 49),
(4, 2, 1, 0, '2015-06-20 16:14:19', 88, 100, 139),
(4, 3, 1, 0, '2015-06-20 16:14:19', 89, 122, 171),
(4, 7, 1, 0, '2015-06-20 16:14:19', 90, 35, 52),
(2, 2, 1, 1, '2015-06-21 11:22:17', 91, 0, 138),
(2, 3, 1, 1, '2015-06-21 11:22:17', 92, 0, 170),
(2, 7, 1, 1, '2015-06-21 11:22:17', 93, 0, 51),
(2, 8, 1, 1, '2015-06-21 11:22:17', 94, 0, 48),
(2, 9, 1, 1, '2015-06-21 11:22:17', 95, 0, 98),
(3, 3, 1, 1, '2015-06-21 22:07:30', 96, 0, 169),
(3, 2, 1, 1, '2015-06-21 22:07:30', 97, 0, 137),
(3, 7, 1, 1, '2015-06-21 22:07:30', 98, 0, 50),
(4, 14, 1, 1, '2015-06-28 15:30:33', 99, 0, -3),
(4, 24, 1, 1, '2015-06-28 15:30:33', 100, 0, NULL),
(4, 22, 1, 1, '2015-06-28 15:30:33', 101, 0, NULL),
(5, 10, 1, 1, '2015-06-28 15:33:01', 102, 0, NULL),
(5, 9, 1, 1, '2015-06-28 15:33:01', 103, 0, 97),
(6, 13, 1, 1, '2015-06-28 15:41:18', 104, 0, NULL),
(6, 16, 1, 1, '2015-06-28 15:41:18', 105, 0, NULL),
(6, 22, 1, 1, '2015-06-28 15:41:18', 106, 0, -2),
(7, 14, 1, 1, '2015-07-05 13:11:34', 107, 0, -4),
(7, 15, 1, 3, '2015-07-05 13:11:34', 108, 0, NULL),
(7, 25, 1, 1, '2015-07-05 13:11:34', 109, 0, NULL),
(8, 14, 1, 1, '2015-07-07 22:02:00', 110, 0, -5),
(8, 25, 1, 3, '2015-07-07 22:02:01', 111, 0, -4),
(9, 14, 1, 1, '2015-07-13 19:30:19', 112, 0, -6),
(10, 14, 1, 1, '2015-07-13 20:25:58', 113, 0, -7),
(10, 25, 1, 2, '2015-07-13 20:25:58', 114, 0, -6),
(11, 292, 1, 1, '2015-07-13 21:54:16', 115, 0, NULL),
(11, 284, 1, 1, '2015-07-13 21:54:16', 116, 0, NULL),
(11, 291, 1, 6, '2015-07-13 21:54:16', 117, 0, NULL),
(12, 291, 1, 5, '2015-07-13 22:01:54', 118, 0, -11),
(12, 284, 1, 2, '2015-07-13 22:01:54', 119, 0, -3),
(12, 292, 1, 1, '2015-07-13 22:01:54', 120, 0, -2),
(13, 292, 1, 1, '2015-07-13 22:24:13', 121, 0, -3),
(13, 291, 1, 1, '2015-07-13 22:24:13', 122, 0, -12),
(13, 284, 1, 1, '2015-07-13 22:24:13', 123, 0, -4),
(14, 14, 1, 1, '2015-07-14 19:21:33', 124, 0, -8),
(15, 14, 1, 1, '2015-07-15 16:33:10', 125, 0, -9),
(16, 14, 1, 1, '2015-07-15 19:11:09', 126, 0, -10),
(1, 14, 1, 1, '2015-07-15 19:12:26', 127, 0, -11),
(1, 3, 1, 1, '2015-07-15 19:12:26', 128, 0, 168),
(2, 10, 1, 1, '2015-07-15 22:20:31', 129, 0, -2),
(2, 14, 1, 1, '2015-07-15 22:20:31', 130, 0, -12),
(2, 105, 1, 1, '2015-07-15 22:20:32', 131, 0, NULL),
(3, 14, 1, 1, '2015-07-15 22:20:58', 132, 0, -13),
(4, 14, 1, 1, '2015-07-15 22:21:23', 133, 0, -14),
(4, 243, 1, 1, '2015-07-15 22:21:23', 134, 0, NULL),
(5, 305, 1, 1, '2015-08-02 08:20:18', 135, 0, NULL),
(5, 138, 1, 1, '2015-08-02 08:20:18', 136, 0, NULL),
(6, 265, 1, 1, '2015-08-04 13:42:00', 137, 0, NULL),
(6, 237, 1, 1, '2015-08-04 13:42:00', 138, 0, NULL),
(7, 11, 1, 1, '2015-08-04 14:11:05', 139, 0, NULL),
(7, 237, 1, 1, '2015-08-04 14:11:05', 140, 0, -2),
(11, 11, 1, 1, '2015-08-04 14:19:39', 141, 0, -2),
(13, 200, 1, 1, '2015-08-04 14:29:23', 142, 0, NULL),
(16, 14, 1, 1, '2015-08-04 22:21:24', 143, 0, -15),
(17, 14, 1, 1, '2015-08-04 22:28:26', 144, 0, -16),
(19, 3, 1, 1, '2015-08-04 22:38:29', 145, 0, 167),
(19, 14, 1, 1, '2015-08-04 22:38:29', 146, 0, -17),
(20, 14, 1, 1, '2015-08-04 22:49:02', 147, 0, -18),
(21, 11, 1, 1, '2015-08-04 22:58:53', 148, 0, -3),
(22, 7, 1, 1, '2015-08-04 23:01:28', 149, 0, 49),
(22, 11, 1, 1, '2015-08-04 23:01:29', 150, 0, -4),
(23, 7, 1, 1, '2015-08-06 22:54:44', 151, 0, 48),
(23, 3, 1, 1, '2015-08-06 22:54:44', 152, 0, 166),
(23, 347, 1, 1, '2015-08-06 22:54:44', 153, 0, NULL),
(23, 237, 1, 1, '2015-08-06 22:54:44', 154, 0, -3),
(23, 280, 1, 1, '2015-08-06 22:54:44', 155, 0, NULL),
(23, 121, 1, 1, '2015-08-06 22:54:44', 156, 0, NULL),
(23, 111, 1, 1, '2015-08-06 22:54:44', 157, 0, NULL),
(24, 3, 1, 1, '2015-08-06 23:11:52', 158, 0, 165),
(24, 71, 1, 1, '2015-08-06 23:11:52', 159, 0, NULL),
(24, 69, 1, 1, '2015-08-06 23:11:52', 160, 0, NULL),
(25, 121, 1, 1, '2015-08-06 23:14:47', 161, 0, -2),
(25, 142, 1, 1, '2015-08-06 23:14:47', 162, 0, NULL),
(25, 272, 1, 1, '2015-08-06 23:14:47', 163, 0, NULL),
(25, 69, 1, 1, '2015-08-06 23:14:47', 164, 0, -2),
(26, 347, 1, 1, '2015-08-06 23:15:31', 165, 0, -2),
(26, 138, 1, 1, '2015-08-06 23:15:31', 166, 0, -2),
(26, 3, 1, 1, '2015-08-06 23:15:31', 167, 0, 164),
(27, 180, 1, 1, '2015-08-07 22:09:33', 168, 0, NULL),
(27, 111, 1, 1, '2015-08-07 22:09:33', 169, 0, -2),
(27, 121, 1, 1, '2015-08-07 22:09:33', 170, 0, -3),
(28, 111, 1, 1, '2015-08-07 22:30:41', 171, 0, -3),
(28, 347, 1, 1, '2015-08-07 22:30:42', 172, 0, -3),
(28, 270, 1, 1, '2015-08-07 22:30:42', 173, 0, NULL),
(29, 265, 1, 3, '2015-08-07 22:34:29', 174, 0, -4),
(30, 270, 1, 1, '2015-08-07 22:44:42', 175, 0, -2),
(30, 320, 1, 7, '2015-08-07 22:44:42', 176, 0, NULL),
(31, 142, 1, 1, '2015-08-07 22:47:06', 177, 0, -2),
(31, 237, 1, 1, '2015-08-07 22:47:06', 178, 0, -4),
(31, 3, 1, 1, '2015-08-07 22:47:06', 179, 0, 163),
(32, 111, 1, 1, '2015-08-08 09:02:00', 180, 0, -4),
(32, 280, 1, 1, '2015-08-08 09:02:00', 181, 0, -2),
(32, 142, 1, 1, '2015-08-08 09:02:00', 182, 0, -3),
(33, 32, 1, 1, '2015-08-08 09:17:06', 183, 0, NULL),
(33, 98, 1, 1, '2015-08-08 09:17:06', 184, 0, NULL),
(33, 431, 1, 1, '2015-08-08 09:17:06', 185, 0, NULL),
(33, 473, 1, 1, '2015-08-08 09:17:06', 186, 0, NULL),
(33, 49, 1, 1, '2015-08-08 09:17:06', 187, 0, NULL),
(34, 28, 1, 1, '2015-08-08 12:24:12', 188, 0, NULL),
(34, 544, 1, 1, '2015-08-08 12:24:12', 189, 0, NULL),
(34, 98, 1, 1, '2015-08-08 12:24:12', 190, 0, -2),
(35, 129, 1, 1, '2015-08-08 13:17:09', 191, 0, NULL),
(36, 32, 1, 1, '2015-08-08 13:37:40', 192, 0, -2),
(36, 225, 1, 1, '2015-08-08 13:37:40', 193, 0, NULL),
(36, 107, 1, 1, '2015-08-08 13:37:40', 194, 0, NULL),
(36, 41, 1, 1, '2015-08-08 13:37:40', 195, 0, NULL),
(37, 1, 1, 1, '2015-08-08 14:00:25', 196, 0, NULL),
(37, 101, 1, 1, '2015-08-08 14:00:25', 197, 0, NULL),
(37, 36, 1, 1, '2015-08-08 14:00:25', 198, 0, NULL),
(37, 101, 1, 1, '2015-08-08 14:00:25', 199, 0, -2),
(38, 48, 1, 1, '2015-08-08 14:02:01', 200, 0, NULL),
(38, 101, 1, 1, '2015-08-08 14:02:01', 201, 0, -3),
(38, 386, 1, 1, '2015-08-08 14:02:01', 202, 0, NULL),
(39, 41, 1, 1, '2015-08-08 14:04:52', 203, 0, -2),
(39, 101, 1, 1, '2015-08-08 14:04:52', 204, 0, -4),
(39, 2, 1, 1, '2015-08-08 14:04:52', 205, 0, 136),
(41, 87, 1, 1, '2015-08-08 14:42:27', 206, 0, NULL),
(41, 1, 1, 1, '2015-08-08 14:42:27', 207, 0, -2),
(41, 98, 1, 1, '2015-08-08 14:42:27', 208, 0, -3),
(42, 1, 1, 1, '2015-08-08 15:12:33', 209, 0, -3),
(42, 98, 1, 1, '2015-08-08 15:12:33', 210, 0, -4),
(42, 13, 1, 1, '2015-08-08 15:12:33', 211, 0, -2),
(43, 145, 1, 1, '2015-08-08 16:13:24', 212, 0, NULL),
(43, 98, 1, 1, '2015-08-08 16:13:24', 213, 0, -5),
(43, 98, 1, 1, '2015-08-08 16:13:24', 214, 0, -6),
(44, 32, 1, 1, '2015-08-08 16:42:35', 215, 0, -3),
(44, 48, 1, 1, '2015-08-08 16:42:36', 216, 0, -2),
(44, 160, 1, 1, '2015-08-08 16:42:36', 217, 0, NULL),
(45, 101, 1, 1, '2015-08-08 17:08:29', 218, 0, -5),
(45, 41, 1, 1, '2015-08-08 17:08:29', 219, 0, -3),
(45, 101, 1, 1, '2015-08-08 17:08:29', 220, 0, -6),
(45, 2, 1, 1, '2015-08-08 17:08:29', 221, 0, 135),
(46, 28, 1, 1, '2015-08-08 17:10:23', 222, 0, -2),
(46, 13, 1, 1, '2015-08-08 17:10:23', 223, 0, -3),
(46, 98, 1, 1, '2015-08-08 17:10:23', 224, 0, -7),
(47, 12, 1, 1, '2015-08-08 17:12:24', 225, 0, NULL),
(47, 32, 1, 1, '2015-08-08 17:12:24', 226, 0, -4),
(47, 431, 1, 1, '2015-08-08 17:12:24', 227, 0, -2),
(48, 203, 1, 1, '2015-08-08 17:14:37', 228, 0, NULL),
(48, 203, 1, 1, '2015-08-08 17:14:37', 229, 0, -2),
(48, 203, 1, 1, '2015-08-08 17:14:37', 230, 0, -3),
(48, 203, 1, 1, '2015-08-08 17:14:37', 231, 0, -4),
(48, 203, 1, 1, '2015-08-08 17:14:37', 232, 0, -5),
(49, 129, 1, 1, '2015-08-08 17:17:24', 233, 0, -2),
(49, 42, 1, 1, '2015-08-08 17:17:24', 234, 0, NULL),
(50, 32, 1, 1, '2015-08-08 17:35:30', 235, 0, -5),
(50, 98, 1, 1, '2015-08-08 17:35:30', 236, 0, -8),
(50, 101, 1, 1, '2015-08-08 17:35:30', 237, 0, -7),
(50, 32, 1, 1, '2015-08-08 17:35:30', 238, 0, -6),
(51, 129, 1, 1, '2015-08-08 18:28:04', 239, 0, -3),
(52, 129, 1, 1, '2015-08-08 18:28:47', 240, 0, -4),
(53, 586, 1, 6, '2015-08-08 18:34:20', 241, 0, NULL),
(53, 130, 1, 1, '2015-08-08 18:34:20', 242, 0, NULL),
(53, 147, 1, 1, '2015-08-08 18:34:20', 243, 0, NULL),
(53, 282, 1, 1, '2015-08-08 18:34:20', 244, 0, NULL),
(54, 181, 1, 1, '2015-08-08 18:37:35', 245, 0, NULL),
(54, 186, 1, 5, '2015-08-08 18:37:35', 246, 0, NULL),
(54, 220, 1, 1, '2015-08-08 18:37:35', 247, 0, NULL),
(54, 196, 1, 3, '2015-08-08 18:37:35', 248, 0, NULL),
(55, 425, 1, 1, '2015-08-08 18:39:11', 249, 0, NULL),
(1, 526, 1, 1, '2015-08-09 06:14:49', 250, 0, NULL),
(2, 57, 1, 1, '2015-08-09 06:16:46', 251, 0, NULL),
(1, 597, 1, 1, '2015-08-09 06:19:38', 252, 0, NULL),
(1, 127, 1, 1, '2015-08-09 06:19:38', 253, 0, NULL),
(1, 182, 1, 46, '2015-08-09 06:19:38', 254, 0, NULL),
(2, 182, 1, 104, '2015-08-09 06:21:59', 255, 0, -150),
(2, 526, 1, 1, '2015-08-09 06:21:59', 256, 0, -2),
(3, 221, 1, 1, '2015-08-09 06:26:11', 257, 0, NULL),
(3, 19, 1, 1, '2015-08-09 06:26:11', 258, 0, -3),
(4, 208, 1, 1, '2015-08-09 06:35:09', 259, 0, NULL),
(4, 293, 1, 1, '2015-08-09 06:35:09', 260, 0, NULL),
(4, 51, 1, 2, '2015-08-09 06:35:09', 261, 0, NULL),
(4, 88, 1, 2, '2015-08-09 06:35:09', 262, 0, NULL),
(4, 384, 1, 1, '2015-08-09 06:35:09', 263, 0, NULL),
(4, 10, 1, 1, '2015-08-09 06:35:09', 264, 0, -3),
(4, 139, 1, 1, '2015-08-09 06:35:09', 265, 0, NULL),
(5, 368, 1, 1, '2015-08-09 06:36:38', 266, 0, NULL),
(5, 92, 1, 2, '2015-08-09 06:36:38', 267, 0, NULL),
(5, 129, 1, 1, '2015-08-09 06:36:38', 268, 0, -5),
(6, 150, 1, 1, '2015-08-09 06:37:18', 269, 0, NULL),
(7, 126, 1, 1, '2015-08-09 06:49:14', 270, 0, NULL),
(8, 182, 1, 46, '2015-08-09 06:55:19', 271, 0, -196),
(9, 131, 1, 2, '2015-08-09 06:56:07', 272, 0, NULL),
(10, 229, 1, 1, '2015-08-09 07:04:00', 273, 0, NULL),
(10, 278, 1, 1, '2015-08-09 07:04:00', 274, 0, NULL),
(11, 92, 1, 2, '2015-08-09 07:04:16', 275, 0, -4),
(12, 90, 1, 1, '2015-08-09 07:05:33', 276, 0, NULL),
(12, 220, 1, 1, '2015-08-09 07:05:33', 277, 0, -2),
(12, 368, 1, 1, '2015-08-09 07:05:33', 278, 0, -2),
(13, 147, 1, 12, '2015-08-09 07:17:27', 279, 0, -13),
(14, 92, 1, 5, '2015-08-09 07:20:10', 280, 0, -9),
(15, 200, 1, 1, '2015-08-09 07:21:09', 281, 0, -2),
(15, 134, 1, 1, '2015-08-09 07:21:09', 282, 0, NULL),
(16, 220, 1, 2, '2015-08-09 07:25:12', 283, 0, -4),
(16, 182, 1, 26, '2015-08-09 07:25:12', 284, 0, -222),
(16, 92, 1, 10, '2015-08-09 07:25:12', 285, 0, -19),
(17, 18, 1, 1, '2015-08-09 07:28:01', 286, 0, NULL),
(17, 131, 1, 1, '2015-08-09 07:28:01', 287, 0, -3),
(17, 72, 1, 1, '2015-08-09 07:28:01', 288, 0, NULL),
(17, 229, 1, 1, '2015-08-09 07:28:01', 289, 0, -2),
(17, 95, 1, 1, '2015-08-09 07:28:01', 290, 0, NULL),
(17, 91, 1, 1, '2015-08-09 07:28:01', 291, 0, NULL),
(17, 206, 1, 1, '2015-08-09 07:28:01', 292, 0, NULL),
(18, 89, 1, 1, '2015-08-09 07:28:28', 293, 0, NULL),
(19, 53, 1, 1, '2015-08-09 07:30:38', 294, 0, NULL),
(19, 139, 1, 2, '2015-08-09 07:30:38', 295, 0, -3),
(19, 51, 1, 1, '2015-08-09 07:30:38', 296, 0, -3),
(19, 597, 1, 1, '2015-08-09 07:30:38', 297, 0, -2),
(20, 92, 1, 1, '2015-08-09 07:33:12', 298, 0, -20),
(20, 666, 1, 1, '2015-08-09 07:33:12', 299, 0, NULL),
(20, 221, 1, 1, '2015-08-09 07:33:12', 300, 0, -2),
(20, 139, 1, 1, '2015-08-09 07:33:12', 301, 0, -4),
(20, 165, 1, 1, '2015-08-09 07:33:12', 302, 0, NULL),
(20, 178, 1, 1, '2015-08-09 07:33:12', 303, 0, NULL),
(21, 186, 1, 5, '2015-08-09 07:34:28', 304, 0, -10),
(21, 95, 1, 1, '2015-08-09 07:34:28', 305, 0, -2),
(21, 385, 1, 1, '2015-08-09 07:34:28', 306, 0, NULL),
(21, 91, 1, 1, '2015-08-09 07:34:28', 307, 0, -2),
(21, 170, 1, 1, '2015-08-09 07:34:28', 308, 0, NULL),
(21, 201, 1, 1, '2015-08-09 07:34:28', 309, 0, NULL),
(22, 158, 1, 1, '2015-08-09 07:35:55', 310, 0, NULL),
(22, 91, 1, 1, '2015-08-09 07:35:55', 311, 0, -3),
(22, 292, 1, 1, '2015-08-09 07:35:55', 312, 0, -4),
(23, 125, 1, 1, '2015-08-09 07:37:12', 313, 0, NULL),
(23, 192, 1, 4, '2015-08-09 07:37:12', 314, 0, NULL),
(24, 96, 1, 1, '2015-08-09 07:37:43', 315, 0, NULL),
(24, 89, 1, 1, '2015-08-09 07:37:43', 316, 0, -2),
(25, 96, 1, 1, '2015-08-09 07:38:39', 317, 0, -2),
(25, 94, 1, 1, '2015-08-09 07:38:39', 318, 0, NULL),
(25, 92, 1, 2, '2015-08-09 07:38:39', 319, 0, -22),
(26, 266, 1, 1, '2015-08-09 07:40:25', 320, 0, NULL),
(26, 91, 1, 1, '2015-08-09 07:40:25', 321, 0, -4),
(26, 140, 1, 1, '2015-08-09 07:40:25', 322, 0, NULL),
(26, 86, 1, 1, '2015-08-09 07:40:25', 323, 0, NULL),
(26, 158, 1, 1, '2015-08-09 07:40:25', 324, 0, -2),
(26, 162, 1, 1, '2015-08-09 07:40:25', 325, 0, NULL),
(26, 385, 1, 1, '2015-08-09 07:40:25', 326, 0, -2),
(26, 261, 1, 1, '2015-08-09 07:40:25', 327, 0, NULL),
(26, 192, 1, 3, '2015-08-09 07:40:25', 328, 0, -7),
(27, 36, 1, 1, '2015-08-09 07:41:17', 329, 0, -2),
(27, 386, 1, 1, '2015-08-09 07:41:17', 330, 0, -2),
(27, 91, 1, 1, '2015-08-09 07:41:17', 331, 0, -5),
(27, 206, 1, 1, '2015-08-09 07:41:17', 332, 0, -2),
(28, 89, 1, 1, '2015-08-09 07:41:39', 333, 0, -3),
(28, 428, 1, 1, '2015-08-09 07:41:39', 334, 0, NULL),
(29, 95, 1, 1, '2015-08-09 07:42:11', 335, 0, -3),
(29, 294, 1, 1, '2015-08-09 07:42:11', 336, 0, NULL),
(30, 317, 1, 1, '2015-08-09 07:42:41', 337, 0, NULL),
(30, 115, 1, 1, '2015-08-09 07:42:41', 338, 0, NULL),
(30, 96, 1, 1, '2015-08-09 07:42:41', 339, 0, -3),
(31, 663, 1, 1, '2015-08-09 07:43:30', 340, 0, NULL),
(31, 221, 1, 1, '2015-08-09 07:43:30', 341, 0, -3),
(31, 91, 1, 1, '2015-08-09 07:43:30', 342, 0, -6),
(32, 95, 1, 2, '2015-08-09 07:51:32', 343, 0, -5),
(32, 94, 1, 1, '2015-08-09 07:51:32', 344, 0, -2),
(32, 10, 1, 1, '2015-08-09 07:51:32', 345, 0, -4),
(33, 129, 1, 1, '2015-08-09 07:52:30', 346, 0, -6),
(34, 127, 1, 1, '2015-08-09 07:53:33', 347, 0, -2),
(34, 127, 1, 1, '2015-08-09 07:53:33', 348, 0, -3),
(35, 185, 1, 10, '2015-08-09 07:56:09', 349, 0, NULL),
(36, 94, 1, 1, '2015-08-09 08:01:47', 350, 0, -3),
(36, 53, 1, 1, '2015-08-09 08:01:47', 351, 0, -2),
(37, 223, 1, 1, '2015-08-09 08:17:07', 352, 0, NULL),
(37, 163, 1, 1, '2015-08-09 08:17:07', 353, 0, NULL),
(37, 565, 1, 1, '2015-08-09 08:17:08', 354, 0, NULL),
(38, 127, 1, 1, '2015-08-09 08:18:52', 355, 0, -4),
(38, 182, 1, 30, '2015-08-09 08:18:52', 356, 0, -252),
(39, 182, 1, 52, '2015-08-09 08:25:07', 357, 0, -304),
(39, 182, 1, 52, '2015-08-09 08:25:07', 358, 0, -356),
(40, 182, 1, 52, '2015-08-09 08:29:13', 359, 0, -408),
(41, 92, 1, 1, '2015-08-09 08:29:25', 360, 0, -23),
(42, 115, 1, 2, '2015-08-09 08:37:31', 361, 0, -3),
(42, 92, 1, 2, '2015-08-09 08:37:31', 362, 0, -25),
(43, 106, 1, 1, '2015-08-09 08:38:20', 363, 0, NULL),
(43, 209, 1, 1, '2015-08-09 08:38:20', 364, 0, NULL),
(44, 266, 1, 1, '2015-08-09 08:42:34', 365, 0, -2),
(45, 93, 1, 1, '2015-08-09 08:43:13', 366, 0, NULL),
(46, 384, 1, 2, '2015-08-09 08:50:48', 367, 0, -3),
(46, 385, 1, 2, '2015-08-09 08:50:48', 368, 0, -4),
(46, 8, 1, 2, '2015-08-09 08:50:48', 369, 0, 46),
(46, 185, 1, 8, '2015-08-09 08:50:48', 370, 0, -18),
(47, 129, 1, 1, '2015-08-09 08:51:00', 371, 0, -7),
(48, 294, 1, 1, '2015-08-09 08:53:46', 372, 0, -2),
(48, 185, 1, 4, '2015-08-09 08:53:46', 373, 0, -22),
(49, 204, 1, 1, '2015-08-09 08:56:23', 374, 0, NULL),
(50, 126, 1, 2, '2015-08-09 08:59:12', 375, 0, -3),
(51, 91, 1, 1, '2015-08-09 09:00:57', 376, 0, -7),
(52, 266, 1, 1, '2015-08-09 09:02:02', 377, 0, -3),
(53, 182, 1, 52, '2015-08-09 09:09:04', 378, 0, -460),
(54, 129, 1, 1, '2015-08-09 09:13:05', 379, 0, -8),
(55, 123, 1, 1, '2015-08-09 09:16:26', 380, 0, NULL),
(56, 150, 1, 3, '2015-08-09 09:18:27', 381, 0, -4),
(57, 97, 1, 1, '2015-08-09 09:18:47', 382, 0, NULL),
(58, 304, 1, 3, '2015-08-09 09:25:22', 383, 0, NULL),
(59, 145, 1, 2, '2015-08-09 09:27:56', 384, 0, -3),
(60, 145, 1, 1, '2015-08-09 09:29:51', 385, 0, -4),
(60, 204, 1, 1, '2015-08-09 09:29:51', 386, 0, -2),
(61, 182, 1, 21, '2015-08-09 09:31:20', 387, 0, -481),
(62, 304, 1, 3, '2015-08-09 09:33:31', 388, 0, -6),
(62, 655, 1, 2, '2015-08-09 09:33:31', 389, 0, NULL),
(63, 236, 1, 1, '2015-08-09 09:35:36', 390, 0, NULL),
(63, 712, 1, 3, '2015-08-09 09:35:36', 391, 0, NULL),
(63, 380, 1, 2, '2015-08-09 09:35:36', 392, 0, NULL),
(63, 50, 1, 1, '2015-08-09 09:35:36', 393, 0, NULL),
(63, 200, 1, 2, '2015-08-09 09:35:36', 394, 0, -4),
(64, 91, 1, 1, '2015-08-09 09:37:02', 395, 0, -8),
(64, 121, 1, 1, '2015-08-09 09:37:02', 396, 0, -4),
(64, 90, 1, 1, '2015-08-09 09:37:02', 397, 0, -2),
(65, 92, 1, 1, '2015-08-09 09:38:27', 398, 0, -26),
(66, 438, 1, 1, '2015-08-09 09:41:00', 399, 0, NULL),
(66, 176, 1, 1, '2015-08-09 09:41:00', 400, 0, NULL),
(66, 134, 1, 1, '2015-08-09 09:41:00', 401, 0, -2),
(66, 127, 1, 1, '2015-08-09 09:41:00', 402, 0, -5),
(66, 129, 1, 1, '2015-08-09 09:41:00', 403, 0, -9),
(66, 209, 1, 1, '2015-08-09 09:41:00', 404, 0, -2),
(66, 186, 1, 2, '2015-08-09 09:41:00', 405, 0, -12),
(67, 136, 1, 1, '2015-08-09 09:41:52', 406, 0, NULL),
(67, 121, 1, 1, '2015-08-09 09:41:52', 407, 0, -5),
(68, 182, 1, 21, '2015-08-09 09:51:54', 408, 0, -502),
(68, 129, 1, 1, '2015-08-09 09:51:54', 409, 0, -10),
(69, 131, 1, 4, '2015-08-09 09:52:54', 410, 0, -7),
(69, 368, 1, 1, '2015-08-09 09:52:54', 411, 0, -3),
(70, 129, 1, 1, '2015-08-09 09:53:34', 412, 0, -11),
(71, 2, 1, 1, '2015-08-09 09:54:47', 413, 0, 134),
(72, 243, 1, 1, '2015-08-09 09:56:56', 414, 0, -2),
(72, 131, 1, 2, '2015-08-09 09:56:56', 415, 0, -9),
(73, 120, 1, 1, '2015-08-09 09:58:58', 416, 0, NULL),
(73, 78, 1, 1, '2015-08-09 09:58:58', 417, 0, NULL),
(73, 11, 1, 1, '2015-08-09 09:58:58', 418, 0, -5),
(74, 93, 1, 1, '2015-08-09 09:59:23', 419, 0, -2),
(74, 97, 1, 1, '2015-08-09 09:59:23', 420, 0, -2),
(75, 91, 1, 1, '2015-08-09 10:02:37', 421, 0, -9),
(75, 131, 1, 1, '2015-08-09 10:02:37', 422, 0, -10),
(76, 89, 1, 1, '2015-08-09 10:05:00', 423, 0, -4),
(76, 3, 1, 1, '2015-08-09 10:05:00', 424, 0, 162),
(77, 182, 1, 150, '2015-08-09 10:06:40', 425, 0, -652),
(78, 94, 1, 1, '2015-08-09 10:06:58', 426, 0, -4),
(78, 363, 1, 1, '2015-08-09 10:06:58', 427, 0, NULL),
(79, 127, 1, 3, '2015-08-09 10:11:09', 428, 0, -8),
(79, 129, 1, 1, '2015-08-09 10:11:09', 429, 0, -12),
(79, 597, 1, 1, '2015-08-09 10:11:09', 430, 0, -3),
(79, 32, 1, 1, '2015-08-09 10:11:09', 431, 0, -7),
(79, 425, 1, 2, '2015-08-09 10:11:09', 432, 0, -3),
(80, 468, 1, 1, '2015-08-09 10:11:32', 433, 0, NULL),
(81, 185, 1, 10, '2015-08-09 10:11:56', 434, 0, -32),
(82, 312, 1, 1, '2015-08-09 10:13:45', 435, 0, NULL),
(83, 384, 1, 1, '2015-08-09 10:14:40', 436, 0, -4),
(83, 204, 1, 1, '2015-08-09 10:14:40', 437, 0, -3),
(84, 303, 1, 2, '2015-08-09 10:15:57', 438, 0, NULL),
(85, 97, 1, 1, '2015-08-09 10:16:47', 439, 0, -3),
(86, 50, 1, 1, '2015-08-09 10:21:38', 440, 0, -2),
(86, 204, 1, 1, '2015-08-09 10:21:38', 441, 0, -4),
(86, 88, 1, 1, '2015-08-09 10:21:38', 442, 0, -3),
(87, 98, 1, 1, '2015-08-09 10:24:57', 443, 0, -9),
(88, 184, 1, 1, '2015-08-09 10:27:40', 444, 0, NULL),
(89, 131, 1, 1, '2015-08-09 10:32:11', 445, 0, -11),
(90, 423, 1, 2, '2015-08-09 10:42:33', 446, 0, NULL),
(90, 72, 1, 1, '2015-08-09 10:42:33', 447, 0, -2),
(90, 150, 1, 1, '2015-08-09 10:42:33', 448, 0, -5),
(90, 221, 1, 1, '2015-08-09 10:42:33', 449, 0, -4),
(91, 223, 1, 1, '2015-08-09 10:44:09', 450, 0, -2),
(91, 163, 1, 1, '2015-08-09 10:44:09', 451, 0, -2),
(92, 91, 1, 1, '2015-08-09 10:45:04', 452, 0, -10),
(93, 86, 1, 1, '2015-08-09 10:46:03', 453, 0, -2),
(93, 120, 1, 1, '2015-08-09 10:46:03', 454, 0, -2),
(93, 182, 1, 21, '2015-08-09 10:46:03', 455, 0, -673),
(94, 148, 1, 6, '2015-08-09 10:46:56', 456, 0, NULL),
(95, 89, 1, 1, '2015-08-09 10:47:25', 457, 0, -5),
(96, 164, 1, 1, '2015-08-09 11:05:57', 458, 0, NULL),
(96, 164, 1, 1, '2015-08-09 11:05:57', 459, 0, -2),
(97, 111, 1, 2, '2015-08-09 11:09:04', 460, 0, -6),
(97, 129, 1, 1, '2015-08-09 11:09:04', 461, 0, -13),
(97, 86, 1, 1, '2015-08-09 11:09:04', 462, 0, -3),
(98, 182, 1, 45, '2015-08-09 11:10:36', 463, 0, -718),
(98, 219, 1, 1, '2015-08-09 11:10:36', 464, 0, NULL),
(98, 123, 1, 1, '2015-08-09 11:10:36', 465, 0, -2),
(98, 150, 1, 1, '2015-08-09 11:10:36', 466, 0, -6),
(99, 100, 1, 1, '2015-08-09 11:11:31', 467, 0, NULL),
(100, 182, 1, 16, '2015-08-09 11:12:56', 468, 0, -734),
(101, 301, 1, 2, '2015-08-09 11:16:36', 469, 0, NULL),
(101, 261, 1, 1, '2015-08-09 11:16:36', 470, 0, -2),
(101, 94, 1, 1, '2015-08-09 11:16:36', 471, 0, -5),
(101, 96, 1, 2, '2015-08-09 11:16:36', 472, 0, -5),
(101, 580, 1, 1, '2015-08-09 11:16:36', 473, 0, NULL),
(101, 92, 1, 1, '2015-08-09 11:16:36', 474, 0, -27),
(101, 311, 1, 1, '2015-08-09 11:16:36', 475, 0, NULL),
(101, 314, 1, 1, '2015-08-09 11:16:36', 476, 0, NULL),
(102, 131, 1, 1, '2015-08-09 11:17:48', 477, 0, -12),
(103, 131, 1, 3, '2015-08-09 11:20:00', 478, 0, -15),
(103, 542, 1, 2, '2015-08-09 11:20:00', 479, 0, NULL),
(103, 192, 1, 1, '2015-08-09 11:20:00', 480, 0, -8),
(103, 136, 1, 1, '2015-08-09 11:20:00', 481, 0, -2),
(103, 230, 1, 1, '2015-08-09 11:20:00', 482, 0, NULL),
(104, 92, 1, 4, '2015-08-09 11:20:36', 483, 0, -31),
(105, 96, 1, 2, '2015-08-09 11:22:15', 484, 0, -7),
(105, 95, 1, 2, '2015-08-09 11:22:15', 485, 0, -7),
(105, 94, 1, 4, '2015-08-09 11:22:15', 486, 0, -9),
(105, 192, 1, 2, '2015-08-09 11:22:15', 487, 0, -10),
(105, 92, 1, 5, '2015-08-09 11:22:15', 488, 0, -36),
(106, 131, 1, 12, '2015-08-09 11:29:22', 489, 0, -27),
(106, 121, 1, 4, '2015-08-09 11:29:22', 490, 0, -9),
(107, 182, 1, 50, '2015-08-09 11:30:20', 491, 0, -784),
(108, 131, 1, 2, '2015-08-09 11:33:21', 492, 0, -29),
(109, 89, 1, 1, '2015-08-09 11:34:33', 493, 0, -6),
(109, 88, 1, 1, '2015-08-09 11:34:33', 494, 0, -4),
(110, 90, 1, 1, '2015-08-09 11:35:47', 495, 0, -3),
(110, 88, 1, 1, '2015-08-09 11:35:47', 496, 0, -5),
(110, 126, 1, 1, '2015-08-09 11:35:47', 497, 0, -4),
(111, 295, 1, 1, '2015-08-09 11:39:58', 498, 0, NULL),
(112, 182, 1, 41, '2015-08-09 11:41:14', 499, 0, -825),
(113, 140, 1, 1, '2015-08-09 11:43:41', 500, 0, -2),
(113, 90, 1, 1, '2015-08-09 11:43:41', 501, 0, -4),
(113, 95, 1, 1, '2015-08-09 11:43:41', 502, 0, -8),
(114, 5, 1, 1, '2015-08-09 11:52:32', 503, 0, NULL),
(114, 4, 1, 1, '2015-08-09 11:52:32', 504, 0, 9),
(114, 369, 1, 2, '2015-08-09 11:52:32', 505, 0, NULL),
(114, 523, 1, 1, '2015-08-09 11:52:33', 506, 0, NULL),
(114, 131, 1, 2, '2015-08-09 11:52:33', 507, 0, -31),
(114, 384, 1, 2, '2015-08-09 11:52:33', 508, 0, -6),
(115, 2, 1, 1, '2015-08-09 11:53:14', 509, 0, 133),
(115, 243, 1, 1, '2015-08-09 11:53:14', 510, 0, -3),
(116, 90, 1, 1, '2015-08-09 11:53:35', 511, 0, -5),
(117, 97, 1, 1, '2015-08-09 11:53:53', 512, 0, -4),
(117, 89, 1, 1, '2015-08-09 11:53:53', 513, 0, -7),
(117, 93, 1, 1, '2015-08-09 11:53:53', 514, 0, -3),
(118, 208, 1, 1, '2015-08-09 12:01:05', 515, 0, -2),
(118, 95, 1, 1, '2015-08-09 12:01:05', 516, 0, -9),
(118, 493, 1, 1, '2015-08-09 12:01:05', 517, 0, NULL),
(119, 92, 1, 10, '2015-08-09 12:09:11', 518, 0, -46),
(119, 91, 1, 2, '2015-08-09 12:09:11', 519, 0, -12),
(119, 580, 1, 1, '2015-08-09 12:09:11', 520, 0, -2),
(120, 298, 1, 1, '2015-08-09 12:10:47', 521, 0, NULL),
(120, 319, 1, 1, '2015-08-09 12:10:47', 522, 0, NULL),
(120, 312, 1, 1, '2015-08-09 12:10:47', 523, 0, -2),
(120, 317, 1, 1, '2015-08-09 12:10:47', 524, 0, -2),
(121, 92, 1, 2, '2015-08-09 12:15:00', 525, 0, -48),
(121, 385, 1, 1, '2015-08-09 12:15:00', 526, 0, -5),
(121, 131, 1, 2, '2015-08-09 12:15:00', 527, 0, -33),
(122, 140, 1, 1, '2015-08-09 12:16:41', 528, 0, -3),
(123, 182, 1, 104, '2015-08-09 12:23:56', 529, 0, -929),
(123, 119, 1, 1, '2015-08-09 12:23:56', 530, 0, NULL),
(124, 139, 1, 1, '2015-08-09 12:26:11', 531, 0, -5),
(125, 135, 1, 1, '2015-08-09 12:34:51', 532, 0, NULL),
(126, 136, 1, 1, '2015-08-09 12:42:04', 533, 0, -3),
(126, 185, 1, 2, '2015-08-09 12:42:04', 534, 0, -34),
(127, 129, 1, 1, '2015-08-09 12:42:36', 535, 0, -14),
(128, 95, 1, 2, '2015-08-09 12:43:12', 536, 0, -11),
(128, 89, 1, 1, '2015-08-09 12:43:12', 537, 0, -8),
(128, 384, 1, 1, '2015-08-09 12:43:12', 538, 0, -7),
(129, 140, 1, 1, '2015-08-09 12:44:07', 539, 0, -4),
(129, 192, 1, 5, '2015-08-09 12:44:07', 540, 0, -15),
(130, 53, 1, 1, '2015-08-09 12:44:26', 541, 0, -3),
(131, 200, 1, 1, '2015-08-09 12:51:26', 542, 0, -5),
(131, 136, 1, 1, '2015-08-09 12:51:26', 543, 0, -4),
(132, 363, 1, 1, '2015-08-09 12:56:34', 544, 0, -2),
(133, 580, 1, 1, '2015-08-09 13:04:35', 545, 0, -3),
(134, 269, 1, 1, '2015-08-09 13:05:52', 546, 0, NULL),
(135, 192, 1, 5, '2015-08-09 13:07:10', 547, 0, -20),
(135, 139, 1, 1, '2015-08-09 13:07:10', 548, 0, -6),
(136, 132, 1, 1, '2015-08-09 13:11:28', 549, 0, NULL),
(137, 384, 1, 1, '2015-08-09 13:26:47', 550, 0, -8),
(137, 127, 1, 1, '2015-08-09 13:26:47', 551, 0, -9),
(137, 70, 1, 1, '2015-08-09 13:26:47', 552, 0, NULL),
(137, 185, 1, 1, '2015-08-09 13:26:47', 553, 0, -35),
(138, 88, 1, 1, '2015-08-09 13:27:09', 554, 0, -6),
(139, 536, 1, 3, '2015-08-09 13:28:11', 555, 0, NULL),
(140, 385, 1, 1, '2015-08-09 13:29:12', 556, 0, -6),
(141, 146, 1, 1, '2015-08-09 13:32:43', 557, 0, NULL),
(141, 182, 1, 52, '2015-08-09 13:32:43', 558, 0, -981),
(141, 95, 1, 1, '2015-08-09 13:32:43', 559, 0, -12),
(142, 150, 1, 1, '2015-08-09 13:33:21', 560, 0, -7),
(143, 182, 1, 416, '2015-08-09 13:37:10', 561, 0, -1397),
(144, 235, 1, 1, '2015-08-09 13:40:08', 562, 0, NULL),
(144, 229, 1, 1, '2015-08-09 13:40:08', 563, 0, -3),
(144, 96, 1, 1, '2015-08-09 13:40:08', 564, 0, -8),
(144, 89, 1, 1, '2015-08-09 13:40:08', 565, 0, -9),
(145, 101, 1, 1, '2015-08-09 13:41:22', 566, 0, -8),
(146, 134, 1, 1, '2015-08-09 13:42:16', 567, 0, -3),
(146, 2, 1, 1, '2015-08-09 13:42:16', 568, 0, 132),
(146, 192, 1, 1, '2015-08-09 13:42:16', 569, 0, -21),
(147, 185, 1, 4, '2015-08-09 13:43:25', 570, 0, -39),
(148, 196, 1, 1, '2015-08-09 13:43:59', 571, 0, -4),
(149, 122, 1, 1, '2015-08-09 13:46:24', 572, 0, NULL),
(150, 182, 1, 104, '2015-08-09 13:47:33', 573, 0, -1501),
(150, 182, 1, 104, '2015-08-09 13:47:33', 574, 0, -1605),
(151, 94, 1, 1, '2015-08-09 13:49:14', 575, 0, -10),
(151, 92, 1, 2, '2015-08-09 13:49:14', 576, 0, -50),
(151, 186, 1, 1, '2015-08-09 13:49:14', 577, 0, -13),
(152, 183, 1, 25, '2015-08-09 13:50:38', 578, 0, NULL),
(153, 196, 1, 1, '2015-08-09 13:53:17', 579, 0, -5),
(153, 139, 1, 1, '2015-08-09 13:53:17', 580, 0, -7),
(153, 131, 1, 1, '2015-08-09 13:53:17', 581, 0, -34),
(154, 10, 1, 1, '2015-08-09 13:54:04', 582, 0, -5),
(154, 89, 1, 1, '2015-08-09 13:54:04', 583, 0, -10),
(155, 89, 1, 1, '2015-08-09 13:55:01', 584, 0, -11),
(156, 164, 1, 1, '2015-08-09 13:56:59', 585, 0, -3),
(156, 129, 1, 1, '2015-08-09 13:56:59', 586, 0, -15),
(156, 196, 1, 5, '2015-08-09 13:56:59', 587, 0, -10),
(157, 89, 1, 2, '2015-08-09 13:57:53', 588, 0, -13),
(157, 164, 1, 1, '2015-08-09 13:57:53', 589, 0, -4),
(157, 196, 1, 1, '2015-08-09 13:57:53', 590, 0, -11),
(158, 97, 1, 1, '2015-08-09 13:59:12', 591, 0, -5),
(158, 91, 1, 1, '2015-08-09 13:59:12', 592, 0, -13),
(158, 121, 1, 1, '2015-08-09 13:59:12', 593, 0, -10),
(159, 344, 1, 1, '2015-08-09 13:59:53', 594, 0, NULL),
(159, 186, 1, 2, '2015-08-09 13:59:53', 595, 0, -15),
(160, 92, 1, 1, '2015-08-09 14:00:07', 596, 0, -51),
(161, 196, 1, 3, '2015-08-09 14:05:44', 597, 0, -14),
(162, 196, 1, 2, '2015-08-09 14:09:34', 598, 0, -16);

--
-- Disparadores `kardex`
--
DROP TRIGGER IF EXISTS `sumaKardex`;
DELIMITER //
CREATE TRIGGER `sumaKardex` BEFORE INSERT ON `kardex`
 FOR EACH ROW BEGIN
declare exi double;
declare sumaEntada double;
declare sumaSalida double;

set sumaEntada=(SELECT
SUM(kardex.entrada)
FROM
kardex
WHERE kardex.codigo_articulo=new.codigo_articulo);

set sumaSalida=(SELECT
SUM(kardex.salida)
FROM
kardex
WHERE kardex.codigo_articulo=new.codigo_articulo);

set exi=sumaEntada-sumaSalida;
SET new.existencia=exi+new.entrada-new.salida;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE IF NOT EXISTS `marcas` (
  `codigo_marca` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(145) NOT NULL,
  `observacion` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`codigo_marca`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=127 ;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`codigo_marca`, `descripcion`, `observacion`) VALUES
(1, 'Issima', 'productos instantaneos'),
(2, 'Nutritivas', 'tajadas'),
(3, 'Sula', 'Jugos y Lacteos'),
(4, 'Hojalmar', 'galleta'),
(5, 'costa', ''),
(6, 'gamesa', ''),
(7, 'pace', ''),
(8, 'Mello', ''),
(9, 'Keebler', ''),
(10, 'lic dutch', ''),
(11, 'pozuelo', ''),
(12, 'actII', ''),
(13, 'ARMOUR', ''),
(14, 'FRITO LAY', ''),
(15, 'RICA SULA', ''),
(16, 'HERSHEYS', ''),
(17, 'NESTLE', ''),
(18, 'FERRERO ROCHER ', 'CHOCOLATE'),
(19, 'AGUA AZUL ', ''),
(20, 'EMBATLAN  ', ''),
(21, 'RON BACARDI', ''),
(22, 'PRINGLES ', ''),
(23, 'LIDO', ''),
(24, 'ROLAND', ''),
(25, 'PRODUCTO LINA', ''),
(26, 'BIMBO', ''),
(28, 'RON FLOR DE CAÃ‘A', ''),
(29, 'CLUB SOCIAL', ''),
(30, 'MARINELA', ''),
(31, 'RON PLATA', ''),
(32, 'ALOE VERA', ''),
(33, 'MONSTER', ''),
(34, 'ENERGIZANTE', ''),
(35, 'WELCH', ''),
(36, 'B&J', ''),
(37, 'NATURAS', ''),
(38, 'CERVESERIA HONDUREÃ‘A', ''),
(39, 'FRISTY', 'JUGO'),
(40, 'LEYDE', 'JUGO'),
(41, 'FOURT LOKO', 'FOURT'),
(42, 'yummies', 'churros'),
(43, 'BOONES', 'BINO '),
(44, 'RON BARCELO', 'LICOR'),
(45, 'RON BOLTRAN', 'LICOR'),
(46, 'FREIXENET', 'LICOR'),
(47, 'OTRAS', 'VARIOS'),
(48, 'tigo', 'saldo'),
(49, 'claro', 'saldos'),
(50, 'CHICLES ', 'GOMA DE MASCAR'),
(51, 'BELMO', 'CIGARRO'),
(52, 'ROYAL', 'CIGARRO'),
(53, 'DUNHILL', 'CIGARRO'),
(54, 'MARLBORO', 'CIGARRO'),
(55, 'PRO MANI', 'MANI'),
(56, 'DUREX ', 'DUREX'),
(57, 'HEROS', 'HEROS'),
(58, 'la catrachita', 'cacahuate'),
(59, 'IMPORTED', 'TEQUILA'),
(60, 'energizer', 'baterias'),
(61, 'EVEREADY  GOLD', 'BATERIAS'),
(62, 'RAYOVAC', 'BATERIAS'),
(63, 'SKITTLES', 'COCHOLATE '),
(64, 'VODKA', 'LICORES'),
(65, 'SARITA', 'HELADO'),
(66, 'JUGUETES ', 'JUGUETES '),
(67, 'LUBRICANTES', 'ACEITES'),
(68, 'AROMATIZANTE', 'CARRO'),
(69, 'RESPUESTOS', 'CARRO'),
(70, 'CUETARA', 'GALLETA'),
(71, 'PEGAMENTOS ', 'PEGAMENTOS '),
(72, 'CLAREHS ', 'ROSQUILLAS '),
(73, 'ABRO', 'D'),
(74, 'frutas', 'frutas'),
(75, 'PASTILLAS ', 'PASTILLAS '),
(76, 'RICA SULA ', 'CHURROS'),
(77, 'JUGO', 'JUGO'),
(78, 'GILLETTE', 'PRESTOBARBA'),
(79, 'BEBIDA ', 'BEBIDA'),
(80, 'FLOR DE CAÃ‘A', 'FLOR DE CAÃ‘A'),
(81, 'DULCE', 'DULCE'),
(82, 'FRUTTE', 'FRUTTE'),
(83, 'GIFITY', 'GIFITY'),
(84, 'MANTRA', 'MANTRA'),
(85, 'TABORA ', 'TABORA'),
(86, 'comida', 'comida'),
(87, 'ARTESANAS', 'ARTESANAS'),
(88, 'ROYAL CASTLE', 'ROYAL CASTLE'),
(89, 'MODELO', 'MODELO'),
(90, 'SAE', 'SAE'),
(91, 'URSA', 'URSA'),
(92, 'BUCHANANS', 'BUCHANANS'),
(93, 'ZIBAS', 'ZIBAS'),
(94, 'PROTY', 'PROTY'),
(95, 'TROPIMAS', 'TROPIMAS'),
(96, 'NUTELLA', 'NUTELLA'),
(97, 'frappuccino', 'frappuccino'),
(98, 'SUPER YOYO', 'SUPER YOYO'),
(99, 'TEA SET', 'TEA SET'),
(100, 'SCHOOL BUS', 'SCHOOL BUS'),
(101, 'WET WORKS', 'WET WORK'),
(102, 'XTREME', 'XTREME'),
(103, 'SUPER TRUCK', 'SUPER TRUCK'),
(104, 'DOCTOR', 'DOCTOR'),
(105, 'MAGICA', 'MAGICA'),
(106, 'JUMBO JAKS', 'JUMBO JACKS'),
(107, 'AQUA ANGELS', 'SET DE SIRENAS DE 4'),
(108, 'FASHION MAKE UP', 'FASHION MAKE UP'),
(109, 'SNOOKER', 'SNOOKER'),
(110, 'horse', 'horse'),
(111, 'VITAFLENACO', 'VITAFLENACO'),
(112, 'BON BON', 'BON BON'),
(113, 'ORIGINAL', 'ORIGINAL'),
(114, 'SCORBY', 'SCORBY'),
(115, 'CARNIVAL', 'CARNIVAL'),
(116, 'PALOMITAS', 'PALOMITAS'),
(117, 'MR JOHN', 'MR JOHN'),
(118, 'CLASICO', 'CLASICO'),
(119, 'COLGATE', 'COLGATE'),
(120, 'JARANA', 'JARANA'),
(121, 'BABY SEC', 'BABY SEC'),
(122, 'CRUSH', 'CRUSH'),
(123, 'SCHWEPPES', 'SCHWEPPES'),
(124, 'OKA', 'OKA'),
(125, 'BRAZIL ', 'BRAZIL GOURMET'),
(126, 'SUNNY D', 'SUNNY D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_kardex`
--

CREATE TABLE IF NOT EXISTS `movimiento_kardex` (
  `codigo_movimiento` int(11) NOT NULL,
  `codigo_tipo_movimiento` int(11) NOT NULL,
  `cantidad` float(255,0) NOT NULL,
  `precio_unidad` float NOT NULL,
  `total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `movimiento_kardex`
--

INSERT INTO `movimiento_kardex` (`codigo_movimiento`, `codigo_tipo_movimiento`, `cantidad`, `precio_unidad`, `total`) VALUES
(1, 3, 10, 30, 300),
(2, 3, 50, 15, 750),
(3, 3, 20, 120, 2400),
(4, 3, 10, 25, 250),
(5, 3, 15, 65, 975),
(6, 2, 1, 30, 30),
(6, 3, 9, 30, 270),
(7, 2, 1, 15, 15),
(7, 3, 49, 15, 735),
(8, 2, 1, 120, 120),
(8, 3, 19, 120, 2280),
(9, 2, 1, 25, 25),
(9, 3, 9, 25, 225),
(10, 2, 1, 65, 65),
(10, 3, 14, 65, 910),
(11, 1, 30, 35, 1050),
(11, 3, 39, 33.8462, 1320),
(12, 1, 10, 15, 150),
(12, 3, 59, 15, 885),
(13, 1, 20, 110, 2200),
(13, 3, 39, 114.872, 4480),
(14, 1, 50, 26, 1300),
(14, 3, 59, 25.8475, 1525),
(15, 1, 100, 70, 7000),
(15, 3, 114, 69.386, 7910),
(16, 1, 10, 35, 350),
(16, 3, 49, 34.0816, 1670),
(17, 1, 30, 18, 540),
(17, 3, 89, 16.0112, 1425),
(18, 2, 1, 34.0816, 34.0816),
(18, 3, 48, 34.0816, 1635.92),
(19, 2, 1, 16.0112, 16.0112),
(19, 3, 88, 16.0112, 1408.99),
(20, 2, 1, 114.872, 114.872),
(20, 3, 38, 114.872, 4365.13),
(21, 2, 1, 25.8475, 25.8475),
(21, 3, 58, 25.8475, 1499.15),
(22, 2, 1, 69.386, 69.386),
(22, 3, 113, 69.386, 7840.61),
(23, 2, 1, 16.0112, 16.0112),
(23, 3, 87, 16.0112, 1392.98),
(24, 2, 1, 34.0816, 34.0816),
(24, 3, 47, 34.0816, 1601.84),
(25, 2, 1, 114.872, 114.872),
(25, 3, 37, 114.872, 4250.26),
(26, 1, 100, 32, 3200),
(26, 3, 147, 32.6656, 4801.84),
(27, 1, 122, 200, 24400),
(27, 3, 209, 123.411, 25793),
(28, 1, 35, 54, 1890),
(28, 3, 72, 85.2813, 6140.26),
(29, 1, 30, 60, 900),
(30, 1, 50, 150, 7500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos_creditos`
--

CREATE TABLE IF NOT EXISTS `pagos_creditos` (
  `fecha_pago` date DEFAULT NULL,
  `numero_recibo` int(11) DEFAULT NULL,
  `saldo_anterior` float DEFAULT NULL,
  `pago` float DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `numero_factura` int(11) NOT NULL,
  UNIQUE KEY `numero_factura` (`numero_factura`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `codigo_proveedor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(255) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `celular` varchar(9) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo_proveedor`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`codigo_proveedor`, `nombre_proveedor`, `telefono`, `celular`, `direccion`) VALUES
(1, 'Inventario Inicial', '799877', '98837876', 'Bº San Juan Bautista'),
(2, 'Inventario Inicial Bodega', '42340000', '98837876', 'Bº El Paraizo'),
(16, 'Jose David Mayorga', '98866555', '6646464', 'Bº suyapa'),
(5, 'Jose David Mayorga Monge', '555555', '324324', 'Bº suyapa'),
(7, 'Jose Fernando Mayorga', '2342', '777777', 'B° Suyapa'),
(8, 'Tania Vanessa', '33333333', '11111111', 'B° Suyapa'),
(17, 'Tito Funez', '997979', '66666666', 'Bº El paraizo'),
(26, 'Otro Mas3', '99991221', '2321321', 'dfsafa'),
(27, 'otra consa', '321312', '2321', 'sdafsadfs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida_productos`
--

CREATE TABLE IF NOT EXISTS `salida_productos` (
  `no_documento` int(10) unsigned NOT NULL,
  `codigo_articulo` int(10) unsigned NOT NULL,
  `codigo_bodega` int(10) unsigned NOT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL,
  `codigo_salida` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codigo_salida`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_factura`
--

CREATE TABLE IF NOT EXISTS `tipo_factura` (
  `id_tipo_factura` int(11) NOT NULL,
  `tipo_factura` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_factura`
--

INSERT INTO `tipo_factura` (`id_tipo_factura`, `tipo_factura`) VALUES
(1, 'Contado'),
(2, 'Credito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movimiento_kardex`
--

CREATE TABLE IF NOT EXISTS `tipo_movimiento_kardex` (
  `codigo_tipo_moviemiento` int(11) NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_tipo_moviemiento`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipo_movimiento_kardex`
--

INSERT INTO `tipo_movimiento_kardex` (`codigo_tipo_moviemiento`, `movimiento`) VALUES
(1, 'Entrada'),
(2, 'Salida'),
(3, 'Saldos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE IF NOT EXISTS `tipo_pago` (
  `codigo_tipo_pago` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo_tipo_pago`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`codigo_tipo_pago`, `descripcion`) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_venta`
--

CREATE TABLE IF NOT EXISTS `tipo_venta` (
  `codigo` varchar(5) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(45) NOT NULL,
  `nombre_completo` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `permiso` varchar(255) DEFAULT NULL,
  `tipo_permiso` int(11) NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `nombre_completo`, `clave`, `permiso`, `tipo_permiso`) VALUES
('helen', 'Helen Patricia Paz', 'chinita2023pyd', 'administrador', 0),
('kelsy', 'Kelsy Elizabeth Sanchez Martinez', '1993', 'operador', 2),
('mayra', 'mayra alejandra rodriguez', '1994', 'operador', 0),
('rjose31', 'Reynaldo Cruz', '123', 'administrador', 1),
('ydiaz', 'adilia yessenia carcamo diaz', 'diaz2015', 'operador', 0),
('jose', 'Jose David Mayorga', '123', 'opereador', 2),
('mildred', 'Mildred Paz', 'mildredpaz', 'administrador', 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_articulos`
--
CREATE TABLE IF NOT EXISTS `v_articulos` (
`codigo_articulo` int(10) unsigned
,`articulo` varchar(255)
,`marca` varchar(145)
,`impuesto` double
,`codigo_marca` int(10) unsigned
,`codigo_impuesto` varchar(5)
,`precio_articulo` double(10,2)
,`tipo_articulo` int(11)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_articulo_codigo_barra`
--
CREATE TABLE IF NOT EXISTS `v_articulo_codigo_barra` (
`codigo_articulo` int(10) unsigned
,`articulo` varchar(255)
,`marca` varchar(145)
,`impuesto` double
,`codigo_marca` int(10) unsigned
,`codigo_impuesto` varchar(5)
,`precio_articulo` double(10,2)
,`tipo_articulo` int(11)
,`codigo_barra` varchar(150)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `v_cierre`
--

CREATE TABLE IF NOT EXISTS `v_cierre` (
  `factura_inicial` int(11) DEFAULT NULL,
  `factura_final` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `total_isv15` double(19,2) DEFAULT NULL,
  `total_isv18` double(19,2) DEFAULT NULL,
  `subtotal` double(19,2) DEFAULT NULL,
  `total` double(19,2) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_cierre_caja`
--
CREATE TABLE IF NOT EXISTS `v_cierre_caja` (
`fecha` varchar(19)
,`usuario` varchar(255)
,`factura_inicio` double
,`factura_ultima` bigint(11)
,`total_efectivo` double(19,2)
,`total_tarjeta` double(19,2)
,`total_isv15` double(19,2)
,`total_isv18` double(19,2)
,`total_credito` double(19,2)
,`total` double(19,2)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_contador final`
--
CREATE TABLE IF NOT EXISTS `v_contador final` (
`fecha1` date
,`fecha2` date
,`total_excentos` double
,`total_isv15` double
,`isv15` double
,`total_isv18` double
,`isv18` double
,`total` double
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_factura`
--
CREATE TABLE IF NOT EXISTS `v_detalle_factura` (
`numero_factura_detalle` int(11)
,`articulo` varchar(255)
,`precio_detalle` float
,`cantidad_detalle` float
,`impuesto_detalle` float
,`descuento_detalle` float
,`subtotal_detalle` float
,`total_detalle` varchar(255)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_detalle_factura_compra`
--
CREATE TABLE IF NOT EXISTS `v_detalle_factura_compra` (
`numero_compra_detalle` int(11)
,`articulo` varchar(255)
,`precio_detalle` float
,`cantidad_detalle` float
,`impuesto_detalle` float
,`subtotal_detalle` float
,`codigo_articulo` int(10) unsigned
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_encabezado_factura`
--
CREATE TABLE IF NOT EXISTS `v_encabezado_factura` (
`fecha1` date
,`fecha2` date
,`numero_factura` varchar(8)
,`fecha` varchar(10)
,`codigo_cliente` int(10) unsigned
,`nombre_cliente` varchar(255)
,`direccion` varchar(255)
,`telefono` varchar(9)
,`movil` varchar(9)
,`rtn` varchar(45)
,`subtotal` float(8,2)
,`impuesto` float(8,2)
,`total` float(10,2)
,`codigo` varchar(5)
,`estado_factura` varchar(25)
,`isv18` float(255,2)
,`usuario` varchar(255)
,`pago` float
,`descuento` varchar(255)
,`tipo_factura` varchar(50)
,`cambio` double
,`total_letras` varchar(500)
,`tipo_pago` varchar(255)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_encabezado_factura_compra`
--
CREATE TABLE IF NOT EXISTS `v_encabezado_factura_compra` (
`numero_compra` int(11)
,`no_factura_compra` varchar(100)
,`fecha` varchar(10)
,`codigo_proveedor` int(10) unsigned
,`nombre_proveedor` varchar(255)
,`direccion` varchar(255)
,`telefono` varchar(9)
,`celular` varchar(9)
,`subtotal` float(8,2)
,`impuesto` float(8,2)
,`total` float(10,2)
,`estado_factura` varchar(25)
,`isv18` float(255,2)
,`usuario` varchar(255)
,`pago` float
,`tipo_factura` varchar(50)
,`fecha_ingreso` varchar(10)
,`fecha_vencimiento` varchar(10)
,`agrega_kardex` int(10) unsigned
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_existencia`
--
CREATE TABLE IF NOT EXISTS `v_existencia` (
`codigo_bodega` varchar(5)
,`descripcion_bodega` varchar(255)
,`codigo_articulo` int(10) unsigned
,`articulo` varchar(255)
,`existencia` float
,`precio_articulo` double(10,2)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_factura`
--
CREATE TABLE IF NOT EXISTS `v_factura` (
`nombre_cliente` varchar(255)
,`numero_factura` int(11)
,`fecha` date
,`subtotal_Total` float(8,2)
,`Impuesto_Total` float(8,2)
,`total` float(10,2)
,`estado_factura` varchar(25)
,`isv18` float(255,2)
,`articulo` varchar(255)
,`precio` float
,`cantidad` float
,`impuesto` float
,`subtotal` float
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_kardex`
--
CREATE TABLE IF NOT EXISTS `v_kardex` (
`cod` int(11)
,`fecha` date
,`descripcion` varchar(255)
,`no_documento` varchar(255)
,`can_ingreso` double(255,0)
,`precio_ingreso` double
,`total_ingreso` double
,`can_salida` double(255,0)
,`precio_salida` double
,`total_salida` double
,`can_saldo` double(255,0)
,`precio_saldo` double
,`total_saldo` double
,`articulo` varchar(255)
,`descripcion_bodega` varchar(255)
,`cantidad_maxima` float
,`cantidad_minima` float
,`metodo` varchar(145)
,`codigo_bodega` varchar(5)
,`codigo_articulo` int(10) unsigned
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_reporte_contador`
--
CREATE TABLE IF NOT EXISTS `v_reporte_contador` (
`fecha` date
,`articulo` varchar(255)
,`porcentaje` double
,`subtotal` float
,`impuesto` float
,`total` varchar(255)
,`codigo_impuesto` varchar(5)
);
-- --------------------------------------------------------

--
-- Estructura para la vista `v_articulos`
--
DROP TABLE IF EXISTS `v_articulos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_articulos` AS select `articulo`.`codigo_articulo` AS `codigo_articulo`,`articulo`.`articulo` AS `articulo`,`marcas`.`descripcion` AS `marca`,`impuesto`.`porcentaje` AS `impuesto`,`marcas`.`codigo_marca` AS `codigo_marca`,`impuesto`.`codigo_impuesto` AS `codigo_impuesto`,`articulo`.`precio_articulo` AS `precio_articulo`,`articulo`.`tipo_articulo` AS `tipo_articulo` from ((`articulo` join `marcas` on((`marcas`.`codigo_marca` = `articulo`.`codigo_marca`))) join `impuesto` on((`impuesto`.`codigo_impuesto` = `articulo`.`codigo_impuesto`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_articulo_codigo_barra`
--
DROP TABLE IF EXISTS `v_articulo_codigo_barra`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_articulo_codigo_barra` AS select `articulo`.`codigo_articulo` AS `codigo_articulo`,`articulo`.`articulo` AS `articulo`,`marcas`.`descripcion` AS `marca`,`impuesto`.`porcentaje` AS `impuesto`,`marcas`.`codigo_marca` AS `codigo_marca`,`impuesto`.`codigo_impuesto` AS `codigo_impuesto`,`articulo`.`precio_articulo` AS `precio_articulo`,`articulo`.`tipo_articulo` AS `tipo_articulo`,`codigos_articulos`.`codigo_barra` AS `codigo_barra` from (((`articulo` join `marcas` on((`marcas`.`codigo_marca` = `articulo`.`codigo_marca`))) join `impuesto` on((`impuesto`.`codigo_impuesto` = `articulo`.`codigo_impuesto`))) join `codigos_articulos` on((`articulo`.`codigo_articulo` = `codigos_articulos`.`codigo_articulo`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_cierre_caja`
--
DROP TABLE IF EXISTS `v_cierre_caja`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_cierre_caja` AS select date_format(now(),'%d/%m/%Y %h:%i:%s') AS `fecha`,`encabezado_factura`.`usuario` AS `usuario`,((select `cierre_caja`.`factura_final` from `cierre_caja` order by `cierre_caja`.`idCierre` desc limit 1) + 1) AS `factura_inicio`,(select `encabezado_factura`.`numero_factura` from `encabezado_factura` order by `encabezado_factura`.`numero_factura` desc limit 1) AS `factura_ultima`,(select sum(`encabezado_factura`.`total`) AS `total_efectivo` from `encabezado_factura` where ((`encabezado_factura`.`tipo_factura` = 1) and (`encabezado_factura`.`estado_factura` = 'ACT') and (`encabezado_factura`.`numero_factura` > `factura_inicio`) and (`encabezado_factura`.`numero_factura` <= `factura_ultima`) and (`encabezado_factura`.`tipo_pago` = 1))) AS `total_efectivo`,(select sum(`encabezado_factura`.`total`) AS `total_efectivo` from `encabezado_factura` where ((`encabezado_factura`.`tipo_factura` = 1) and (`encabezado_factura`.`estado_factura` = 'ACT') and (`encabezado_factura`.`numero_factura` > `factura_inicio`) and (`encabezado_factura`.`numero_factura` <= `factura_ultima`) and (`encabezado_factura`.`tipo_pago` = 2))) AS `total_tarjeta`,(select sum(`encabezado_factura`.`impuesto`) AS `total_isv15` from `encabezado_factura` where ((`encabezado_factura`.`tipo_factura` = 1) and (`encabezado_factura`.`estado_factura` = 'ACT') and (`encabezado_factura`.`numero_factura` > `factura_inicio`) and (`encabezado_factura`.`numero_factura` <= `factura_ultima`))) AS `total_isv15`,(select sum(`encabezado_factura`.`isv18`) AS `total_isv18` from `encabezado_factura` where ((`encabezado_factura`.`tipo_factura` = 1) and (`encabezado_factura`.`estado_factura` = 'ACT') and (`encabezado_factura`.`numero_factura` > `factura_inicio`) and (`encabezado_factura`.`numero_factura` <= `factura_ultima`))) AS `total_isv18`,(select sum(`encabezado_factura`.`total`) AS `total_efectivo` from `encabezado_factura` where ((`encabezado_factura`.`tipo_factura` = 2) and (`encabezado_factura`.`estado_factura` = 'ACT') and (`encabezado_factura`.`numero_factura` > `factura_inicio`) and (`encabezado_factura`.`numero_factura` <= `factura_ultima`))) AS `total_credito`,(select sum(`encabezado_factura`.`total`) AS `total_efectivo` from `encabezado_factura` where ((`encabezado_factura`.`estado_factura` = 'ACT') and (`encabezado_factura`.`numero_factura` > `factura_inicio`) and (`encabezado_factura`.`numero_factura` <= `factura_ultima`))) AS `total` from `encabezado_factura` where ((`encabezado_factura`.`numero_factura` > (select `cierre_caja`.`factura_final` from `cierre_caja` order by `cierre_caja`.`idCierre` desc limit 1)) and (`encabezado_factura`.`numero_factura` <= (select `encabezado_factura`.`numero_factura` from `encabezado_factura` order by `encabezado_factura`.`numero_factura` desc limit 1))) limit 1;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_contador final`
--
DROP TABLE IF EXISTS `v_contador final`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_contador final` AS select distinct `v_reporte_contador`.`fecha` AS `fecha1`,`v_reporte_contador`.`fecha` AS `fecha2`,(select sum(`v_reporte_contador`.`total`) AS `excentos` from `v_reporte_contador` where ((`v_reporte_contador`.`fecha` = `fecha1`) and (`v_reporte_contador`.`codigo_impuesto` = 1))) AS `total_excentos`,(select sum(`v_reporte_contador`.`total`) AS `excentos` from `v_reporte_contador` where ((`v_reporte_contador`.`fecha` = `fecha1`) and (`v_reporte_contador`.`codigo_impuesto` = 2))) AS `total_isv15`,(select (`total_isv15` * 0.15)) AS `isv15`,(select sum(`v_reporte_contador`.`total`) AS `excentos` from `v_reporte_contador` where ((`v_reporte_contador`.`fecha` = `fecha1`) and (`v_reporte_contador`.`codigo_impuesto` = 3))) AS `total_isv18`,(select (`total_isv18` * 0.18)) AS `isv18`,(select sum(`v_reporte_contador`.`total`) AS `excentos` from `v_reporte_contador` where (`v_reporte_contador`.`fecha` = `fecha1`)) AS `total` from `v_reporte_contador`;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_factura`
--
DROP TABLE IF EXISTS `v_detalle_factura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_factura` AS select `detalle_factura`.`numero_factura` AS `numero_factura_detalle`,`articulo`.`articulo` AS `articulo`,`detalle_factura`.`precio` AS `precio_detalle`,`detalle_factura`.`cantidad` AS `cantidad_detalle`,`detalle_factura`.`impuesto` AS `impuesto_detalle`,`detalle_factura`.`descuento` AS `descuento_detalle`,`detalle_factura`.`subtotal` AS `subtotal_detalle`,`detalle_factura`.`total` AS `total_detalle` from (`detalle_factura` join `articulo` on((`articulo`.`codigo_articulo` = `detalle_factura`.`codigo_articulo`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_detalle_factura_compra`
--
DROP TABLE IF EXISTS `v_detalle_factura_compra`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detalle_factura_compra` AS select `detalle_factura_compra`.`numero_compra` AS `numero_compra_detalle`,`articulo`.`articulo` AS `articulo`,`detalle_factura_compra`.`precio` AS `precio_detalle`,`detalle_factura_compra`.`cantidad` AS `cantidad_detalle`,`detalle_factura_compra`.`impuesto` AS `impuesto_detalle`,`detalle_factura_compra`.`subtotal` AS `subtotal_detalle`,`detalle_factura_compra`.`codigo_articulo` AS `codigo_articulo` from (`detalle_factura_compra` join `articulo` on((`articulo`.`codigo_articulo` = `detalle_factura_compra`.`codigo_articulo`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_encabezado_factura`
--
DROP TABLE IF EXISTS `v_encabezado_factura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_encabezado_factura` AS select `encabezado_factura`.`fecha` AS `fecha1`,`encabezado_factura`.`fecha` AS `fecha2`,lpad(`encabezado_factura`.`numero_factura`,8,'0') AS `numero_factura`,date_format(`encabezado_factura`.`fecha`,'%d/%m/%Y') AS `fecha`,`cliente`.`codigo_cliente` AS `codigo_cliente`,`cliente`.`nombre_cliente` AS `nombre_cliente`,`cliente`.`direccion` AS `direccion`,`cliente`.`telefono` AS `telefono`,`cliente`.`movil` AS `movil`,`cliente`.`rtn` AS `rtn`,`encabezado_factura`.`subtotal` AS `subtotal`,`encabezado_factura`.`impuesto` AS `impuesto`,`encabezado_factura`.`total` AS `total`,`encabezado_factura`.`codigo` AS `codigo`,`encabezado_factura`.`estado_factura` AS `estado_factura`,`encabezado_factura`.`isv18` AS `isv18`,`encabezado_factura`.`usuario` AS `usuario`,`encabezado_factura`.`pago` AS `pago`,`encabezado_factura`.`descuento` AS `descuento`,`tipo_factura`.`tipo_factura` AS `tipo_factura`,(`encabezado_factura`.`pago` - `encabezado_factura`.`total`) AS `cambio`,`encabezado_factura`.`total_letras` AS `total_letras`,`tipo_pago`.`descripcion` AS `tipo_pago` from (((`encabezado_factura` join `cliente` on((`cliente`.`codigo_cliente` = `encabezado_factura`.`codigo_cliente`))) join `tipo_factura` on((`tipo_factura`.`id_tipo_factura` = `encabezado_factura`.`tipo_factura`))) join `tipo_pago` on((`encabezado_factura`.`tipo_pago` = `tipo_pago`.`codigo_tipo_pago`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_encabezado_factura_compra`
--
DROP TABLE IF EXISTS `v_encabezado_factura_compra`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_encabezado_factura_compra` AS select `encabezado_factura_compra`.`numero_compra` AS `numero_compra`,`encabezado_factura_compra`.`no_factura_compra` AS `no_factura_compra`,date_format(`encabezado_factura_compra`.`fecha`,'%d/%m/%Y') AS `fecha`,`proveedor`.`codigo_proveedor` AS `codigo_proveedor`,`proveedor`.`nombre_proveedor` AS `nombre_proveedor`,`proveedor`.`direccion` AS `direccion`,`proveedor`.`telefono` AS `telefono`,`proveedor`.`celular` AS `celular`,`encabezado_factura_compra`.`subtotal` AS `subtotal`,`encabezado_factura_compra`.`impuesto` AS `impuesto`,`encabezado_factura_compra`.`total` AS `total`,`encabezado_factura_compra`.`estado_factura` AS `estado_factura`,`encabezado_factura_compra`.`isv18` AS `isv18`,`encabezado_factura_compra`.`usuario` AS `usuario`,`encabezado_factura_compra`.`pago` AS `pago`,`tipo_factura`.`tipo_factura` AS `tipo_factura`,date_format(`encabezado_factura_compra`.`fecha_ingreso`,'%d/%m/%Y') AS `fecha_ingreso`,date_format(`encabezado_factura_compra`.`fecha_vencimiento`,'%d/%m/%Y') AS `fecha_vencimiento`,`encabezado_factura_compra`.`agrega_kardex` AS `agrega_kardex` from ((`encabezado_factura_compra` join `proveedor` on((`proveedor`.`codigo_proveedor` = `encabezado_factura_compra`.`codigo_proveedor`))) join `tipo_factura` on((`tipo_factura`.`id_tipo_factura` = `encabezado_factura_compra`.`tipo_factura`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_existencia`
--
DROP TABLE IF EXISTS `v_existencia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_existencia` AS select `bodega`.`codigo_bodega` AS `codigo_bodega`,`bodega`.`descripcion_bodega` AS `descripcion_bodega`,`articulo`.`codigo_articulo` AS `codigo_articulo`,`articulo`.`articulo` AS `articulo`,`articulo_bodega`.`existencia` AS `existencia`,`articulo`.`precio_articulo` AS `precio_articulo` from ((`articulo_bodega` join `articulo` on((`articulo`.`codigo_articulo` = `articulo_bodega`.`codigo_articulo`))) join `bodega` on((`bodega`.`codigo_bodega` = `articulo_bodega`.`codigo_bodega`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_factura`
--
DROP TABLE IF EXISTS `v_factura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_factura` AS select `cliente`.`nombre_cliente` AS `nombre_cliente`,`encabezado_factura`.`numero_factura` AS `numero_factura`,`encabezado_factura`.`fecha` AS `fecha`,`encabezado_factura`.`subtotal` AS `subtotal_Total`,`encabezado_factura`.`impuesto` AS `Impuesto_Total`,`encabezado_factura`.`total` AS `total`,`encabezado_factura`.`estado_factura` AS `estado_factura`,`encabezado_factura`.`isv18` AS `isv18`,`articulo`.`articulo` AS `articulo`,`detalle_factura`.`precio` AS `precio`,`detalle_factura`.`cantidad` AS `cantidad`,`detalle_factura`.`impuesto` AS `impuesto`,`detalle_factura`.`subtotal` AS `subtotal` from (((`articulo` join `detalle_factura` on((`detalle_factura`.`codigo_articulo` = `articulo`.`codigo_articulo`))) join `encabezado_factura` on((`encabezado_factura`.`numero_factura` = `detalle_factura`.`numero_factura`))) join `cliente` on((`encabezado_factura`.`codigo_cliente` = `cliente`.`codigo_cliente`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_kardex`
--
DROP TABLE IF EXISTS `v_kardex`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kardex` AS select distinct `detalle_movimiento_kardex`.`codigo_movimiento` AS `cod`,`detalle_movimiento_kardex`.`fecha` AS `fecha`,`detalle_movimiento_kardex`.`descripcion` AS `descripcion`,`detalle_movimiento_kardex`.`no_documento` AS `no_documento`,(select `movimiento_kardex`.`cantidad` from `movimiento_kardex` where ((`movimiento_kardex`.`codigo_movimiento` = `cod`) and (`movimiento_kardex`.`codigo_tipo_movimiento` = 1))) AS `can_ingreso`,(select `movimiento_kardex`.`precio_unidad` from `movimiento_kardex` where ((`movimiento_kardex`.`codigo_movimiento` = `cod`) and (`movimiento_kardex`.`codigo_tipo_movimiento` = 1))) AS `precio_ingreso`,(select `movimiento_kardex`.`total` from `movimiento_kardex` where ((`movimiento_kardex`.`codigo_movimiento` = `cod`) and (`movimiento_kardex`.`codigo_tipo_movimiento` = 1))) AS `total_ingreso`,(select `movimiento_kardex`.`cantidad` from `movimiento_kardex` where ((`movimiento_kardex`.`codigo_movimiento` = `cod`) and (`movimiento_kardex`.`codigo_tipo_movimiento` = 2))) AS `can_salida`,(select `movimiento_kardex`.`precio_unidad` from `movimiento_kardex` where ((`movimiento_kardex`.`codigo_movimiento` = `cod`) and (`movimiento_kardex`.`codigo_tipo_movimiento` = 2))) AS `precio_salida`,(select `movimiento_kardex`.`total` from `movimiento_kardex` where ((`movimiento_kardex`.`codigo_movimiento` = `cod`) and (`movimiento_kardex`.`codigo_tipo_movimiento` = 2))) AS `total_salida`,(select `movimiento_kardex`.`cantidad` from `movimiento_kardex` where ((`movimiento_kardex`.`codigo_movimiento` = `cod`) and (`movimiento_kardex`.`codigo_tipo_movimiento` = 3))) AS `can_saldo`,(select `movimiento_kardex`.`precio_unidad` from `movimiento_kardex` where ((`movimiento_kardex`.`codigo_movimiento` = `cod`) and (`movimiento_kardex`.`codigo_tipo_movimiento` = 3))) AS `precio_saldo`,(select `movimiento_kardex`.`total` from `movimiento_kardex` where ((`movimiento_kardex`.`codigo_movimiento` = `cod`) and (`movimiento_kardex`.`codigo_tipo_movimiento` = 3))) AS `total_saldo`,`articulo`.`articulo` AS `articulo`,`bodega`.`descripcion_bodega` AS `descripcion_bodega`,`articulo_kardex`.`cantidad_maxima` AS `cantidad_maxima`,`articulo_kardex`.`cantidad_minima` AS `cantidad_minima`,`articulo_kardex`.`metodo` AS `metodo`,`bodega`.`codigo_bodega` AS `codigo_bodega`,`articulo`.`codigo_articulo` AS `codigo_articulo` from ((((`articulo_kardex` join `detalle_movimiento_kardex` on((`articulo_kardex`.`codigo_kardex` = `detalle_movimiento_kardex`.`codigo_kardex`))) join `movimiento_kardex` on((`detalle_movimiento_kardex`.`codigo_movimiento` = `movimiento_kardex`.`codigo_movimiento`))) join `articulo` on((`articulo_kardex`.`codigo_articulo` = `articulo`.`codigo_articulo`))) join `bodega` on((`articulo_kardex`.`codigo_bodega` = `bodega`.`codigo_bodega`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_reporte_contador`
--
DROP TABLE IF EXISTS `v_reporte_contador`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_reporte_contador` AS select `encabezado_factura`.`fecha` AS `fecha`,`articulo`.`articulo` AS `articulo`,`impuesto`.`porcentaje` AS `porcentaje`,`detalle_factura`.`subtotal` AS `subtotal`,`detalle_factura`.`impuesto` AS `impuesto`,`detalle_factura`.`total` AS `total`,`impuesto`.`codigo_impuesto` AS `codigo_impuesto` from (((`detalle_factura` join `encabezado_factura` on((`detalle_factura`.`numero_factura` = `encabezado_factura`.`numero_factura`))) join `articulo` on((`articulo`.`codigo_articulo` = `detalle_factura`.`codigo_articulo`))) join `impuesto` on((`articulo`.`codigo_impuesto` = `impuesto`.`codigo_impuesto`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
