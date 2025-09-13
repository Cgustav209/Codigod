
CREATE TABLE `bancos` (
  `id_banco` int(11) NOT NULL,
  `nome_banco` varchar(100) NOT NULL,
  `codigo_banco` varchar(10) NOT NULL
);

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL
);


CREATE TABLE `contas` (
  `id_conta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  `tipo_conta` varchar(50) NOT NULL,
  `saldo` decimal(10,2) NOT NULL
);

CREATE TABLE `pagamentos` (
  `id_pagamento` int(11) NOT NULL,
  `id_conta` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_pagamento` datetime DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
);

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario_nome` varchar(200) NOT NULL,
  `usuario_email` varchar(200) NOT NULL,
  `usuario_foto` varchar(255) NOT NULL,
  `usuario_nascimento` date NOT NULL,
  `usuario_idade` int(11) NOT NULL
);

CREATE TABLE `venda` (
  `id_venda` int(11) NOT NULL,
  `venda_nome` varchar(150) NOT NULL,
  `venda_numero` varchar(3) NOT NULL,
  `venda_whatsapp` int(11) NOT NULL,
  `venda_email` varchar(100) NOT NULL,
  `venda_pago` tinyint(1) NOT NULL DEFAULT 0,
  `Venda_sorteado` tinyint(1) NOT NULL DEFAULT 0
);

ALTER TABLE `bancos`
  ADD PRIMARY KEY (`id_banco`);

ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

ALTER TABLE `contas`
  ADD PRIMARY KEY (`id_conta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_banco` (`id_banco`);

ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_conta` (`id_conta`);

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

ALTER TABLE `venda`
  ADD PRIMARY KEY (`id_venda`);

ALTER TABLE `bancos`
  MODIFY `id_banco` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `contas`
  MODIFY `id_conta` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `pagamentos`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `venda`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `contas`
  ADD CONSTRAINT `contas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `contas_ibfk_2` FOREIGN KEY (`id_banco`) REFERENCES `bancos` (`id_banco`);


ALTER TABLE `pagamentos`
  ADD CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `pagamentos_ibfk_2` FOREIGN KEY (`id_conta`) REFERENCES `contas` (`id_conta`);
