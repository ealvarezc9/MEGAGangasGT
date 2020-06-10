-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2020 a las 20:12:56
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_megagangas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_categoria` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla para categorias de prendas';

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `descripcion_categoria`) VALUES
(1, 'Damas', 'Vestimenta unicamente para mujeres'),
(2, 'Niños', 'Vestimenta unicamente para bebes y niños'),
(3, 'Caballeros', 'Vestimenta unicamente para jovenes y hombres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `NumDetalle` int(11) NOT NULL,
  `id_Factura` int(11) NOT NULL,
  `id_Producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `NoFactura` int(11) NOT NULL,
  `id_Cliente` int(11) NOT NULL,
  `num_Pago` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FechaCompra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modopago`
--

CREATE TABLE `modopago` (
  `NumeroPago` int(11) NOT NULL,
  `ModoPagar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Detalles_Compra` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `nombre_producto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `talla_producto` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `precio_producto` int(11) NOT NULL,
  `stock_producto` tinyint(1) NOT NULL,
  `fk_id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Productos de la tienda Mega Gangas GT';

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `nombre_producto`, `talla_producto`, `precio_producto`, `stock_producto`, `fk_id_categoria`) VALUES
(1, 'Chaqueta de Caballero(Oscura', 'M', 320, 1, 3),
(2, 'Bolsa Tubular Verde', 'U', 210, 1, 1),
(3, 'Sudadera Amarilla', 'S', 120, 1, 1),
(4, 'Maletin Unisex Gris', 'U', 410, 1, 3),
(5, 'Tenis Casual', '7', 250, 1, 3),
(6, 'Gafas de sol UV400', 'M', 250, 1, 3),
(7, 'Billetera con cierre', 'S', 99, 1, 3),
(8, 'Chaqueta Casual de Vestir', 'M', 499, 1, 3),
(9, 'Camisa manga-larga tipo polo', 'L', 210, 1, 3),
(10, 'Reloj cincho de cuero', 'U', 250, 1, 3),
(11, 'Diadema con moña', 'S', 25, 1, 2),
(12, 'Gorros con diseños', 'S', 25, 1, 2),
(13, 'Gorritos de corona', 'S', 35, 1, 2),
(14, 'Gorra Estrella', 'S', 35, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `correo_usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `direccion_usuario` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `telefono_usuario` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla para el registro y login de usuario';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`NoFactura`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `NoFactura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
