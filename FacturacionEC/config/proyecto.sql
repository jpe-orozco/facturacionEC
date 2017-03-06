-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2017 a las 16:43:16
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ajuste_stock`
--

CREATE TABLE `ajuste_stock` (
  `ajst_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `ajst_stock` int(11) NOT NULL,
  `ajst_stockanterior` int(11) NOT NULL,
  `ajst_motivo` char(3) DEFAULT NULL,
  `ajst_usuario` char(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ajst_fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='la tabla tbsotck';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `alma_id` int(11) NOT NULL,
  `para_id` int(11) NOT NULL,
  `alma_nombre` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alma_ruc` char(14) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alma_codsri` char(3) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alma_telefono` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `alma_direccion` char(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `alma_mail` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `alma_porpvp` double DEFAULT NULL,
  `alma_tvaloracion` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributo_valor`
--

CREATE TABLE `atributo_valor` (
  `atva_id` int(11) NOT NULL,
  `para_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `atva_descripcion` char(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `banc_id` int(11) NOT NULL,
  `banc_descripcion` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `banc_numerocuenta` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `banc_oficial` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `banc_titular` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `banc_fec_apertura` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `banc_observaciones` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `cata_id` int(11) NOT NULL,
  `cata_tipo` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheque`
--

CREATE TABLE `cheque` (
  `cheq_id` int(11) NOT NULL,
  `clpr_id` int(11) NOT NULL,
  `trca_id` int(11) NOT NULL,
  `cheq_numero` int(11) NOT NULL,
  `cheq_fechaentrega` date NOT NULL,
  `cheq_fecharecepcion` date NOT NULL,
  `cheq_fechavencimiento` date NOT NULL,
  `cheq_depositado` int(11) DEFAULT NULL,
  `cheq_monto` double NOT NULL,
  `cheq_propietario` char(1) NOT NULL,
  `cheq_rechazado` char(10) DEFAULT NULL,
  `cheq_fcehadeposito` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_proveedor`
--

CREATE TABLE `cliente_proveedor` (
  `clpr_id` int(11) NOT NULL,
  `para_id` int(11) NOT NULL,
  `clpr_tipoiden` char(1) NOT NULL,
  `clpr_identificacion` char(14) NOT NULL,
  `clpr_nombre` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `clpr_nombrecomercial` char(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `clpr_direccion` char(50) NOT NULL,
  `clpr_telefono1` char(10) NOT NULL,
  `clpr_telefono2` char(10) DEFAULT NULL,
  `clpr_mail` char(50) NOT NULL,
  `clpr_contacto` text CHARACTER SET utf8 COLLATE utf8_bin,
  `clpr_fechanacimiento` date NOT NULL,
  `clpr_saldo_cta` double NOT NULL,
  `clpr_web` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `clpr_fechacreacion` datetime NOT NULL,
  `clpr_fechamodificacion` datetime NOT NULL,
  `clpr_observaciones` text CHARACTER SET utf8 COLLATE utf8_bin,
  `clpr_estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobranza`
--

CREATE TABLE `cobranza` (
  `cobr_id` int(11) NOT NULL,
  `clpr_id` int(11) NOT NULL,
  `para_id` int(11) NOT NULL,
  `cobr_numfactura` char(10) DEFAULT NULL,
  `cobr_fechareg` date NOT NULL,
  `cobr_totalfactura` double NOT NULL,
  `cobr_pago` double NOT NULL,
  `cobr_saldo` double NOT NULL,
  `cobr_numrecibo` char(10) DEFAULT NULL,
  `cobr_estado` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `usua_id` int(11) NOT NULL,
  `para_id` int(11) NOT NULL,
  `log_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log_proceso` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `log_descripcion` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `log_modulo` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `log_ip` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `log_usuario` char(10) NOT NULL,
  `log_accion` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_caja`
--

CREATE TABLE `movimiento_caja` (
  `moca_id` int(11) NOT NULL,
  `usua_id` int(11) NOT NULL,
  `para_id` int(11) NOT NULL,
  `moca_fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `moca_nombre` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `moca_observacion` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `moca_valor` double NOT NULL,
  `moca_cobranzas` double NOT NULL,
  `moca_nd` double NOT NULL,
  `moca_ingresos` double NOT NULL,
  `moca_compras` double NOT NULL,
  `moca_pagos` double NOT NULL,
  `moca_nc` double NOT NULL,
  `moca_egresos` double NOT NULL,
  `moca_inicial` double NOT NULL,
  `moca_retiros` double NOT NULL,
  `moca_ctactec` double NOT NULL,
  `moca_ctactep` double NOT NULL,
  `moca_venta_efectivo` double NOT NULL,
  `moca_venta_tarjeta` double NOT NULL,
  `moca_venta_cheque` double NOT NULL,
  `moca_ndc` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='este el movimiento resumen de \r\n\r\nla caja x dia';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro`
--

CREATE TABLE `parametro` (
  `para_id` int(11) NOT NULL,
  `cata_id` int(11) NOT NULL,
  `para_descripcion` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `para_tipo` char(1) DEFAULT NULL,
  `para_valor` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `perm_id` int(11) NOT NULL,
  `perm_nombre` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `prod_id` int(11) NOT NULL,
  `prod_nombre` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `prod_fecha` date NOT NULL,
  `prod_precioc` double NOT NULL,
  `prod_stock` int(11) NOT NULL,
  `prod_stockmin` int(11) NOT NULL,
  `prod_stockmax` int(11) NOT NULL,
  `prod_codigobarras` char(10) DEFAULT NULL,
  `prod_codigoprod` char(10) DEFAULT NULL,
  `prod_foto` char(10) DEFAULT NULL,
  `prod_costopromedio` double NOT NULL,
  `prod_precio1` double NOT NULL,
  `prod_precio2` double NOT NULL,
  `prod_precio3` double NOT NULL,
  `prod_precio4` double NOT NULL,
  `prod_costolifo` double NOT NULL,
  `prod_costofifo` double NOT NULL,
  `prod_feccreacion` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`prod_id`, `prod_nombre`, `prod_fecha`, `prod_precioc`, `prod_stock`, `prod_stockmin`, `prod_stockmax`, `prod_codigobarras`, `prod_codigoprod`, `prod_foto`, `prod_costopromedio`, `prod_precio1`, `prod_precio2`, `prod_precio3`, `prod_precio4`, `prod_costolifo`, `prod_costofifo`, `prod_feccreacion`) VALUES
(7, 'aaa', '0000-00-00', 1, 1, 1, 1, '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00.000000'),
(9, 'bbb', '0000-00-00', 2, 2, 2, 2, '2', '2', NULL, 2, 2, 2, 2, 2, 2, 2, '2017-03-06 00:42:12.114967'),
(10, 'qqqqqqq', '0000-00-00', 3, 3, 3, 3, '3', '3', NULL, 3, 3, 3, 3, 3, 3, 3, '2017-03-06 00:43:46.874396'),
(11, 'xxxx', '0000-00-00', 555, 555, 555, 5, '5', '5', NULL, 5, 5, 5, 5, 5, 5, 5, '2017-03-06 01:01:59.327647'),
(13, 'zzzzzzzzz', '2017-03-06', 4, 4, 4, 4, '4', '4', NULL, 4, 4, 4, 4, 4, 4, 4, '2017-03-06 01:10:47.971883'),
(14, 'qweq', '2017-03-06', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '2017-03-06 01:12:12.934743'),
(15, 'tttt', '2017-03-06', 0, 0, 0, 0, '', '', NULL, 0, 0, 0, 0, 0, 0, 0, '2017-03-06 01:49:39.508240');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `prom_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prom_fechai` date NOT NULL,
  `prom_fechaf` date NOT NULL,
  `prom_porcentaje` double NOT NULL,
  `prom_precio` double NOT NULL,
  `prom_fechar` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_gain`
--

CREATE TABLE `registro_gain` (
  `regi_id` int(11) NOT NULL,
  `para_id` int(11) NOT NULL,
  `regi_fecha` date NOT NULL,
  `regi_descripcion` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `regi_valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `role_id` int(11) NOT NULL,
  `usua_id` int(11) NOT NULL,
  `perm_id` int(11) NOT NULL,
  `role_descripcion` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida_mercaderia`
--

CREATE TABLE `salida_mercaderia` (
  `same_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `para_id` int(11) NOT NULL,
  `same_descipcion` char(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `same_costo` double NOT NULL,
  `same_precio` double NOT NULL,
  `same_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='se relaciona con la tabla \r\n\r\nparametro por el motivo de baja y ';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion_cabecera`
--

CREATE TABLE `transaccion_cabecera` (
  `trca_id` int(11) NOT NULL,
  `clpr_id` int(11) NOT NULL,
  `para_id` int(11) NOT NULL,
  `trca_numreg` int(11) NOT NULL,
  `trca_numfactura` int(11) DEFAULT NULL,
  `trca_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trca_saldo` double NOT NULL,
  `trca_formapago` char(1) DEFAULT NULL,
  `trca_descuento` double NOT NULL,
  `trca_total` double NOT NULL,
  `trca_subtotal` double NOT NULL,
  `trca_iva` double NOT NULL,
  `trca_recargo` double NOT NULL,
  `trca_numerocheque` int(11) DEFAULT NULL,
  `trca_proforma` tinyint(1) DEFAULT NULL,
  `trca_anulado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='se relaciona con \r\nparametro por la forma de pago';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion_detalle`
--

CREATE TABLE `transaccion_detalle` (
  `trde_id` int(11) NOT NULL,
  `trca_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `trde_cantidad` int(11) NOT NULL,
  `trde_precio` double NOT NULL,
  `trde_descuento` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usua_id` int(11) NOT NULL,
  `usua_login` char(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `usua_clave` char(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `usua_nombre` char(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `usua_direccion` char(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `usua_telefono` char(10) DEFAULT NULL,
  `usua_celular` char(10) DEFAULT NULL,
  `usua_email` varchar(50) DEFAULT NULL,
  `usua_fecha_alta` date NOT NULL,
  `usua_fec_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usua_id`, `usua_login`, `usua_clave`, `usua_nombre`, `usua_direccion`, `usua_telefono`, `usua_celular`, `usua_email`, `usua_fecha_alta`, `usua_fec_login`) VALUES
(7, 'root', 'd5f12e53a1', 'patricia orozco', 'tumbaco', '', '', 'jp_orozco@hotmail.co', '0000-00-00', '2017-03-06 01:40:28'),
(11, 'patricia', '92f2fd9987', 'patricia orozco', 'tumbaco', '', '', 'patricia.orozco@bnf.fin.ec', '0000-00-00', '2017-03-06 01:40:28'),
(12, 'admin', '3f196cfb6c', 'patricia orozco', 'cumbaya', '', '', 'jpe.orozco@gmail.com', '0000-00-00', '2017-03-06 01:40:28'),
(16, 'aaaa', '17b325d918', 'aaaaaaaaaaaa', 'sssssssssssss', '', '', 'dddd', '0000-00-00', '2017-03-06 01:40:28'),
(18, 'aaaa', 'c5b4becd0f', 'sssss', 'cccc', '', '', 'fffff', '0000-00-00', '2017-03-06 01:40:28'),
(19, 'qqqqq', '761ee866d5', 'qqqqqqqqqq', 'qqqqqqqqqqqqqq', '', '', 'patricia.orozco@bnf.fin.ec', '0000-00-00', '2017-03-06 01:40:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ajuste_stock`
--
ALTER TABLE `ajuste_stock`
  ADD PRIMARY KEY (`ajst_id`),
  ADD KEY `fk_ajuste_stock_prod` (`prod_id`);

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`alma_id`),
  ADD KEY `fk_almacen_ciudad` (`para_id`);

--
-- Indices de la tabla `atributo_valor`
--
ALTER TABLE `atributo_valor`
  ADD PRIMARY KEY (`atva_id`),
  ADD KEY `fk_atributo_param` (`para_id`),
  ADD KEY `fk_atributo_prod` (`prod_id`);

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`banc_id`);

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`cata_id`);

--
-- Indices de la tabla `cheque`
--
ALTER TABLE `cheque`
  ADD PRIMARY KEY (`cheq_id`),
  ADD KEY `fk_chq_cliente` (`clpr_id`),
  ADD KEY `fk_cheque_trn` (`trca_id`);

--
-- Indices de la tabla `cliente_proveedor`
--
ALTER TABLE `cliente_proveedor`
  ADD PRIMARY KEY (`clpr_id`),
  ADD KEY `fk_tip_client` (`para_id`);

--
-- Indices de la tabla `cobranza`
--
ALTER TABLE `cobranza`
  ADD PRIMARY KEY (`cobr_id`),
  ADD KEY `fk_cli_deb_cred` (`clpr_id`),
  ADD KEY `fk_cobranza_tipo` (`para_id`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_log_param` (`para_id`),
  ADD KEY `fk_log_usuario` (`usua_id`);

--
-- Indices de la tabla `movimiento_caja`
--
ALTER TABLE `movimiento_caja`
  ADD PRIMARY KEY (`moca_id`),
  ADD KEY `fk_caja_usuario` (`usua_id`),
  ADD KEY `fk_caja_tipmov` (`para_id`);

--
-- Indices de la tabla `parametro`
--
ALTER TABLE `parametro`
  ADD PRIMARY KEY (`para_id`),
  ADD KEY `fk_cata_param` (`cata_id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`perm_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`prom_id`),
  ADD KEY `fk_promo_prod` (`prod_id`);

--
-- Indices de la tabla `registro_gain`
--
ALTER TABLE `registro_gain`
  ADD PRIMARY KEY (`regi_id`),
  ADD KEY `fk_ing_gasto_tipo` (`para_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `fk_rol_usuario` (`usua_id`),
  ADD KEY `fk_rol_permiso` (`perm_id`);

--
-- Indices de la tabla `salida_mercaderia`
--
ALTER TABLE `salida_mercaderia`
  ADD PRIMARY KEY (`same_id`),
  ADD KEY `fk_salida_prod` (`prod_id`),
  ADD KEY `fk_salida_motivo` (`para_id`);

--
-- Indices de la tabla `transaccion_cabecera`
--
ALTER TABLE `transaccion_cabecera`
  ADD PRIMARY KEY (`trca_id`),
  ADD KEY `fk_trn_cliente` (`clpr_id`),
  ADD KEY `fk_trn_tipo` (`para_id`);

--
-- Indices de la tabla `transaccion_detalle`
--
ALTER TABLE `transaccion_detalle`
  ADD PRIMARY KEY (`trde_id`),
  ADD KEY `fk_detalle_trn` (`trca_id`),
  ADD KEY `fk_trn_prod` (`prod_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usua_id`),
  ADD KEY `usua_login` (`usua_login`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ajuste_stock`
--
ALTER TABLE `ajuste_stock`
  MODIFY `ajst_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `alma_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `atributo_valor`
--
ALTER TABLE `atributo_valor`
  MODIFY `atva_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `banco`
--
ALTER TABLE `banco`
  MODIFY `banc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `cata_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cheque`
--
ALTER TABLE `cheque`
  MODIFY `cheq_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cliente_proveedor`
--
ALTER TABLE `cliente_proveedor`
  MODIFY `clpr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cobranza`
--
ALTER TABLE `cobranza`
  MODIFY `cobr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `movimiento_caja`
--
ALTER TABLE `movimiento_caja`
  MODIFY `moca_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `parametro`
--
ALTER TABLE `parametro`
  MODIFY `para_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `perm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `prom_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `registro_gain`
--
ALTER TABLE `registro_gain`
  MODIFY `regi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `salida_mercaderia`
--
ALTER TABLE `salida_mercaderia`
  MODIFY `same_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `transaccion_cabecera`
--
ALTER TABLE `transaccion_cabecera`
  MODIFY `trca_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `transaccion_detalle`
--
ALTER TABLE `transaccion_detalle`
  MODIFY `trde_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ajuste_stock`
--
ALTER TABLE `ajuste_stock`
  ADD CONSTRAINT `fk_ajuste_stock_prod` FOREIGN KEY (`prod_id`) REFERENCES `producto` (`prod_id`);

--
-- Filtros para la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD CONSTRAINT `fk_almacen_ciudad` FOREIGN KEY (`para_id`) REFERENCES `parametro` (`para_id`);

--
-- Filtros para la tabla `atributo_valor`
--
ALTER TABLE `atributo_valor`
  ADD CONSTRAINT `fk_atributo_param` FOREIGN KEY (`para_id`) REFERENCES `parametro` (`para_id`),
  ADD CONSTRAINT `fk_atributo_prod` FOREIGN KEY (`prod_id`) REFERENCES `producto` (`prod_id`);

--
-- Filtros para la tabla `cheque`
--
ALTER TABLE `cheque`
  ADD CONSTRAINT `fk_cheque_trn` FOREIGN KEY (`trca_id`) REFERENCES `transaccion_cabecera` (`trca_id`),
  ADD CONSTRAINT `fk_chq_cliente` FOREIGN KEY (`clpr_id`) REFERENCES `cliente_proveedor` (`clpr_id`);

--
-- Filtros para la tabla `cliente_proveedor`
--
ALTER TABLE `cliente_proveedor`
  ADD CONSTRAINT `fk_tip_client` FOREIGN KEY (`para_id`) REFERENCES `parametro` (`para_id`);

--
-- Filtros para la tabla `cobranza`
--
ALTER TABLE `cobranza`
  ADD CONSTRAINT `fk_cli_deb_cred` FOREIGN KEY (`clpr_id`) REFERENCES `cliente_proveedor` (`clpr_id`),
  ADD CONSTRAINT `fk_cobranza_tipo` FOREIGN KEY (`para_id`) REFERENCES `parametro` (`para_id`);

--
-- Filtros para la tabla `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `fk_log_param` FOREIGN KEY (`para_id`) REFERENCES `parametro` (`para_id`),
  ADD CONSTRAINT `fk_log_usuario` FOREIGN KEY (`usua_id`) REFERENCES `usuario` (`usua_id`);

--
-- Filtros para la tabla `movimiento_caja`
--
ALTER TABLE `movimiento_caja`
  ADD CONSTRAINT `fk_caja_tipmov` FOREIGN KEY (`para_id`) REFERENCES `parametro` (`para_id`),
  ADD CONSTRAINT `fk_caja_usuario` FOREIGN KEY (`usua_id`) REFERENCES `usuario` (`usua_id`);

--
-- Filtros para la tabla `parametro`
--
ALTER TABLE `parametro`
  ADD CONSTRAINT `fk_cata_param` FOREIGN KEY (`cata_id`) REFERENCES `catalogo` (`cata_id`);

--
-- Filtros para la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD CONSTRAINT `fk_promo_prod` FOREIGN KEY (`prod_id`) REFERENCES `producto` (`prod_id`);

--
-- Filtros para la tabla `registro_gain`
--
ALTER TABLE `registro_gain`
  ADD CONSTRAINT `fk_ing_gasto_tipo` FOREIGN KEY (`para_id`) REFERENCES `parametro` (`para_id`);

--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rol`
  ADD CONSTRAINT `fk_rol_permiso` FOREIGN KEY (`perm_id`) REFERENCES `permiso` (`perm_id`),
  ADD CONSTRAINT `fk_rol_usuario` FOREIGN KEY (`usua_id`) REFERENCES `usuario` (`usua_id`);

--
-- Filtros para la tabla `salida_mercaderia`
--
ALTER TABLE `salida_mercaderia`
  ADD CONSTRAINT `fk_salida_motivo` FOREIGN KEY (`para_id`) REFERENCES `parametro` (`para_id`),
  ADD CONSTRAINT `fk_salida_prod` FOREIGN KEY (`prod_id`) REFERENCES `producto` (`prod_id`);

--
-- Filtros para la tabla `transaccion_cabecera`
--
ALTER TABLE `transaccion_cabecera`
  ADD CONSTRAINT `fk_trn_cliente` FOREIGN KEY (`clpr_id`) REFERENCES `cliente_proveedor` (`clpr_id`),
  ADD CONSTRAINT `fk_trn_tipo` FOREIGN KEY (`para_id`) REFERENCES `parametro` (`para_id`);

--
-- Filtros para la tabla `transaccion_detalle`
--
ALTER TABLE `transaccion_detalle`
  ADD CONSTRAINT `fk_detalle_trn` FOREIGN KEY (`trca_id`) REFERENCES `transaccion_cabecera` (`trca_id`),
  ADD CONSTRAINT `fk_trn_prod` FOREIGN KEY (`prod_id`) REFERENCES `producto` (`prod_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
