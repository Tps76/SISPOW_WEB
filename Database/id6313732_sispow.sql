-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-08-2018 a las 20:33:12
-- Versión del servidor: 10.2.12-MariaDB
-- Versión de PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id6313732_sispow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprovacion`
--

CREATE TABLE `aprovacion` (
  `idaprovacion` int(11) NOT NULL,
  `fk_trab` int(11) NOT NULL,
  `nombrecampo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ValorCampo` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `idcatproducto` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL,
  `imagen_categoria` longblob DEFAULT NULL,
  `estado_categoria` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_usuario`
--

CREATE TABLE `categoria_usuario` (
  `idcatusuario` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idpermisos` int(11) NOT NULL,
  `nombre_catusuario` varchar(50) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `estado_catusuario` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idciudad` int(11) NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `nombre_ciudad` varchar(50) NOT NULL,
  `estado_ciudad` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `estado_cliente` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `idpais` int(11) NOT NULL,
  `nombre_departamento` varchar(50) NOT NULL,
  `estado_departamento` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `iddetalle` int(11) NOT NULL,
  `idpedido` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad_producto` int(11) NOT NULL,
  `precio_subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` int(11) NOT NULL,
  `nit_empresa` int(11) NOT NULL,
  `nombre_empresa` varchar(50) NOT NULL,
  `logo_empresa` longblob NOT NULL,
  `estado_empresa` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_fac` int(11) NOT NULL,
  `fk_trabaj` int(11) NOT NULL,
  `fk_caja` int(11) NOT NULL,
  `fk_tipoPago` int(11) NOT NULL,
  `fk_resFac` int(11) NOT NULL,
  `fk_cliente` int(11) NOT NULL,
  `fk_petProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identidad`
--

CREATE TABLE `identidad` (
  `ididentidad` int(11) NOT NULL,
  `tipo_identidad` varchar(50) NOT NULL,
  `numero_identidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `cod_pago` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id_mov` int(11) NOT NULL,
  `fk_trabajador` int(11) NOT NULL,
  `desc_mov` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numero_caja`
--

CREATE TABLE `numero_caja` (
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `idpais` int(11) NOT NULL,
  `nombre_pais` varchar(50) NOT NULL,
  `estado_pais` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE `pedido_producto` (
  `idpedido` int(11) NOT NULL,
  `idtrabajador` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `dia` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `total_pedido` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `confbd` tinyint(1) NOT NULL,
  `confemp` tinyint(1) NOT NULL,
  `admusu` tinyint(1) NOT NULL,
  `regventa` tinyint(1) NOT NULL,
  `regcateprod` tinyint(1) NOT NULL,
  `regproducto` tinyint(1) NOT NULL,
  `modcateprod` tinyint(1) NOT NULL,
  `modproducto` tinyint(1) NOT NULL,
  `vercateprod` tinyint(1) NOT NULL,
  `verproducto` tinyint(1) NOT NULL,
  `reportventa` tinyint(1) NOT NULL,
  `grafventa` tinyint(1) NOT NULL,
  `estado_permiso` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `ididentidad` int(11) NOT NULL,
  `nombre_persona` varchar(100) NOT NULL,
  `apellido_persona` varchar(100) NOT NULL,
  `genero` char(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `idciudad` int(11) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `estado_persona` tinyint(1) NOT NULL DEFAULT 1,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `idcatproducto` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `venta_producto` double NOT NULL,
  `imagen_producto` longblob NOT NULL,
  `compra_producto` double NOT NULL,
  `estado_producto` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `idciudad` int(11) NOT NULL,
  `razon_social` varchar(50) NOT NULL,
  `nombre_proveedor` varchar(50) NOT NULL,
  `apellido_proveedor` varchar(50) NOT NULL,
  `direccion_proveedor` varchar(50) NOT NULL,
  `telefono_proveedor` int(11) NOT NULL,
  `email_proveedor` varchar(100) NOT NULL,
  `estado_proveedor` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucionfact`
--

CREATE TABLE `resolucionfact` (
  `codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `idsede` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idciudad` int(11) NOT NULL,
  `direccion_sede` varchar(50) NOT NULL,
  `telefono_sede` int(11) NOT NULL,
  `email_sede` varchar(100) DEFAULT NULL,
  `estado_sede` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `idstock` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_caja`
--

CREATE TABLE `tipo_caja` (
  `codigo` int(11) NOT NULL,
  `fk_numcaj` int(11) NOT NULL,
  `ubicacion` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `idtrabajador` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcargo` int(11) NOT NULL,
  `estado_trabajador` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `password_usuario` varchar(100) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  `estado_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprovacion`
--
ALTER TABLE `aprovacion`
  ADD PRIMARY KEY (`idaprovacion`),
  ADD KEY `fk_trab` (`fk_trab`);

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`idcatproducto`),
  ADD KEY `fk_empresa_cateproducto` (`idempresa`);

--
-- Indices de la tabla `categoria_usuario`
--
ALTER TABLE `categoria_usuario`
  ADD PRIMARY KEY (`idcatusuario`),
  ADD KEY `fk_empresa_catusuario` (`idempresa`),
  ADD KEY `fk_permiso_catusuario` (`idpermisos`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idciudad`),
  ADD KEY `fk_departamento_ciudad` (`iddepartamento`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD KEY `fk_persona_cliente` (`idpersona`),
  ADD KEY `fk_usuario_cliente` (`idusuario`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`iddepartamento`),
  ADD KEY `fk_pais_departamento` (`idpais`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`iddetalle`),
  ADD KEY `fk_pedido_detalle` (`idpedido`),
  ADD KEY `fk_producto_detalle` (`idproducto`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_fac`),
  ADD KEY `fk_trabajad` (`fk_trabaj`),
  ADD KEY `fk_resoluicionfactura` (`fk_resFac`),
  ADD KEY `fk_tipopago` (`fk_tipoPago`),
  ADD KEY `fk_caja` (`fk_caja`),
  ADD KEY `fk_client` (`fk_cliente`),
  ADD KEY `fk_petProduct` (`fk_petProducto`);

--
-- Indices de la tabla `identidad`
--
ALTER TABLE `identidad`
  ADD PRIMARY KEY (`ididentidad`);

--
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`cod_pago`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id_mov`),
  ADD KEY `movimientos_ibfk_1` (`fk_trabajador`);

--
-- Indices de la tabla `numero_caja`
--
ALTER TABLE `numero_caja`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`idpais`);

--
-- Indices de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `fk_trabajador_pedido` (`idtrabajador`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `fk_identidad_persona` (`ididentidad`),
  ADD KEY `fk_ciudad_persona` (`idciudad`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `fk_categoria_producto` (`idcatproducto`),
  ADD KEY `fk_proveedor_producto` (`idproveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`),
  ADD KEY `fk_ciudad_proveedor` (`idciudad`);

--
-- Indices de la tabla `resolucionfact`
--
ALTER TABLE `resolucionfact`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`idsede`),
  ADD KEY `fk_empresa_sede` (`idempresa`),
  ADD KEY `fk_ciudad_sede` (`idciudad`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idstock`),
  ADD KEY `fk_proveedor_stock` (`idproveedor`),
  ADD KEY `fk_producto_stock` (`idproducto`);

--
-- Indices de la tabla `tipo_caja`
--
ALTER TABLE `tipo_caja`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_numcaj` (`fk_numcaj`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`idtrabajador`),
  ADD KEY `fk_empresa_trabajador` (`idempresa`),
  ADD KEY `fk_persona_trabajador` (`idpersona`),
  ADD KEY `fk_usuario_trabajador` (`idusuario`),
  ADD KEY `fk_cargo_trabajador` (`idcargo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aprovacion`
--
ALTER TABLE `aprovacion`
  MODIFY `idaprovacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `idcatproducto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria_usuario`
--
ALTER TABLE `categoria_usuario`
  MODIFY `idcatusuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idciudad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `iddetalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `identidad`
--
ALTER TABLE `identidad`
  MODIFY `ididentidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `cod_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id_mov` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `numero_caja`
--
ALTER TABLE `numero_caja`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `idpais` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `idsede` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `idstock` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_caja`
--
ALTER TABLE `tipo_caja`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `idtrabajador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aprovacion`
--
ALTER TABLE `aprovacion`
  ADD CONSTRAINT `fk_trab` FOREIGN KEY (`fk_trab`) REFERENCES `trabajador` (`idtrabajador`);

--
-- Filtros para la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD CONSTRAINT `fk_empresa_cateproducto` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`);

--
-- Filtros para la tabla `categoria_usuario`
--
ALTER TABLE `categoria_usuario`
  ADD CONSTRAINT `fk_empresa_catusuario` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`),
  ADD CONSTRAINT `fk_permiso_catusuario` FOREIGN KEY (`idpermisos`) REFERENCES `permiso` (`idpermiso`);

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `fk_departamento_ciudad` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_persona_cliente` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`),
  ADD CONSTRAINT `fk_usuario_cliente` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `fk_pais_departamento` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `fk_pedido_detalle` FOREIGN KEY (`idpedido`) REFERENCES `pedido_producto` (`idpedido`),
  ADD CONSTRAINT `fk_producto_detalle` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_caja` FOREIGN KEY (`fk_caja`) REFERENCES `tipo_caja` (`codigo`),
  ADD CONSTRAINT `fk_client` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`idcliente`),
  ADD CONSTRAINT `fk_petProduct` FOREIGN KEY (`fk_petProducto`) REFERENCES `pedido_producto` (`idpedido`),
  ADD CONSTRAINT `fk_resoluicionfactura` FOREIGN KEY (`fk_resFac`) REFERENCES `resolucionfact` (`codigo`),
  ADD CONSTRAINT `fk_tipopago` FOREIGN KEY (`fk_tipoPago`) REFERENCES `metodo_pago` (`cod_pago`),
  ADD CONSTRAINT `fk_trabajad` FOREIGN KEY (`fk_trabaj`) REFERENCES `trabajador` (`idtrabajador`);

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`fk_trabajador`) REFERENCES `trabajador` (`idtrabajador`);

--
-- Filtros para la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD CONSTRAINT `fk_trabajador_pedido` FOREIGN KEY (`idtrabajador`) REFERENCES `trabajador` (`idtrabajador`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_ciudad_persona` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`),
  ADD CONSTRAINT `fk_identidad_persona` FOREIGN KEY (`ididentidad`) REFERENCES `identidad` (`ididentidad`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`idcatproducto`) REFERENCES `categoria_producto` (`idcatproducto`),
  ADD CONSTRAINT `fk_proveedor_producto` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `fk_ciudad_proveedor` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`);

--
-- Filtros para la tabla `sede`
--
ALTER TABLE `sede`
  ADD CONSTRAINT `fk_ciudad_sede` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`),
  ADD CONSTRAINT `fk_empresa_sede` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`);

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fk_producto_stock` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`),
  ADD CONSTRAINT `fk_proveedor_stock` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`);

--
-- Filtros para la tabla `tipo_caja`
--
ALTER TABLE `tipo_caja`
  ADD CONSTRAINT `fk_numcaj` FOREIGN KEY (`fk_numcaj`) REFERENCES `numero_caja` (`numero`);

--
-- Filtros para la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD CONSTRAINT `fk_cargo_trabajador` FOREIGN KEY (`idcargo`) REFERENCES `categoria_usuario` (`idcatusuario`),
  ADD CONSTRAINT `fk_empresa_trabajador` FOREIGN KEY (`idempresa`) REFERENCES `sede` (`idsede`),
  ADD CONSTRAINT `fk_persona_trabajador` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`),
  ADD CONSTRAINT `fk_usuario_trabajador` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
