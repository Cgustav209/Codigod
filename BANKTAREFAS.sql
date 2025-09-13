CREATE DATABASE bankTAREFA;
USE bankTAREFA;

CREATE TABLE `bancos` (
  `id_banco` int(11) NOT NULL,
  `nome_banco` varchar(100) NOT NULL,
  `codigo_banco` varchar(10) NOT NULL
);
INSERT INTO bancos(id_banco, nome_banco, codigo_banco) VALUES (1, 'Banco Central', '001'),(2, 'Banco do Brasil', '002'),(3, 'Caixa Econômica', '003'),
(4, 'Itaú Unibanco', '004'),(5, 'Bradesco', '005'),(6, 'Santander', '006'),(7, 'Banco Safra', '007'),(8, 'Banco Inter', '008'),(9, 'Banco BTG Pactual', '009'),
(10, 'Banco Original', '010'),(11, 'Banco Neon', '011'),(12, 'Banco Pan', '012'),(13, 'Banco Votorantim', '013'),(14, 'Banco Daycoval', '014'),(15, 'Banco C6', '015'),
(16, 'Banco Agibank', '016'),(17, 'Banco Modal', '017'),(18, 'Banco BMG', '018'),(19, 'Banco ABC Brasil', '019'),(20, 'Banco Rural', '020');

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL
);
INSERT INTO clientes(id_cliente, nome, email, cpf, telefone) VALUES
(1, 'Rafael Silva', 'rafael.silva@email.com', '12345678901', '11987654321'),
(2, 'Geovanny Costa', 'geovanny.costa@email.com', '23456789012', '11912345678'),
(3, 'Sikora Mendes', 'sikora.mendes@email.com', '34567890123', '11923456789'),
(4, 'Ana Souza', 'ana.souza@email.com', '45678901234', '11934567890'),
(5, 'Lilian Oliveira', 'lilian.oliveira@email.com', '56789012345', '11945678901'),
(6, 'Lorena Pereira', 'lorena.pereira@email.com', '67890123456', '11956789012'),
(7, 'Danilo Fernandes', 'danilo.fernandes@email.com', '78901234567', '11967890123'),
(8, 'Sofia Almeida', 'sofia.almeida@email.com', '89012345678', '11978901234'),
(9, 'Carlos Mendes', 'carlos.mendes@email.com', '90123456789', '11989012345'),
(10, 'Mariana Lima', 'mariana.lima@email.com', '01234567890', '11990123456'),
(11, 'Felipe Rocha', 'felipe.rocha@email.com', '11234567890', '11911223344'),
(12, 'Juliana Martins', 'juliana.martins@email.com', '12234567890', '11922334455'),
(13, 'Lucas Carvalho', 'lucas.carvalho@email.com', '13234567890', '11933445566'),
(14, 'Beatriz Gomes', 'beatriz.gomes@email.com', '14234567890', '11944556677'),
(15, 'Pedro Alves', 'pedro.alves@email.com', '15234567890', '11955667788'),
(16, 'Camila Ribeiro', 'camila.ribeiro@email.com', '16234567890', '11966778899'),
(17, 'André Santos', 'andre.santos@email.com', '17234567890', '11977889900'),
(18, 'Patrícia Souza', 'patricia.souza@email.com', '18234567890', '11988990011'),
(19, 'Ricardo Dias', 'ricardo.dias@email.com', '19234567890', '11999001122'),
(20, 'Fernanda Silva', 'fernanda.silva@email.com', '20234567890', '11910101010');



