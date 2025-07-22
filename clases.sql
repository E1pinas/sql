-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.8.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_aprendizaje
CREATE DATABASE IF NOT EXISTS `bd_aprendizaje` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `bd_aprendizaje`;

-- Volcando estructura para tabla bd_aprendizaje.tb_articulos
CREATE TABLE IF NOT EXISTS `tb_articulos` (
  `codigo_articulos` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_articulos` varchar(80) DEFAULT NULL,
  `marca_articulo` varchar(30) DEFAULT NULL,
  `codigo_unidad` int(11) DEFAULT NULL,
  `codigo_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_articulos`),
  KEY `FK_tb_articulos_tb_unidad` (`codigo_unidad`),
  KEY `FK_tb_articulos_tb_categorias` (`codigo_categoria`),
  CONSTRAINT `FK_tb_articulos_tb_categorias` FOREIGN KEY (`codigo_categoria`) REFERENCES `tb_categorias` (`codigo_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tb_articulos_tb_unidad` FOREIGN KEY (`codigo_unidad`) REFERENCES `tb_unidad` (`codigo_unidad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla bd_aprendizaje.tb_articulos: ~2 rows (aproximadamente)
INSERT INTO `tb_articulos` (`codigo_articulos`, `descripcion_articulos`, `marca_articulo`, `codigo_unidad`, `codigo_categoria`) VALUES
	(1, 'ESCRITORIO', 'STANDARD', 1, 1),
	(2, 'SILLA', 'STANDARD', 1, 2);

-- Volcando estructura para tabla bd_aprendizaje.tb_categorias
CREATE TABLE IF NOT EXISTS `tb_categorias` (
  `codigo_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_categoria` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla bd_aprendizaje.tb_categorias: ~4 rows (aproximadamente)
INSERT INTO `tb_categorias` (`codigo_categoria`, `descripcion_categoria`) VALUES
	(1, 'OFICINAS'),
	(2, 'HOGAR'),
	(3, 'FERRETERIA'),
	(4, 'NEGOCIOS');

-- Volcando estructura para tabla bd_aprendizaje.tb_unidad
CREATE TABLE IF NOT EXISTS `tb_unidad` (
  `codigo_unidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_unidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_unidad`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla bd_aprendizaje.tb_unidad: ~6 rows (aproximadamente)
INSERT INTO `tb_unidad` (`codigo_unidad`, `descripcion_unidad`) VALUES
	(1, 'UNIDADES'),
	(2, 'KILOGRAMOS'),
	(3, 'LITROS'),
	(4, 'METROS'),
	(5, 'CAJAS'),
	(6, 'PACKS');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
