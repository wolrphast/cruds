-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2023 a las 22:21:39
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `computer`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `estado_categoria` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `categoria`, `estado_categoria`) VALUES
(1, 'Perifericos', 1),
(2, 'Gabinetes', 1),
(3, 'Disipadores de Calor', 1),
(4, 'Discos Duros', 1),
(5, 'Discos SSD  MV.2', 1),
(6, 'Memorias RAM', 1),
(7, 'Fuentes de Poder', 1),
(8, 'Tarjetas Madre', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `tipo_documento` varchar(50) NOT NULL,
  `numero_documento` int(12) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contrasenia` varchar(50) NOT NULL,
  `token` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `imagen`, `nombre`, `apellido`, `tipo_documento`, `numero_documento`, `direccion`, `telefono`, `email`, `contrasenia`, `token`, `estado`) VALUES
(1, 'gato.jpeg', 'Usuario', 'Prueba', 'Cédula de Extranjeria', 258201201, 'Torre Norte SENA', '573024650490', 'usuario@gmail.com', 'Usuario12345', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_orden`
--

CREATE TABLE `detalle_orden` (
  `id_detalle_orden` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `id_orden` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_venta` int(11) NOT NULL,
  `precio_producto` float(12,2) DEFAULT NULL,
  `monto_total` float(12,2) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `extra` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagenes` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `url` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id_imagenes`, `producto_id`, `url`) VALUES
(1, 1, 'periferico1-1.webp'),
(2, 1, 'periferico1-2.webp'),
(3, 1, 'periferico1-3.webp'),
(4, 1, 'periferico1-4.webp'),
(5, 2, 'periferico2-1.jpg'),
(6, 2, 'periferico2-2.webp'),
(7, 2, 'periferico2-3.webp'),
(8, 3, 'periferico3-1.webp'),
(9, 3, 'periferico3-2.webp'),
(10, 4, 'periferico4-1.webp'),
(11, 4, 'periferico4-2.webp'),
(12, 4, 'periferico4-3.webp'),
(13, 5, 'periferico5-1.webp'),
(14, 5, 'periferico5-2.webp'),
(15, 5, 'periferico5-3.webp'),
(16, 5, 'periferico5-4.webp'),
(17, 6, 'periferico6-1.jpg'),
(18, 6, 'periferico6-2.jpg'),
(19, 6, 'periferico6-3.jpg'),
(20, 7, 'gabinete1-1.png'),
(21, 7, 'gabinete1-2.webp'),
(22, 8, 'gabinete2-1.png'),
(23, 8, 'gabinete2-2.png'),
(24, 8, 'gabinete2-3.png'),
(25, 9, 'gabinete3-1.webp'),
(26, 9, 'gabinete3-2.webp'),
(27, 9, 'gabinete3-3.webp'),
(28, 10, 'gabinete4-1.webp'),
(29, 10, 'gabinete4-2.webp'),
(30, 10, 'gabinete4-3.webp'),
(31, 11, 'gabinete5-1.webp'),
(32, 11, 'gabinete5-2.webp'),
(33, 11, 'gabinete5-3.webp'),
(34, 12, 'gabinete6-1.webp'),
(35, 12, 'gabinete6-2.webp'),
(36, 13, 'disipador1-1.webp'),
(37, 13, 'disipador1-2.webp'),
(38, 13, 'disipador1-3.webp'),
(39, 14, 'disipador2-1.webp'),
(40, 14, 'disipador2-2.webp'),
(41, 14, 'disipador2-3.webp'),
(42, 15, 'disipador3-1.webp'),
(43, 15, 'disipador3-2.webp'),
(44, 15, 'disipador3-3.webp'),
(45, 16, 'disipador4-1.webp'),
(46, 16, 'disipador4-2.webp'),
(47, 16, 'disipador4-3.webp'),
(48, 17, 'disipador5-1.webp'),
(49, 17, 'disipador5-2.webp'),
(50, 17, 'disipador5-3.webp'),
(51, 18, 'disipador6-1.webp'),
(52, 18, 'disipador6-2.webp'),
(53, 18, 'disipador6-3.webp'),
(54, 19, 'duro1-1.webp'),
(55, 19, 'duro1-2.webp'),
(56, 19, 'duro1-3.webp'),
(57, 20, 'duro2-1.webp'),
(58, 20, 'duro2-2.webp'),
(59, 21, 'duro3-1.webp'),
(60, 21, 'duro3-2.webp'),
(61, 22, 'duro4-1.webp'),
(62, 22, 'duro4-2.webp'),
(63, 23, 'duro5-1.webp'),
(64, 23, 'duro5-2.webp'),
(65, 24, 'duro6-1.webp'),
(66, 24, 'duro6-2.webp'),
(67, 25, 'solido1-1.webp'),
(68, 25, 'solido1-2.webp'),
(69, 26, 'solido2-1.webp'),
(70, 26, 'solido2-2.webp'),
(71, 27, 'solido3-1.webp'),
(72, 27, 'solido3-2.webp'),
(73, 28, 'solido4-1.webp'),
(74, 28, 'solido4-2.webp'),
(75, 29, 'solido5-1.webp'),
(76, 29, 'solido5-2.webp'),
(77, 30, 'solido6-1.webp'),
(78, 30, 'solido6-2.webp'),
(79, 31, 'ram1-1.jpg'),
(80, 31, 'ram1-2.jpg'),
(81, 32, 'ram2-1.webp'),
(82, 32, 'ram2-2.webp'),
(83, 33, 'ram3-1.webp'),
(84, 33, 'ram3-2.jpg'),
(85, 34, 'ram4-1.webp'),
(86, 34, 'ram4-2.jpeg'),
(87, 35, 'ram5-1.webp'),
(88, 35, 'ram5-2.jpg'),
(89, 36, 'ram6-1.webp'),
(90, 36, 'ram6-2.jpg'),
(91, 37, 'fuente1-1.webp'),
(92, 37, 'fuente1-2.webp'),
(93, 38, 'fuente2-1.webp'),
(94, 38, 'fuente2-2.webp'),
(95, 39, 'fuente3-1.webp'),
(96, 39, 'fuente3-2.webp'),
(97, 40, 'fuente4-1.webp'),
(98, 40, 'fuente4-2.webp'),
(99, 41, 'fuente5-1.webp'),
(100, 41, 'fuente5-2.webp'),
(101, 42, 'fuente6-1.webp'),
(102, 42, 'fuente6-2.webp'),
(103, 43, 'board1-1.webp'),
(104, 43, 'board1-2.webp'),
(105, 44, 'board2-1.jpg'),
(106, 44, 'board2-2.jpg'),
(107, 45, 'board3-1.jpg'),
(108, 45, 'board3-2.jpg'),
(109, 46, 'board4-1.jpg'),
(110, 46, 'board4-2.jpg'),
(111, 47, 'board5-1.webp'),
(112, 47, 'board5-2.png'),
(113, 48, 'board6-1.jpg'),
(114, 48, 'board6-2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `estado_marca` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `marca`, `estado_marca`) VALUES
(1, 'LG', 1),
(2, 'AOC', 1),
(3, 'HyperX', 1),
(4, 'Logitech', 1),
(5, 'MSI', 1),
(6, 'Intel ASUS', 1),
(7, 'Gaming', 1),
(8, 'Kingston', 1),
(9, 'Western', 1),
(10, 'Crucial', 1),
(11, 'Adata', 1),
(12, 'Samsung', 1),
(13, 'Intel & AMD', 1),
(14, 'H', 1),
(15, 'Coolmoon Fancooler', 1),
(16, 'Iceberg', 1),
(17, 'Thermaltake ', 1),
(18, 'GameMax ', 1),
(19, 'ATX', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `id_orden` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `total` float(12,2) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `condicion` tinyint(1) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `serial` varchar(12) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `descripcion_breve` text NOT NULL,
  `descripcion` text NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` float(12,2) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `estado_producto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `serial`, `producto`, `descripcion_breve`, `descripcion`, `cantidad`, `precio`, `id_categoria`, `id_marca`, `estado_producto`) VALUES
(1, 'A123456789', 'Monitor LG de 27 pulgadas', 'Monitor con tecnología LG para un alto rendimiento y mejor calidad visual y auditiva.', 'Pantalla led de 27\".\r\nTiene una resolución de 1920px-1080px.\r\nRelación de aspecto de 16:9.\r\nPanel IPS.\r\nSu brillo es de 250cd/m².\r\nTipos de conexión: 2 HDMI 1.4, DisplayPort 1.2, VGA, Jack 3.5 mm.\r\nEs giratorio y reclinable.\r\nComodidad visual en todo momento.', 50, 1455000.00, 1, 1, 1),
(2, 'A123456788', 'Monitor AOC 24 pulgadas', 'Monitor AOC Full HD sin marco y con control de sonido envolvente y con dos puertos HDMI y 1 USB.', 'Pantalla LCD de 23.8\".\r\nTiene una resolución de 1920px-1080px.\r\nRelación de aspecto de 16:9.\r\nPanel IPS.\r\nSu brillo es de 250cd/m².\r\nTipos de conexión: HDMI 1.4, VGA/D-Sub, Jack 3.5 mm.', 50, 871900.00, 1, 2, 1),
(3, 'A123456787', 'Teclado Mecanico HyperX Alloy Origins 65', 'Teclado Gamer con retroalimentación compatible con consolas.', 'Consolas de juegos compatibles: ps5 y ps4 y xbox series x|s y xbox one.\r\nFunción antighosting incorporada.\r\nTipo de teclado: mecánico.\r\nTecla cilíndrica.\r\nCon conector USB.\r\nCon cable removible.\r\nMedidas: 315.06mm de ancho, 105.5mm de alto y 36.94mm de profundidad.\r\nIndispensable para tus actividades.\r\nLas imágenes pueden ser ilustrativas.', 50, 455000.00, 1, 3, 1),
(4, 'A123456786', 'Teclado gamer HyperX Alloy Elite 2', 'Teclado con retroalimentación disponible para jugar en distintas consolas.', 'Consolas de juegos compatibles: ps5, ps4, xbox series xis y xbox one.\r\nContiene teclado numérico.\r\nFunción antighosting incorporada.\r\nCon conector USB 2.0.', 50, 620000.00, 1, 3, 1),
(5, 'A123456785', 'Mouse de juego Logitech G Series Hero G502 negro', 'Mouse Gamer para alto desempeño con 11 botones.', 'Utiliza cable.\r\nPosee rueda de desplazamiento.\r\nCon luces para mejorar la experiencia de uso.\r\nCon sensor óptico.\r\nResolución de 25600dpi.\r\nControl inteligente y navegación fácil.', 50, 270000.00, 1, 4, 1),
(6, 'A123456784', 'Mouse logitech G203', 'Mouse con capacidad inalámbrica y USB, para mayor comodidad en el trabajo con sensor de movimiento.', 'Logitech G203\r\nMouse cableado.\r\nSensor de 8.000 DPI.\r\nRGB Lightsync personalizable y vibrante.\r\nSeis botones.', 50, 200000.00, 1, 4, 1),
(7, 'B345169824', 'Gabinete Iceberg Turbo Z8 Con 5 Ventiladores Incluidos', 'Gabinete de diseño futurista con un chasis reforzado y una gran cantidad de ventiladores para un enfriar.', 'Marca:Iceberg.\r\nLínea: Turbo.\r\nModelo: Z8.\r\nIncluye fuente de alimentación: No.\r\nTipo de estructura: Mid tower.\r\nPuertos: USB 3.0.\r\nBahías: 3.5 in.\r\nAltura x Ancho x Largo: 410 mm x 192 mm x 405 mm', 30, 300000.00, 2, 16, 1),
(8, 'B241635984', 'Gabinete Gamer Rgb Iceberg Flux Pro Vidrio Fan 120mm', 'Gabinete con mejoras considerables en el flujo de aire, iluminación RGB y mayor espacio para los componentes.', 'Marca: Iceberg.\r\nLínea: Flux.\r\nModelo: Flux Pro.\r\nIncluye fuente de alimentación: No\r\nTipo de estructura: Mid tower.\r\nPuertos: USB 3.0.\r\nBahías: 3.5 in.\r\nAltura x Ancho x Largo: 435 mm x 190 mm x 390 mm.\r\nEs gamer: Sí', 30, 240000.00, 2, 16, 1),
(9, 'B985213645', 'Gabinete Iceberg Gear V6 Plus Vidrio Templado 3 Fan Led', 'Gabinete con Vidrio templado y con tres ventiladores de 120mm 1X sin LED y 2X Rainbow LED.', 'Marca: Iceberg.\r\nLínea: Gear.\r\nModelo: Gear V6 Plus.\r\nIncluye fuente de alimentación: No.\r\nTipo de estructura: Mid tower.\r\nPuertos: USB 3.0.\r\nBahías: 3.5 in.\r\nAltura x Ancho x Largo: 350 mm x 180 mm x 420 mm.\r\nEs gamer: Sí', 30, 210000.00, 2, 16, 1),
(10, 'B320152049', 'Gabinete Iceberg Gear V6 Vidrio Templado Ventilador 120', 'Gabinete Gamer con Vidrio templado y un ventilador sin LED.', 'Marca: Iceberg.\r\nLínea: Gear.\r\nModelo Gear V6.\r\nNo incluye fuente de alimentación.\r\nTipo de estructura: Mid Tower.\r\nPuertos: USB 3.0\r\nBahías: 3.5 in.\r\nAltura x Ancho x Largo: 350 mm x 180 mm x 420 mm', 30, 180000.00, 2, 16, 1),
(11, 'B002396154', 'Gabinete Caja Gamer Iceberg Gear V5 Ventilador 120mm', 'Gabinete Gamer con Vidrio templado y sin luces, con 3 ventiladores.', 'Marca: Iceberg.\r\nLínea: Gear.\r\nModelo: V5.\r\nIncluye fuente de alimentación: No.\r\nTipo de estructura: Mid tower.\r\nPuertos: USB 3.0.\r\nBahías: 3.5 in.\r\nAltura x Ancho x Largo: 420 mm x 185 mm x 390 mm.\r\nEs gamer: Sí', 30, 170000.00, 2, 16, 1),
(12, 'B326519801', 'Gabinete Atx Iceberg Glacius V2 Negra Vidrio Templado', 'Gabinete Gamer con Vidrio templado, capacidad de un ventilador.', 'Marca: Iceberg.\r\nLínea: Glacius.\r\nModelo: Glacius V2 Negro.\r\nIncluye fuente de alimentación: No.\r\nTipo de estructura: Mid tower.\r\nPuertos: USB 2.0 x 2 + USB 3.0 x 1 + HD Audio.\r\nBahías: 3 x 2.5” / 1 x 3.5”.\r\nPotencia de la fuente de alimentación: 0 W.\r\nAltura x Ancho x Largo: 410 mm x 192 mm x 405 mm.\r\nEs gamer: Sí', 30, 250000.00, 2, 16, 1),
(13, 'C210364259', 'Disipador Por Aire Cpu Intel Amd - Jonsbo Cr1400 92mm 130w', 'Enfriador de aire de CPU en forma de torre con retroalimentación y alta capcadidad de enfriamiento.', 'Marca: Jonsbo.\r\nLínea: JonsboDesign.\r\nModelo: CR-1400.\r\nTipo de cooler: Air cooling.\r\nTamaño del ventilador: 92 mm.\r\nEs gamer: Sí.\r\nComponente compatible: CPU.', 30, 170000.00, 3, 13, 1),
(14, 'C412657841', 'Disipador Para Intel Y Amd 120 Alseye H120d', 'Refrigeración liquida ALSEYE H120 con retroalimentación y enfriador a base de líquidos.', 'Marca: Alseye.\r\nLínea: Reactor.\r\nModelo: 120.\r\nTipo de cooler: Air cooling.\r\nTamaño del ventilador: 120 mm.\r\nEs gamer: Sí', 30, 220000.00, 3, 13, 1),
(15, 'C523610023', 'Disipador Para Procesador H120d Blanco', 'CPU cooler de gran rendimiento, bonito a la vista y silencioso. Incluye 1g de pasta térmica. 6 Heat Pipes', 'Marca: Alseye.\r\nLínea: Halo.\r\nModelo: H120D White.\r\nTipo de cooler: Air cooling.\r\nTamaño del ventilador: 120 mm.\r\nEs gamer: Sí', 30, 175000.00, 3, 14, 1),
(16, 'C951357824', 'Fuente Refrigeración Liquida Coolmoon Fancooler Rgb Pc 120mm', 'Cuenta con lámpara LED de colores integradas y efectos de iluminación RGB.', 'Marca: COOLMOON.\r\nLínea: Liquid Cpu Cooler.\r\nModelo: COLD MOON AR120.\r\nTipo de cooler: Water cooling.\r\nTamaño del ventilador: 120 mm.\r\nEs gamer: Sí.\r\nComponente compatible: CPU', 30, 200000.00, 3, 15, 1),
(17, 'C642891375', 'Fuente Refrigeración Liquida Coolmoon Fancooler Rgb Pc 240mm', 'Potente sistema de alimentación, con un sistema de circulación de agua ultra rápido.', 'Marca: COOLMOON.\r\nLínea: Liquid Cpu Cooler.\r\nModelo:COLD MOON AR240.\r\nEs gamer: Sí', 30, 300000.00, 3, 15, 1),
(18, 'C026875321', 'Refrigeración Líquida 360 Alseye H360', 'Potente refrigerador de 3 ventiladores con sistema de refrigeracón ultra rápida', 'Marca: Alseye.\r\nLínea: Halo.Modelo: H360.\r\nTipo de cooler: Water cooling.\r\nTamaño del ventilador: 120 mm.\r\nEs gamer: Sí', 30, 406000.00, 3, 14, 1),
(19, 'D023153462', 'Disco Duro SSD interno Kingston SA400S37/240G 240GB negro', 'La unidad de Kingston de estado sólido ofrece enormes mejoras en la velocidad de respuesta.', 'Con tecnología 3D NAND.\r\nÚtil para guardar programas y documentos con su capacidad de 240 GB.\r\nResistente a fuertes golpes.\r\nTamaño de 2.5 \".\r\nInterfaz de conexión: SATA III.\r\nApto para PC y Notebook.', 40, 120000.00, 4, 8, 1),
(20, 'D789654120', 'Disco Duro SSD interno Western Digital WD Green WDS480G2G0A 480GB verde', 'Está adaptado para que puedas acceder de forma rápida a tus documentos digitales.', 'Útil para guardar programas y documentos con su capacidad de 480 GB.\r\nResistente a fuertes golpes.\r\nTamaño de 2.5 \".\r\nEs compatible con Windows.\r\nInterfaz de conexión: SATA III.\r\nApto para PC y Notebook.', 40, 230000.00, 4, 9, 1),
(21, 'D321456820', 'Disco Duro SSD interno Crucial CT240BX500SSD1 240GB negro', 'Con este disco Duro de Crucial podrás acelerar la carga de archivos en tu computadora.', 'Con tecnología 3D NAND.\r\nÚtil para guardar programas y documentos con su capacidad de 240 GB.\r\nTamaño de 2.5 \".\r\nInterfaz de conexión: SATA III.\r\nApto para PC y Notebook.\r\nIncrementa el rendimiento de tu equipo.', 40, 120000.00, 4, 10, 1),
(22, 'D203152684', 'Disco Duro 500gb Wd / Segate', 'Su funcionalidad y soporte, la importancia de los discos de almacenamiento también radica en su calidad, resistencia y velocidad.', 'Útil para guardar programas y documentos con su capacidad de 500 gb.\r\nTamaño de 3.5 \".\r\nEs compatible con Windows, MacOS.\r\nInterfaz de conexión: SATA III.\r\nApto para DVR y NVR.\r\nIncrementa el rendimiento de tu equipo.', 40, 110000.00, 4, 9, 1),
(23, 'D205316248', 'Disco Duro interno Western Digital WD Purple WD20PURZ 2TB', 'Este producto posee una interfaz SATA III que se encarga de transferir datos con la placa madre de tu computadora.', 'Útil para guardar programas y documentos con su capacidad de2 TB.\r\nTamaño de 3.5 \".\r\nEs compatible con Windows, MacOS.\r\nInterfaz de conexión: SATA III.\r\nApto para DVR y NVR.\r\nIncrementa el rendimiento de tu equipo.', 40, 300000.00, 4, 9, 1),
(24, 'D320564125', 'Disco Duro interno Western Digital WD Purple WD10PURZ 1TB púrpura', 'Es de gran importancia y con su velocidad de envío de información mejora el rendimiento.', 'Útil para guardar programas y documentos con su capacidad de 1 TB.\r\nTamaño de 3.5 \".\r\nInterfaz de conexión: SATA III.\r\nApto para NVR y PC y DVR.\r\nIncrementa el rendimiento de tu equipo.', 40, 210000.00, 4, 9, 1),
(25, 'E258852013', 'Disco sólido SSD interno Kingston NV1 SNVS/250G 250GB', 'Este disco transfiere datos a través de una interfaz NVMe Gen 3.0, PCIe, lo que te brindará trasmitir una mayor cantidad de información de una sola vez.', 'Útil para guardar programas y documentos con su capacidad de 250 GB.\r\nMás espacio en tu PC con su factor de forma M.2 2280.\r\nInterfaces de conexión: NVMe Gen 3.0 y PCIe.\r\nApto para PC y Notebook.\r\nIncrementa el rendimiento de tu equipo.', 50, 145000.00, 5, 8, 1),
(26, 'E203614520', 'Disco sólido SSD interno Samsung 980 MZ-V8V500BW 500GB', 'Ha llegado el momento de maximizar el potencial de tu PC con el nuevo 980. Tanto como si necesitas un impulso en tus juegos como un un flujo de trabajo fluido.', 'Disipador de calor integrado.\r\nÚtil para guardar programas y documentos con su capacidad de 500 GB.\r\nMás espacio en tu PC con su factor de forma M.2 2280.\r\nInterfaces de conexión: NVMe 1.4 y PCIe Gen3x4.\r\nApto para PC.\r\nIncrementa el rendimiento de tu equipo.', 50, 300000.00, 5, 12, 1),
(27, 'E951852465', 'Disco sólido SSD interno Crucial CT500P2SSD8 500GB', 'Con la unidad en estado sólido Crucial incrementarás la capacidad de respuesta de tu equipo. Gracias a esta tecnología podrás invertir en velocidad y eficiencia.', 'Útil para guardar programas y documentos con su capacidad de 500 GB.\r\nMás espacio en tu PC con su factor de forma M.2 2280.\r\nInterfaz de conexión: PCIe 3.0.\r\nApto para PC y Notebook.\r\nIncrementa el rendimiento de tu equipo.', 50, 245000.00, 5, 10, 1),
(28, 'E025413628', 'Disco sólido SSD interno Adata Ultimate SU650 ASU650NS38-120GT-C 120GB', 'Ofrece un rendimiento de lectura/escritura de hasta 520/450MB/s y mayor fiabilidad.', 'Con tecnología 3D NAND.\r\nÚtil para guardar programas y documentos con su capacidad de 120 GB.\r\nMás espacio en tu PC con su factor de forma M.2 2280.\r\nInterfaz de conexión: SATA III.\r\nApto para PC y Notebook.\r\nIncrementa el rendimiento de tu equipo.', 50, 130000.00, 5, 11, 1),
(29, 'E201305216', 'Disco sólido SSD interno Adata Ultimate SU800 ASU800NS38-256GT-C 256GB', 'Velocidad 3D NAND Flash de lectura escritura de 560mb / sy 520mb / s para acelerar Algoritmo de caché SLC.', 'Con tecnología 3D NAND.\r\nÚtil para guardar programas y documentos con su capacidad de 256 GB.\r\nMás espacio en tu PC con su factor de forma M.2 2280.\r\nInterfaz de conexión: SATA III.\r\nApto para PC y Notebook.\r\nIncrementa el rendimiento de tu equipo.', 50, 340000.00, 5, 11, 1),
(30, 'E984656014', 'Disco sólido SSD interno XPG Spectrix S40G AS40G-256GT-C 256GB', 'Con la unidad en estado sólido XPG incrementarás la capacidad de respuesta de tu equipo.', 'Disipador de calor integrado.\r\nCon tecnología 3D NAND.\r\nÚtil para guardar programas y documentos con su capacidad de 256 GB.\r\nMás espacio en tu PC con su factor de forma M.2 2280.\r\nInterfaces de conexión: PCIe 3.0 y NVMe 1.3.\r\nApto para PC.\r\nIncrementa el rendimiento de tu equipo.', 50, 211000.00, 5, 11, 1),
(31, 'F123456789', 'Memoria RAM 4GB DDR3 DDR3L', '4 GB de RAM con tecnología DDR3 DDR3L para equipos de oficina.', 'Marca: Crucial.\r\nCapacidad: 4GB,8GB.\r\nTipo: DDR3 DDR3L.\r\nNúmero de pines: DDR3 204pins.\r\nTipo de equipo compatible: Portatil.', 100, 70000.00, 6, 10, 1),
(32, 'F123456788', 'Memoria RAM 8GB DDR3 SDRAM', '8 GB de RAM con tecnología DDR3 SDRAM.', 'Optimiza el rendimiento de tu máquina con la tecnología DDR3 SDRAM.\r\nMemoria con formato DIMM.\r\nAlcanza una velocidad de 1333 MHz.\r\nApta para computadoras de escritorio.\r\nLínea DDR3 2GB.\r\nCuenta con una tasa de transferencia de 10600 MB/s.\r\nCompatible con Intel Core, AMD.', 100, 150000.00, 6, 10, 1),
(33, 'F123456787', 'Memoria RAM 8GB DDR4', '8 GB de RAM con tecnología DDR4 para juegos.', 'Optimiza el rendimiento de tu máquina con la tecnología DDR4.\r\nMemoria con formato SODIMM.\r\nAlcanza una velocidad de 2666 MHz.\r\nApta para notebooks.', 100, 130000.00, 6, 10, 1),
(34, 'F123456786', 'Memoria RAM 4GB DDR4 SDRAM', '4 GB de RAM con tecnología DDR4 SDRAM con mayor velocidad.', 'Optimiza el rendimiento de tu máquina con la tecnología DDR4 SDRAM.\r\nMemoria con formato SODIMM.\r\nAlcanza una velocidad de 2666 MHz.\r\nCuenta con una tasa de transferencia de 21300 MB/s.', 100, 75000.00, 6, 12, 1),
(35, 'F123456785', 'Memoria RAM 4GB DDR3L', '4 GB de RAM con tecnología DDR3L para trabajar.', 'Optimiza el rendimiento de tu máquina con la tecnología DDR3L.\r\nMemoria con formato SODIMM.\r\nAlcanza una velocidad de 1600 MHz.\r\nApta para notebooks.\r\nCuenta con una tasa de transferencia de 12800 MB/s.', 100, 56000.00, 6, 12, 1),
(36, 'F123456784', 'Memoria RAM 4GB', '4 GB de RAM para realizar trabajos en la PC.', 'Marca: Samsung.\r\nCapacidad total: 4 GB.\r\nVelocidad: 600 MHz.\r\nTeconología: DDR3.\r\nFormato: SODIMM.', 100, 65000.00, 6, 12, 1),
(37, 'G621952154', 'Fuente De Poder Pc 500w Thermaltake Smart 80 Plus White Negro', '¡Dale potencia a tu sistema con la fuente de alimentación de 500 W y 80+ de Thermaltake!', 'Línea: Smart Series.\r\nModelo: PS-SPD-0500NPCWUS-W.\r\nPotencia de salida: 500 W.\r\nColor Negro.\r\nVoltaje 110V/220V.\r\nTipo de fuente de alimentación para PC: ATX.\r\nTipo de refrigeración: Por aire', 30, 243000.00, 7, 17, 1),
(38, 'G361251054', 'Fuente de poder para PC GameMax VP Series VP-800 800W negra 100V/240V', 'Con la fuente de poder GameMax VP-800 podrás asegurar la corriente continua y estable de tu computadora.', 'Marca: GameMax.\r\nLínea: VP Series.\r\nModelo: VP-800.\r\nPotencia de salida de 800 W.\r\nColor Negro.\r\nVoltaje 100V/240V.\r\nTipo de fuente de alimentación para PC: ATX.\r\nTipo de refrigeración: Hidráulica.\r\nCon protección de bajo voltaje: Sí', 30, 335000.00, 7, 18, 1),
(39, 'G875245610', 'Fuente de poder para PC GameMax VP Series VP-600-RGB 600W negra 100V/240V', 'Debido a su funcionamiento silencioso, tu equipo operará minimizando el nivel de ruido.', 'Marca: GameMax.\r\nLínea: VP Series.\r\nModelo: VP-600-RGB.\r\nPotencia de salida de 600 W.\r\nColor Negro.\r\nVoltaje 100V/240V.\r\nTipo de fuente de alimentación para PC: ATX.\r\nCon iluminación RGB: Sí', 30, 303000.00, 7, 18, 1),
(40, 'G030206142', 'Fuente De Poder Iceberg 450-ls 450w', 'Elegante diseño que mejora la apariencia de la configuración de los juegos.', 'Marca: Iceberg.\r\nModelo: 450-LS.\r\nPotencia de salida de 450 W.\r\nColor Negro.\r\nTipo de fuente de alimentación para PC: ATX.\r\nTipo de refrigeración: Por aire.\r\nEs gamer: No', 30, 140000.00, 7, 16, 1),
(41, 'G878544421', 'Fuente De Poder Atx 750wa 24 Pin Unitec Para Pc Torre Equipo', 'Fuente de poder recubierta con 2 anillos de cobre para un buen funcionamiento.', 'Marca: Unitec.\r\nModelo: Fuente ATX.\r\nPotencia de salida de 750 W.\r\nTipo de fuente de alimentación para PC: ATX.\r\nLargo del cable de alimentación: 1.5 m', 30, 53000.00, 7, 19, 1),
(42, 'G302169015', 'Fuente De Poder Atx 680w V.2 Pc 20-24 Pin Sata Ide', 'Optimizda con un ventilador y una protección ante los cortos circuitos que puedan presentarse.', 'Marca: MONSTER TECH.\r\nModelo: ATX.\r\nPotencia de salida 680 W.\r\nCon iluminación RGB: No', 30, 47000.00, 7, 19, 1),
(43, 'H142598410', 'Board Asus Tuf B460m-plus', 'TUF Gaming B460M-PLUS (Wi-Fi) destila elementos esenciales de la última plataforma Intel® y los combina con características listas para el juego y durabilidad comprobada, con una placa super resistente.', 'Marca: Asus.\r\nLínea: TUF.\r\nModelo: b460m plus.\r\nVersión wifi.\r\nPlataforma: Intel.\r\nCapacidad máxima soportada de la memoria RAM: 128 GB.\r\nChipsets: Intel.\r\nSocket: 1200.\r\nRanuras de expansión: pciexpressx16.\r\nCon procesador: No.\r\nAplicaciones: Escritorio.\r\nTipo de memoria RAM: DDR4', 20, 760000.00, 8, 6, 1),
(44, 'H456452349', 'Board intel asus tuf gaming z690 plus', 'ASUS TUF GAMING Z690-PLUS WIFI D4 toma todos los elementos esenciales de los últimos procesadores Intel® y los combina con características listas para jugar y durabilidad comprobada.', 'Marca: Asus.\r\nLínea: TUF GAMING.\r\nModelo: Z690-PLUS WIFI.\r\nVersión DDR5.\r\nCapacidad máxima soportada de la memoria RAM: 128 GB.\r\nChipsets: IntelZ690.\r\nSocket: LGA1700.\r\nRanuras de expansión: 4.\r\nCon procesador: No.\r\nCPU: Intel.\r\nTipo de memoria RAM: DDR5', 20, 1297000.00, 8, 6, 1),
(45, 'H987542614', 'Board asrock x570', 'Es una plataforma diseñada con tecnologías de vanguardia para extraer todo el poder de una nueva generación de procesadores. Un modelo que conjuga con sabiduría estilo resaltón y fiabilidad.', 'Marca: ASRock.\r\nLínea: STEEL LEGEND.\r\nModelo: X570 STEEL LEGEND WIFI AX.\r\nPlataforma: AMD.\r\nCapacidad máxima soportada de la memoria RAM: 12 GB.\r\nChipsets: X570.\r\nSocket: AM4.\r\nRanuras de expansión: PCI Express 4.0 x16,PCI Express x1.\r\nCon procesador: No.\r\nCPU: 3000,4000 G-Series,5000 y 5000 G,Ryzen™ 2000.\r\nAplicaciones: PC.\r\nTipo de memoria RAM: DDR4', 20, 820000.00, 8, 7, 1),
(46, 'H678724640', 'Board MSI mpg Z590', 'Solución térmica premium con el diseño de disipador de calor extendido y el escudo M.2 Frozr están diseñados para un sistema de alto rendimiento.', 'Marca: MSI.\r\nModelo: MPG Z590 GAMING FORCE.\r\nPlataforma: Intel.\r\nCapacidad máxima soportada de la memoria RAM: 128 GB.\r\nChipsets: Z590.\r\nSocket: LGA 1200.\r\nCon procesador: No.\r\nAplicaciones: PC.\r\nTipo de memoria RAM: DDR4.\r\nProcesadores soportados: Generación 10/11 Intel.\r\nFormato de memoria RAM: DIMM.\r\nVelocidad de memoria RAM: 5333MHz (OC).\r\nEs gamer: Sí.\r\nEs kit: No', 20, 604000.00, 8, 5, 1),
(47, 'H786786410', 'Board MSI Z590', 'La serie PRO ayuda a los usuarios a que su experiencia sea más productiva y eficiente. Ensamblada con componentes de alta calidad.', 'Marca: MSI.\r\nModelo: MPG Z590 GAMING FORCE.\r\nPlataforma: Intel.\r\nCapacidad máxima soportada de la memoria RAM: 128 GB.\r\nChipsets: Z590.\r\nSocket: LGA 1200.\r\nCon procesador: No.\r\nAplicaciones: PC.\r\nTipo de memoria RAM: DDR4.\r\nProcesadores soportados: Generación 10/11 Intel.\r\nFormato de memoria RAM: DIMM.\r\nVelocidad de memoria RAM: 5333MHz (OC).\r\nEs gamer: Sí.\r\nEs kit: No', 20, 1350000.00, 8, 5, 1),
(48, 'H321608215', 'Board Z590 gaming x', 'La placa base Z590 GAMING X utiliza un diseño de potencia de CPU digital de 12+1 fases que incluye controlador PWM digital y DrMOS.', 'Marca: Gigabyte.\r\nLínea: Gaming.\r\nModelo: Z590 Gaming X.\r\nVersión 1.0.\r\nCapacidad máxima soportada de la memoria RAM: 128 GB.\r\nChipsets: Conjunto de chips Intel ® Z590 Express.\r\nSocket: LGA1200.\r\nRanuras de expansión: 4.\r\nCon procesador: No.\r\nTipo de memoria RAM: DDR4', 20, 1080000.00, 8, 7, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `categoria` (`categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  ADD PRIMARY KEY (`id_detalle_orden`),
  ADD KEY `cliente` (`cliente`),
  ADD KEY `id_orden` (`id_orden`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagenes`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`),
  ADD UNIQUE KEY `marca` (`marca`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`id_orden`),
  ADD KEY `cliente` (`cliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `serial` (`serial`),
  ADD UNIQUE KEY `producto` (`producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_marca` (`id_marca`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  MODIFY `id_detalle_orden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `id_orden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_orden`
--
ALTER TABLE `detalle_orden`
  ADD CONSTRAINT `detalle_orden_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `detalle_orden_ibfk_2` FOREIGN KEY (`id_orden`) REFERENCES `orden` (`id_orden`),
  ADD CONSTRAINT `detalle_orden_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
