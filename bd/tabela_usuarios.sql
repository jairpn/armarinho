CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha_usuario` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario_ativo` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
