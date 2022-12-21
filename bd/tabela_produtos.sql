CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_produto` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Codigo_barras` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao_produto` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unidade_produto` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor_unitario_produto` float DEFAULT NULL,
  `quantidade_produto` int(11) DEFAULT NULL,
  `valor_total_produto` float DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
