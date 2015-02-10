# ************************************************************
# Sequel Pro SQL dump
# Versión 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.22)
# Base de datos: MyDataBase
# Tiempo de Generación: 2015-02-10 02:27:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla cursos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cursos`;

CREATE TABLE `cursos` (
  `idCurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCurso` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `codigoCurso` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;

INSERT INTO `cursos` (`idCurso`, `nombreCurso`, `codigoCurso`)
VALUES
	(1,X'50726F6772616D6163696F6E20576562',X'313030'),
	(2,X'50726F6772616D6163696F6E20656E20526564',X'313031'),
	(3,X'446973656E6F20426964696D656E73696F6E616C',X'313032');

/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla notas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notas`;

CREATE TABLE `notas` (
  `idNota` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `idTipo` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idNota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;

INSERT INTO `notas` (`idNota`, `valor`, `idTipo`, `idCurso`, `idUsuario`)
VALUES
	(1,4.5,1,1,1),
	(2,4,2,1,1),
	(3,4.8,3,1,1),
	(4,3,1,2,2),
	(5,4,2,2,2),
	(6,1,3,2,2),
	(7,4,1,3,3),
	(8,3.8,2,3,3),
	(9,1.9,3,3,3),
	(10,4.5,1,1,2),
	(11,5,2,1,2),
	(12,3.2,3,1,2),
	(13,3.6,1,2,3),
	(14,4,2,2,3),
	(15,5,3,2,3),
	(16,5,1,3,1),
	(17,4.5,2,3,1),
	(18,3,3,3,1),
	(19,4,1,1,3),
	(20,3.5,2,1,3),
	(21,4.8,3,1,3),
	(22,3.9,1,2,1),
	(23,4.2,2,2,1),
	(24,4.3,3,2,1),
	(25,5,1,3,2),
	(26,3.9,2,3,2),
	(27,2,3,3,2);

/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla tipo_nota
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipo_nota`;

CREATE TABLE `tipo_nota` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `porcentajeNota` float NOT NULL,
  `nombreNota` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `tipo_nota` WRITE;
/*!40000 ALTER TABLE `tipo_nota` DISABLE KEYS */;

INSERT INTO `tipo_nota` (`idTipo`, `porcentajeNota`, `nombreNota`)
VALUES
	(1,0.3,X'5072696D65726120656E7472656761'),
	(2,0.3,X'536567756E646120656E7472656761'),
	(3,0.4,X'456E74726567612066696E616C');

/*!40000 ALTER TABLE `tipo_nota` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla usuarios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `codigoUsuario` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `nombreUsuario` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;

INSERT INTO `usuarios` (`idUsuario`, `codigoUsuario`, `nombreUsuario`)
VALUES
	(1,X'3132323132303634',X'5665726F6E69636120416C6567726961'),
	(2,X'3132323132303633',X'44616E69656C612044656C6761646F'),
	(3,X'3132323132303632',X'4E617468616C6965204172616E61');

/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla usuarios_curso
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuarios_curso`;

CREATE TABLE `usuarios_curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `usuarios_curso` WRITE;
/*!40000 ALTER TABLE `usuarios_curso` DISABLE KEYS */;

INSERT INTO `usuarios_curso` (`id`, `idUsuario`, `idCurso`)
VALUES
	(1,1,1),
	(2,1,2),
	(3,1,3),
	(4,2,1),
	(5,2,3),
	(6,3,1),
	(7,3,2);

/*!40000 ALTER TABLE `usuarios_curso` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