CREATE TABLE `contas` (
  `id_conta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  `tipo_conta` varchar(50) NOT NULL,
  `saldo` decimal(10,2) NOT NULL
);
INSERT INTO contas(id_conta, id_cliente, id_banco, tipo_conta, saldo) VALUES
(1, 1, 4, 'Corrente', 2500.00),(2, 2, 2, 'Poupança', 1500.50),(3, 3, 3, 'Corrente', 3200.75),
(4, 4, 1, 'Salário', 1200.00),(5, 5, 5, 'Corrente', 5000.00),(6, 6, 6, 'Poupança', 2700.20),
(7, 7, 7, 'Corrente', 350.00),(8, 8, 8, 'Salário', 1800.00),(9, 9, 9, 'Corrente', 2200.90),
(10, 10, 10, 'Poupança', 4100.00),(11, 11, 11, 'Corrente', 900.00),(12, 12, 12, 'Salário', 2300.45),
(13, 13, 13, 'Corrente', 150.00),(14, 14, 14, 'Poupança', 750.00),(15, 15, 15, 'Corrente', 9800.00),
(16, 16, 16, 'Salário', 400.00),(17, 17, 17, 'Corrente', 3600.00),(18, 18, 18, 'Poupança', 2600.60),
(19, 19, 19, 'Corrente', 1700.00),(20, 20, 20, 'Salário', 1200.00);


CREATE TABLE `pagamentos` (
  `id_pagamento` int(11) NOT NULL,
  `id_conta` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_pagamento` datetime DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
);
INSERT INTO pagamentos(id_pagamento, id_conta, id_cliente, valor, setar_data_pg, status) VALUES
(1, 1, 1, 500.00, '2025-08-20 10:00:00', 'Concluído'),
(2, 2, 2, 150.75, '2025-08-19 09:30:00', 'Concluído'),
(3, 3, 3, 220.40, '2025-08-18 15:45:00', 'Pendente'),
(4, 4, 4, 1000.00, '2025-08-17 12:00:00', 'Concluído'),
(5, 5, 5, 350.50, '2025-08-16 14:20:00', 'Cancelado'),
(6, 6, 6, 420.00, '2025-08-15 16:10:00', 'Concluído'),
(7, 7, 7, 75.00, '2025-08-14 08:30:00', 'Pendente'),
(8, 8, 8, 600.00, '2025-08-13 11:15:00', 'Concluído'),
(9, 9, 9, 200.00, '2025-08-12 10:00:00', 'Cancelado'),
(10, 10, 10, 900.00, '2025-08-11 13:45:00', 'Concluído'),
(11, 11, 11, 50.00, '2025-08-10 09:00:00', 'Pendente'),
(12, 12, 12, 800.00, '2025-08-09 17:30:00', 'Concluído'),
(13, 13, 13, 120.00, '2025-08-08 14:00:00', 'Cancelado'),
(14, 14, 14, 400.00, '2025-08-07 15:20:00', 'Concluído'),
(15, 15, 15, 1000.00, '2025-08-06 11:50:00', 'Pendente'),
(16, 16, 16, 300.00, '2025-08-05 10:15:00', 'Concluído'),
(17, 17, 17, 650.00, '2025-08-04 16:45:00', 'Concluído'),
(18, 18, 18, 250.00, '2025-08-03 13:30:00', 'Cancelado'),
(19, 19, 19, 400.00, '2025-08-02 09:45:00', 'Concluído'),
(20, 20, 20, 700.00, '2025-08-01 12:00:00', 'Pendente');




CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario_nome` varchar(200) NOT NULL,
  `usuario_email` varchar(200) NOT NULL,
  `usuario_foto` varchar(255) NOT NULL,
  `usuario_nascimento` date NOT NULL,
  `usuario_idade` int(11) NOT NULL
);
INSERT INTO usuario(id_usuario, usuario_nome, usuario_email, usuario_foto, usuario_nascimento, usuario_idade) VALUES
(1, 'Rafael Silva', 'rafael.silva@email.com', 'https://example.com/fotos/rafael.jpg', '1990-05-10', 35),
(2, 'Geovanny Costa', 'geovanny.costa@email.com', 'https://example.com/fotos/geovanny.jpg', '1985-08-22', 39),
(3, 'Sikora Mendes', 'sikora.mendes@email.com', 'https://example.com/fotos/sikora.jpg', '1992-11-03', 32),
(4, 'Ana Souza', 'ana.souza@email.com', 'https://example.com/fotos/ana.jpg', '1995-07-15', 28),
(5, 'Lilian Oliveira', 'lilian.oliveira@email.com', 'https://example.com/fotos/lilian.jpg', '1988-01-30', 36),
(6, 'Lorena Pereira', 'lorena.pereira@email.com', 'https://example.com/fotos/lorena.jpg', '1993-04-27', 31),
(7, 'Danilo Fernandes', 'danilo.fernandes@email.com', 'https://example.com/fotos/danilo.jpg', '1987-12-19', 36),
(8, 'Sofia Almeida', 'sofia.almeida@email.com', 'https://example.com/fotos/sofia.jpg', '1994-09-05', 29),
(9, 'Carlos Mendes', 'carlos.mendes@email.com', 'https://example.com/fotos/carlos.jpg', '1991-03-11', 33),
(10, 'Mariana Lima', 'mariana.lima@email.com', 'https://example.com/fotos/mariana.jpg', '1989-06-24', 34),
(11, 'Felipe Rocha', 'felipe.rocha@email.com', 'https://example.com/fotos/felipe.jpg', '1986-10-08', 38),
(12, 'Juliana Martins', 'juliana.martins@email.com', 'https://example.com/fotos/juliana.jpg', '1990-02-17', 35),
(13, 'Lucas Carvalho', 'lucas.carvalho@email.com', 'https://example.com/fotos/lucas.jpg', '1993-12-03', 31),
(14, 'Beatriz Gomes', 'beatriz.gomes@email.com', 'https://example.com/fotos/beatriz.jpg', '1992-08-19', 32),
(15, 'Pedro Alves', 'pedro.alves@email.com', 'https://example.com/fotos/pedro.jpg', '1984-11-25', 40),
(16, 'Camila Ribeiro', 'camila.ribeiro@email.com', 'https://example.com/fotos/camila.jpg', '1995-05-14', 28),
(17, 'André Santos', 'andre.santos@email.com', 'https://example.com/fotos/andre.jpg', '1987-07-01', 36),
(18, 'Patrícia Souza', 'patricia.souza@email.com', 'https://example.com/fotos/patricia.jpg', '1991-09-29', 33),
(19, 'Ricardo Dias', 'ricardo.dias@email.com', 'https://example.com/fotos/ricardo.jpg', '1989-01-12', 34),
(20, 'Fernanda Silva', 'fernanda.silva@email.com', 'https://example.com/fotos/fernanda.jpg', '1990-04-22', 35);


CREATE TABLE `venda` (
  `id_venda` int(11) NOT NULL,
  `venda_nome` varchar(150) NOT NULL,
  `venda_numero` varchar(3) NOT NULL,
  `venda_whatsapp` int(11) NOT NULL,
  `venda_email` varchar(100) NOT NULL,
  `venda_pago` tinyint(1) NOT NULL DEFAULT 0,
  `Venda_sorteado` tinyint(1) NOT NULL DEFAULT 0
);
INSERT INTO venda(id_venda, venda_nome, venda_numero, venda_whatsapp, venda_email, venda_pago, Venda_sorteado) VALUES
(1, 'Rafael Silva', '001', 998877665, 'rafael.silva@email.com', 1, 0),
(2, 'Geovanny Costa', '002', 997755443, 'geovanny.costa@email.com', 0, 0),
(3, 'Sikora Mendes', '003', 996644332, 'sikora.mendes@email.com', 1, 1),
(4, 'Ana Souza', '004', 995533221, 'ana.souza@email.com', 0, 0),
(5, 'Lilian Oliveira', '005', 994422110, 'lilian.oliveira@email.com', 1, 1),
(6, 'Lorena Pereira', '006', 993311009, 'lorena.pereira@email.com', 1, 0),
(7, 'Danilo Fernandes', '007', 992200998, 'danilo.fernandes@email.com', 0, 0),
(8, 'Sofia Almeida', '008', 991100887, 'sofia.almeida@email.com', 1, 1),
(9, 'Carlos Mendes', '009', 990099776, 'carlos.mendes@email.com', 0, 0),
(10, 'Mariana Lima', '010', 989988665, 'mariana.lima@email.com', 1, 0),
(11, 'Felipe Rocha', '011', 988877554, 'felipe.rocha@email.com', 0, 0),
(12, 'Juliana Martins', '012', 987766443, 'juliana.martins@email.com', 1, 1),
(13, 'Lucas Carvalho', '013', 986655332, 'lucas.carvalho@email.com', 1, 0),
(14, 'Beatriz Gomes', '014', 985544221, 'beatriz.gomes@email.com', 0, 0),
(15, 'Pedro Alves', '015', 984433110, 'pedro.alves@email.com', 1, 1),
(16, 'Camila Ribeiro', '016', 983322009, 'camila.ribeiro@email.com', 0, 0),
(17, 'André Santos', '017', 982211998, 'andre.santos@email.com', 1, 0),
(18, 'Patrícia Souza', '018', 981100887, 'patricia.souza@email.com', 0, 0),
(19, 'Ricardo Dias', '019', 980099776, 'ricardo.dias@email.com', 1, 1),
(20, 'Fernanda Silva', '020', 979988665, 'fernanda.silva@email.com', 0, 0);


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
