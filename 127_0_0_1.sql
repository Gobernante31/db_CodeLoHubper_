-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2023 a las 20:16:47
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codelohubper`
--
CREATE DATABASE IF NOT EXISTS `codelohubper` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `codelohubper`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desafios`
--
-- Creación: 19-09-2023 a las 05:28:04
--

CREATE TABLE `desafios` (
  `DesafioID` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Language` varchar(50) NOT NULL,
  `Dificultad` enum('Principiante','Avanzado','Advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--
-- Creación: 19-09-2023 a las 05:28:04
--

CREATE TABLE `notificaciones` (
  `NotificacionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TipoNotificacionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`NotificacionID`, `UserID`, `TipoNotificacionID`) VALUES
(2, 22, NULL),
(3, 23, NULL),
(4, 24, NULL),
(5, 25, NULL),
(6, 26, NULL),
(7, 27, NULL),
(8, 28, NULL),
(9, 35, NULL),
(10, 36, NULL),
(12, 38, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--
-- Creación: 19-09-2023 a las 06:39:54
--

CREATE TABLE `perfil` (
  `PerfilID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Foto_perfil` varchar(255) DEFAULT NULL,
  `Biografia` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`PerfilID`, `UserID`, `Foto_perfil`, `Biografia`) VALUES
(2, 22, NULL, NULL),
(3, 23, NULL, NULL),
(4, 24, NULL, NULL),
(5, 25, NULL, NULL),
(6, 26, NULL, NULL),
(7, 27, NULL, NULL),
(8, 28, NULL, NULL),
(9, 35, NULL, NULL),
(10, 36, NULL, NULL),
(12, 38, 'img/fotos_perfil/38_fotoperfil.png', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegios`
--
-- Creación: 19-09-2023 a las 05:28:04
--

CREATE TABLE `privilegios` (
  `PrivilegioID` int(11) NOT NULL,
  `Nombre_privilegio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `privilegios`
--

INSERT INTO `privilegios` (`PrivilegioID`, `Nombre_privilegio`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--
-- Creación: 19-09-2023 a las 05:28:04
--

CREATE TABLE `publicaciones` (
  `PublicacionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Contenido_Publicacion` longtext NOT NULL,
  `Fecha_Publicacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`PublicacionID`, `UserID`, `Contenido_Publicacion`, `Fecha_Publicacion`) VALUES
(2, 22, '', '2023-09-18 23:42:25'),
(3, 23, '', '2023-09-18 23:46:41'),
(4, 24, '', '2023-09-18 23:48:13'),
(5, 25, '', '2023-09-18 23:50:12'),
(6, 26, '', '2023-09-18 23:51:25'),
(7, 27, '', '2023-09-18 23:52:47'),
(8, 28, '', '2023-09-18 23:54:41'),
(9, 35, '', '2023-09-19 00:02:12'),
(10, 36, '', '2023-09-19 00:03:13'),
(12, 38, '', '2023-09-19 05:52:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rankings`
--
-- Creación: 19-09-2023 a las 05:28:04
--

CREATE TABLE `rankings` (
  `RankingID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Score` int(11) NOT NULL DEFAULT 0,
  `Rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rankings`
--

INSERT INTO `rankings` (`RankingID`, `UserID`, `Score`, `Rank`) VALUES
(2, 22, 0, 0),
(3, 23, 51, 0),
(4, 24, 101, 0),
(5, 25, 201, 0),
(6, 26, 301, 0),
(7, 27, 401, 0),
(8, 28, 501, 0),
(9, 35, 601, 0),
(10, 36, 701, 0),
(12, 38, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposnotificaciones`
--
-- Creación: 19-09-2023 a las 05:28:04
--

CREATE TABLE `tiposnotificaciones` (
  `TiposNotificacionesID` int(11) NOT NULL,
  `Nombre_tipo` varchar(60) NOT NULL,
  `Mensaje_notificacion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--
-- Creación: 19-09-2023 a las 05:28:04
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `PrivilegioID` int(11) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellidos` varchar(25) NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Activacion` int(11) NOT NULL DEFAULT 0,
  `Token` varchar(150) NOT NULL,
  `Token_password` varchar(150) DEFAULT NULL,
  `Password_request` int(11) NOT NULL DEFAULT 0,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`UserID`, `PrivilegioID`, `Username`, `Nombre`, `Apellidos`, `Email`, `Password`, `Activacion`, `Token`, `Token_password`, `Password_request`, `RegistrationDate`) VALUES
(22, 2, 'Jeycko-_', 'Jacobo', 'Herrera', 'herrerajacobo693@gmail.com', '$2y$10$mHduwfPevNTfDcAeUWqEcuu1.7kwnCwL6MjiYiHeU.xnXOMdI2Dkq', 0, '2616d62f6d37011c22e7fbc2e1ff5de0bab370eba880c528d164e5f7812b126a', NULL, 0, '2023-09-18 23:42:25'),
(23, 2, 'Troolcris12', 'Cristian', 'Gaviria', 'cristiangaviriaocampo@gmail.com', '$2y$10$EeyBsgHavr84hw63HaLSvegN.yQDZy6CLpjrhjQwWZMaMrfqyI4.2', 0, '99b2553db4ffe8ced658517b3a55a84be491432992425311e4db7f17ff33f972', NULL, 0, '2023-09-18 23:46:41'),
(24, 2, 'Alvarez_Tec21', 'Santiago', 'Alvares', 'troolcris13psn@gmail.com', '$2y$10$4DDGGoJ.eawvsOXMu0jDLOft3HYOlbBL.HRNoH0spmMDISq./zop.', 0, '077e14c7c70e74649044afe4c44ce8420cf2629e02ec55af01a4c439c22fecb8', NULL, 0, '2023-09-18 23:48:13'),
(25, 2, 'Alvares.123', 'Santiago', 'Perez', 'cristian.dgo.123@gmail.com', '$2y$10$47IPKtOtCuzfBiJPPCOL5eAvnAXEMEzB7pOxwtPcvUYkO0SOmrW.O', 0, '5f99b12ff9f83fe4c6615544cda45fa5d0f135297b76ffbdd0ccad8ac9e5d206', NULL, 0, '2023-09-18 23:50:12'),
(26, 2, 'Añañin_Tecnico2', 'Felipe', 'Cardona', 'caballoflores224@gmail.com', '$2y$10$BStbBCRn2LficG8LKFvfQOCPu2vMlczxUK6CuIToU2eVX2mvRso4.', 0, 'd9fdade84f377f7c645d1a766bc803ad18cb39b447aae7ec6a8febfbead11ea9', NULL, 0, '2023-09-18 23:51:25'),
(27, 2, 'ArmandoParedes_', 'Luis', 'Armando', 'andrewcardonamurillo@gmail.com', '$2y$10$S6Y9Qrictvb86CsLUe4C4eZ53/90ZDuuaUoZIsJIGwxLqGuDHkA0i', 0, 'f05e219380722067cfb55911f33cf6734064ea1734c11d881d8e34d0d814285a', NULL, 0, '2023-09-18 23:52:47'),
(28, 2, 'AlambritoTecnol', 'Alambirto', 'Puas', 'duverzapatajaramillo65@gmail.com', '$2y$10$XfJtdlukoqSoFvm8WCTEr./1Aghc7HgpU6jclZIyJiDitY7CJFaOm', 0, 'dafc2b2bebb6e9e76d617b81c9c885dd5c0682482784201b0b0c4045cef90f81', NULL, 0, '2023-09-18 23:54:41'),
(35, 2, 'Prueba123', 'El mejor', 'Usuario', 'codelohubper@gmail.com', '$2y$10$S9KX2Z0Y6/NaY1OeZyABUeLO46d51KpJTbSYrPKYUxfPgeRj.X5iS', 0, '5802ce6ebcff6fbae368d4b3950fe39b938ddc0a4c0fb6e149d124f98e7181f6', NULL, 0, '2023-09-19 00:02:12'),
(36, 2, 'CodeLoHubper', 'codelohubper@hotmail.com', 'Codelo', 'codelohubper@hotmail.com', '$2y$10$ngvgrND0gXsixeqO9FNEVetykkRAVX7xZqCl1Parvl9Ur3rci0SzG', 0, 'd0f228997f498b68d59d0824e992c35993c3c952310126b694d9c2940f1d70e3', NULL, 0, '2023-09-19 00:03:13'),
(38, 2, 'gobernante31', 'Emmanuel', 'Calle Ocampo', 'gobernante31@gmail.com', '$2y$10$ylyaMf8i7ON4RVbehoI2Te2oudFri.mt865mB7CEqMh5yj5kX9zOu', 1, '', NULL, 0, '2023-09-19 05:52:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `desafios`
--
ALTER TABLE `desafios`
  ADD PRIMARY KEY (`DesafioID`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`NotificacionID`),
  ADD KEY `UserNotificaciones` (`UserID`),
  ADD KEY `TipoNotificaciones` (`TipoNotificacionID`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`PerfilID`),
  ADD KEY `UserPerfil` (`UserID`);

--
-- Indices de la tabla `privilegios`
--
ALTER TABLE `privilegios`
  ADD PRIMARY KEY (`PrivilegioID`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`PublicacionID`),
  ADD KEY `UserPublicaciones` (`UserID`);

--
-- Indices de la tabla `rankings`
--
ALTER TABLE `rankings`
  ADD PRIMARY KEY (`RankingID`),
  ADD KEY `UserRanking` (`UserID`) USING BTREE;

--
-- Indices de la tabla `tiposnotificaciones`
--
ALTER TABLE `tiposnotificaciones`
  ADD PRIMARY KEY (`TiposNotificacionesID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `unico_username` (`Username`) USING BTREE,
  ADD UNIQUE KEY `unico_email` (`Email`),
  ADD KEY `PrivilegioUser` (`PrivilegioID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `desafios`
--
ALTER TABLE `desafios`
  MODIFY `DesafioID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `NotificacionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `PerfilID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `PublicacionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `rankings`
--
ALTER TABLE `rankings`
  MODIFY `RankingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `TipoNotificaciones` FOREIGN KEY (`TipoNotificacionID`) REFERENCES `tiposnotificaciones` (`TiposNotificacionesID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserNotificaciones` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `UserPerfil` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `UserPublicaciones` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rankings`
--
ALTER TABLE `rankings`
  ADD CONSTRAINT `UserID` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `PrivilegioUser` FOREIGN KEY (`PrivilegioID`) REFERENCES `privilegios` (`PrivilegioID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
