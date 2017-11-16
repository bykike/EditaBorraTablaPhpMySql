CREATE TABLE `menu` (
	`idMenu` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'width:30,ali:right',
	`androidID` VARCHAR(50) NULL DEFAULT '0' COMMENT 'width:100' COLLATE 'latin1_swedish_ci',
	`texto` VARCHAR(50) NULL DEFAULT '0' COMMENT 'width:200' COLLATE 'latin1_swedish_ci',
	`icono` VARCHAR(50) NULL DEFAULT NULL COMMENT 'tipo:ico,blanco:null' COLLATE 'latin1_swedish_ci',
	`padre` INT(11) NULL DEFAULT '0' COMMENT 'tipo:sel,valor:idMenu,texto:texto,where:padre=\'0\',blanco:0',
	`activo` CHAR(1) NULL DEFAULT '0' COMMENT 'tipo:bool' COLLATE 'latin1_swedish_ci',
	`orden` CHAR(2) NULL DEFAULT '0' COMMENT 'width:30, ali:right' COLLATE 'latin1_swedish_ci',
	UNIQUE INDEX `idMenu` (`idMenu`)
)
COLLATE='utf8_general_ci'
ENGINE=MyISAM
AUTO_INCREMENT=14;

INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (1, 'nav_telefonos', 'Teléfonos de Interés', '@android:drawable/ic_menu_call.png', 0, '1', '1');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (2, 'nav_Fiestas', 'Fiestas', '@drawable/ic_menu_fiestas.png', 0, '1', '2');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (3, 'nav_Fiestas_Mayo', 'La Ascensión', '@drawable/ic_menu_fiestas.png', 2, '1', '3');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (4, 'nav_Fiestas_Agosto', 'La Virjen y San Roque', '@drawable/ic_menu_fiestas.png', 2, '1', '4');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (5, 'nav_Infra', 'Infraestructuras', '@drawable/ic_menu_ayto', 0, '1', '5');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (6, 'nav_Colec', 'Colectivos', '', 0, '1', '6');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (7, 'nav_Colec_AsocDep', 'Asociaciones Deportivas', '@drawable/ic_menu_deportivas.png', 6, '1', '7');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (8, 'nav_Fiestas_Penias', 'Peñas', '@drawable/ic_menu_penia.png', 2, '1', '8');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (9, 'nav_Infra_Educ', 'Educativas', '@drawable/ic_menu_educacion.png', 5, '1', '1');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (10, 'nav_Infra_Ayun', 'Ayuntamiento', '@drawable/ic_menu_ayto.png', 5, '1', '0');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (11, 'nav_Infra_Cult', 'Culturales', '@drawable/ic_menu_cultura.png', 5, '1', '2');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (12, 'nav_Infra_Depor', 'Deportivas', '@drawable/ic_menu_deporte.png', 5, '1', '3');
INSERT INTO `menu` (`idMenu`, `androidID`, `texto`, `icono`, `padre`, `activo`, `orden`) VALUES (13, 'nav_Infra_Soc', 'Sociales', '@drawable/ic_menu_social.png', 5, '1', '4');
