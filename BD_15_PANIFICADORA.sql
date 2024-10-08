CREATE DATABASE panificadora;
USE panificadora;

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL);
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id));
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(15));
CREATE TABLE fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15));
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id));
CREATE TABLE itens_pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id));
CREATE TABLE estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id));
CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    quantidade INT NOT NULL,
    data DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id));
    
CREATE INDEX idx_produto_nome ON produtos(nome);
CREATE INDEX idx_pedido_data ON pedidos(data);

INSERT INTO categorias (nome) VALUES 
('Pães'), 
('Bolos'), 
('Doces'), 
('Salgados'), 
('Frutas'), 
('Legumes'), 
('Verduras'), 
('Bebidas'), 
('Laticínios'), 
('Carnes'), 
('Peixes'), 
('Aves'), 
('Grãos'), 
('Arroz'), 
('Massas'), 
('Sopas'), 
('Saladas'), 
('Sanduíches'), 
('Biscoitos'), 
('Chocolates'), 
('Gelados'), 
('Sorvetes'), 
('Molhos'), 
('Condimentos'), 
('Temperos'), 
('Farinhas'), 
('Oleaginosas'), 
('Sementes'), 
('Ervas'), 
('Especiarias'), 
('Produtos Integrais'), 
('Alimentos Orgânicos'), 
('Alimentos Congelados'), 
('Alimentos Enlatados'), 
('Snacks'), 
('Petiscos'), 
('Tortas'), 
('Crepes'), 
('Pudins'), 
('Cremes'), 
('Geléias'), 
('Doces Caseiros'), 
('Bombons'), 
('Trufas'), 
('Bebidas Alcoólicas'), 
('Sucos Naturais'), 
('Chás'), 
('Cafés'), 
('Águas Saborizadas'), 
('Refrigerantes'), 
('Energéticos'), 
('Combos'), 
('Pratos Prontos'), 
('Comida Vegetariana'), 
('Comida Vegana'), 
('Comida Internacional'), 
('Comida Típica'), 
('Comida Rápida'), 
('Alimentos Funcionais'), 
('Alimentos Sem Glúten'), 
('Alimentos Sem Lactose'), 
('Alimentos Diet'), 
('Alimentos Light'), 
('Alimentos Integral'), 
('Alimentos Gourmet'), 
('Alimentos Artesanais'), 
('Alimentos Naturais'), 
('Alimentos para Bebês'), 
('Alimentos para Crianças'), 
('Alimentos para Dietas Especiais'), 
('Alimentos de Confeitaria'), 
('Doces de Festa'), 
('Bolos Decorados'), 
('Alimentos de Cafeteria'), 
('Alimentos de Padaria'), 
('Alimentos de Mercearia'), 
('Alimentos de Mercado'), 
('Alimentos de Feira'), 
('Alimentos de Armazém'), 
('Alimentos de Restaurante'), 
('Alimentos de Food Truck'), 
('Alimentos de Lanchonete'), 
('Alimentos de Buffet'), 
('Alimentos de Cantina'), 
('Alimentos de Cervejaria'), 
('Alimentos de Churrascaria'), 
('Alimentos de Pizzaria');
INSERT INTO produtos (nome, preco, categoria_id) VALUES 
('Pão Francês', 0.50, 1),
('Pão de Queijo', 1.00, 1),
('Bolo de Chocolate', 15.00, 2),
('Torta de Limão', 12.00, 2),
('Coxinha', 3.00, 4),
('Pastel', 2.50, 4),
('Bolo de Cenoura', 10.00, 2),
('Pão de Mel', 8.00, 1),
('Biscoito de Polvilho', 2.00, 1),
('Torta de Frutas', 14.00, 2),
('Empada', 4.00, 4),
('Pão Integral', 1.80, 1),
('Brownie', 5.00, 2),
('Salgadinho', 1.50, 4),
('Pão Australiano', 2.20, 1),
('Bolo de Rolo', 18.00, 2),
('Quiche', 7.50, 4),
('Chipa', 1.80, 1),
('Pudim', 6.00, 2),
('Geléia de Frutas', 3.50, 3),
('Pão de Alho', 2.80, 1),
('Torta de Aipim', 9.00, 2),
('Salgado Assado', 3.50, 4),
('Bolo de Noz', 16.00, 2),
('Crepe', 6.50, 4),
('Sanduíche Natural', 5.00, 4),
('Almôndega', 4.50, 4),
('Pizza Margherita', 20.00, 4),
('Tapioca', 3.00, 4),
('Sopa de Legumes', 5.50, 3),
('Salada de Frutas', 4.00, 3),
('Brownie de Chocolate', 7.00, 2),
('Bolo de Baunilha', 12.00, 2),
('Biscoito de Chocolate', 2.50, 1),
('Muffin de Blueberry', 3.20, 2),
('Focaccia', 4.50, 1),
('Pão de Centeio', 2.00, 1),
('Torta de Chocolate', 15.00, 2),
('Café', 2.00, 5),
('Chá Gelado', 3.00, 5),
('Suco de Laranja', 4.00, 5),
('Refrigerante', 2.50, 5),
('Água Mineral', 1.00, 5),
('Sorvete de Creme', 5.00, 6),
('Picolé de Fruta', 2.00, 6),
('Bolo de Limão', 11.00, 2),
('Torta de Abacaxi', 13.00, 2),
('Gelatina', 1.50, 3),
('Pão de Batata', 2.00, 1),
('Pasta de Amendoim', 5.00, 3),
('Cereal', 4.00, 3),
('Iogurte', 2.50, 3),
('Fruta da Estação', 1.00, 3),
('Mel', 4.50, 3),
('Granola', 3.00, 3),
('Pão Sírio', 2.20, 1),
('Bolo de Frutas', 14.00, 2),
('Biscoito Integral', 2.80, 1),
('Coxinha de Frango', 3.50, 4),
('Crepe de Nutella', 6.00, 4),
('Pizza de Calabresa', 22.00, 4),
('Salada Caesar', 8.50, 3),
('Omelete', 5.00, 4),
('Tapioca Doce', 3.50, 4),
('Pão de Ló', 10.00, 2),
('Sushi', 15.00, 4),
('Churrasco', 25.00, 4),
('Feijoada', 20.00, 4),
('Cuscuz', 4.50, 3),
('Salada Grega', 7.00, 3),
('Espaguete à Bolonhesa', 15.00, 4),
('Lasanha', 18.00, 4),
('Frango Grelhado', 12.00, 4),
('Taco', 7.50, 4),
('Sushi de Salmão', 20.00, 4),
('Pasta ao Pesto', 14.00, 4),
('Ratatouille', 10.00, 3),
('Burguer Vegetariano', 9.00, 4),
('Pão de Forma', 3.00, 1),
('Pudim de Leite', 6.50, 2),
('Torta de Morango', 13.00, 2),
('Pavê', 7.00, 2),
('Bolacha de Maizena', 2.00, 1),
('Bolo de Morango', 15.00, 2),
('Canelone', 12.00, 4),
('Churros', 5.00, 4),
('Café Gelado', 3.50, 5),
('Picolé de Chocolate', 2.50, 6),
('Bolo de Rolo', 18.00, 2),
('Biscoito de Gengibre', 2.20, 1);
INSERT INTO clientes (nome, cpf, telefone) VALUES 
('João Silva', '12345678901', '11987654321'),
('Maria Oliveira', '10987654321', '11912345678'),
('Ana Santos', '11122233344', '11923456789'),
('Carlos Pereira', '22233344455', '11934567890'),
('Fernanda Lima', '33344455566', '11945678901'),
('Roberto Costa', '44455566677', '11956789012'),
('Patrícia Martins', '55566677788', '11967890123'),
('Juliana Almeida', '66677788899', '11978901234'),
('Lucas Ferreira', '77788899900', '11989012345'),
('Gabriel Rocha', '88899900011', '11990123456'),
('Ricardo Mendes', '99900011122', '11901234567'),
('Laura Oliveira', '00011122233', '11912345678'),
('Julio Gomes', '12332112345', '11923456789'),
('Sofia Costa', '32143254321', '11934567890'),
('Roberta Santos', '45665465456', '11945678901'),
('Fernando Lima', '65445698712', '11956789012'),
('André Souza', '78987654321', '11967890123'),
('Michele Dias', '98765432100', '11978901234'),
('Tatiane Pires', '01234567890', '11989012345'),
('Gustavo Cardoso', '11122233345', '11990123456'),
('Mariana Rocha', '22233344456', '11901234567'),
('Thiago Martins', '33344455567', '11912345678'),
('Renata Almeida', '44455566678', '11923456789'),
('Vinícius Ferreira', '55566677789', '11934567890'),
('Isabela Andrade', '66677788890', '11945678901'),
('Eduardo Carvalho', '77788899901', '11956789012'),
('Aline Nascimento', '88899900012', '11967890123'),
('Luciana Martins', '99900011123', '11978901234'),
('Claudio Santos', '00011122244', '11989012345'),
('Daniela Silva', '12332112356', '11990123456'),
('Marcio Souza', '32143254321', '11901234567'),
('Carla Mendes', '45665465457', '11912345678'),
('Joana Oliveira', '65445698712', '11923456789'),
('Gabriel Lima', '78987654322', '11934567890'),
('Felipe Pereira', '98765432101', '11945678901'),
('Renan Rocha', '00011122255', '11956789012'),
('Paula Costa', '11122233355', '11967890123'),
('Tatiane Silva', '22233344466', '11978901234'),
('Eduardo Lima', '33344455577', '11989012345'),
('Luiz Fernando', '44455566688', '11990123456'),
('Camila Dias', '55566677799', '11901234567'),
('Jéssica Andrade', '66677788800', '11912345678'),
('Vinícius Cardoso', '77788899911', '11923456789'),
('Matheus Santos', '88899900022', '11934567890'),
('Rafael Oliveira', '99900011133', '11945678901'),
('Luana Ferreira', '00011122266', '11956789012'),
('Gisele Pires', '12332112367', '11967890123'),
('Igor Gomes', '32143254356', '11978901234'),
('Karla Nascimento', '45665465468', '11989012345'),
('Rogerio Silva', '65445698723', '11990123456'),
('Elaine Costa', '78987654334', '11901234567'),
('Luiz Felipe', '98765432112', '11912345678'),
('Sabrina Almeida', '00011122277', '11923456789'),
('Anderson Ferreira', '11122233367', '11934567890'),
('Ana Carolina', '22233344478', '11945678901'),
('Patrícia Lima', '33344455589', '11956789012'),
('Diego Martins', '44455566690', '11967890123'),
('Cíntia Santos', '55566677701', '11978901234'),
('Nicolas Rocha', '66677788812', '11989012345'),
('Priscila Oliveira', '77788899923', '11990123456'),
('Juliano Pereira', '88899900034', '11901234567'),
('Gabriela Souza', '99900011145', '11912345678'),
('Mariana Dias', '00011122288', '11923456789'),
('Claudio Ferreira', '12332112378', '11934567890'),
('Nathalia Andrade', '32143254367', '11945678901'),
('Thiago Cardoso', '45665465479', '11956789012'),
('Rita Nascimento', '65445698734', '11967890123'),
('Bruno Lima', '78987654345', '11978901234'),
('Tatiane Santos', '98765432123', '11989012345'),
('Marcelino Silva', '00011122299', '11990123456'),
('Lourdes Costa', '11122233378', '11901234567'),
('Yasmin Oliveira', '22233344489', '11912345678'),
('Mariana Mendes', '33344455590', '11923456789'),
('Sérgio Rocha', '44455566601', '11934567890'),
('Aline Ferreira', '55566677712', '11945678901'),
('Hugo Almeida', '66677788823', '11956789012'),
('Flávia Dias', '77788899934', '11967890123'),
('Samuel Nascimento', '88899900045', '11978901234'),
('Tatiane Santos', '99900011156', '11989012345'),
('Eduardo Cardoso', '00011122210', '11990123456');
INSERT INTO fornecedores (nome, cnpj, telefone) VALUES 
('Fornecedora A', '12345678000195', '1187654321'),
('Fornecedora B', '98765432000195', '11987654321'),
('Fornecedora C', '11122233000181', '1181122333'),
('Fornecedora D', '22233344000170', '1192233445'),
('Fornecedora E', '33344455000190', '1183344556'),
('Fornecedora F', '44455566000100', '1194455667'),
('Fornecedora G', '55566677000158', '1185566778'),
('Fornecedora H', '66677788000166', '1196677889'),
('Fornecedora I', '77788899000102', '1187788990'),
('Fornecedora J', '88899900000109', '1198899001'),
('Fornecedora K', '99900011100198', '1189900112'),
('Fornecedora L', '00011122200175', '1191001223'),
('Fornecedora M', '12312312300104', '1182122334'),
('Fornecedora N', '23423423400132', '1193233445'),
('Fornecedora O', '34534534500150', '1184344556'),
('Fornecedora P', '45645645600168', '1195455667'),
('Fornecedora Q', '56756756700189', '1186566778'),
('Fornecedora R', '67867867800104', '1197677889'),
('Fornecedora S', '78978978900177', '1188788990'),
('Fornecedora T', '89089089000188', '1199899001'),
('Fornecedora U', '90190190100192', '1189900112'),
('Fornecedora V', '01201201200177', '1191011223'),
('Fornecedora W', '12345679000190', '1182122334'),
('Fornecedora X', '23456789000181', '1193233445'),
('Fornecedora Y', '34567890100172', '1184344556'),
('Fornecedora Z', '45678901200159', '1195455667'),
('Fornecedora AA', '56789012300168', '1186566778'),
('Fornecedora AB', '67890123400103', '1197677889'),
('Fornecedora AC', '78901234500192', '1188788990'),
('Fornecedora AD', '89012345600166', '1199899001'),
('Fornecedora AE', '90123456700157', '1189900112'),
('Fornecedora AF', '01234567800184', '1191011223'),
('Fornecedora AG', '12345678900174', '1182122334'),
('Fornecedora AH', '23456789000164', '1193233445'),
('Fornecedora AI', '34567890100159', '1184344556'),
('Fornecedora AJ', '45678901200194', '1195455667'),
('Fornecedora AK', '56789012300180', '1186566778'),
('Fornecedora AL', '67890123400101', '1197677889'),
('Fornecedora AM', '78901234500187', '1188788990'),
('Fornecedora AN', '89012345600193', '1199899001'),
('Fornecedora AO', '90123456700180', '1189900112'),
('Fornecedora AP', '01234567800196', '1191011223'),
('Fornecedora AQ', '12345678900182', '1182122334'),
('Fornecedora AR', '23456789000160', '1193233445'),
('Fornecedora AS', '34567890100192', '1184344556'),
('Fornecedora AT', '45678901200176', '1195455667'),
('Fornecedora AU', '56789012300175', '1186566778'),
('Fornecedora AV', '67890123400167', '1197677889'),
('Fornecedora AW', '78901234500184', '1188788990'),
('Fornecedora AX', '89012345600193', '1199899001'),
('Fornecedora AY', '90123456700192', '1189900112'),
('Fornecedora AZ', '01234567800198', '1191011223'),
('Fornecedora BA', '12345678900194', '1182122334'),
('Fornecedora BB', '23456789000181', '1193233445'),
('Fornecedora BC', '34567890100165', '1184344556'),
('Fornecedora BD', '45678901200157', '1195455667'),
('Fornecedora BE', '56789012300182', '1186566778'),
('Fornecedora BF', '67890123400199', '1197677889'),
('Fornecedora BG', '78901234500190', '1188788990'),
('Fornecedora BH', '89012345600185', '1199899001'),
('Fornecedora BI', '90123456700184', '1189900112'),
('Fornecedora BJ', '01234567800176', '1191011223'),
('Fornecedora BK', '12345678900163', '1182122334'),
('Fornecedora BL', '23456789000152', '1193233445'),
('Fornecedora BM', '34567890100181', '1184344556'),
('Fornecedora BN', '45678901200189', '1195455667'),
('Fornecedora BO', '56789012300174', '1186566778'),
('Fornecedora BP', '67890123400163', '1197677889'),
('Fornecedora BQ', '78901234500192', '1188788990'),
('Fornecedora BR', '89012345600172', '1199899001'),
('Fornecedora BS', '90123456700190', '1189900112'),
('Fornecedora BT', '01234567800184', '1191011223'),
('Fornecedora BU', '12345678900175', '1182122334'),
('Fornecedora BV', '23456789000167', '1193233445'),
('Fornecedora BW', '34567890100194', '1184344556'),
('Fornecedora BX', '45678901200163', '1195455667'),
('Fornecedora BY', '56789012300180', '1186566778'),
('Fornecedora BZ', '67890123400195', '1197677889');
INSERT INTO pedidos (cliente_id, data) VALUES 
(1, '2024-09-20'),
(2, '2024-09-21'),
(3, '2024-09-22'),
(4, '2024-09-23'),
(5, '2024-09-24'),
(6, '2024-09-25'),
(7, '2024-09-26'),
(8, '2024-09-27'),
(9, '2024-09-28'),
(10, '2024-09-29'),
(11, '2024-09-30'),
(12, '2024-10-01'),
(13, '2024-10-02'),
(14, '2024-10-03'),
(15, '2024-10-04'),
(16, '2024-10-05'),
(17, '2024-10-06'),
(18, '2024-10-07'),
(19, '2024-10-08'),
(20, '2024-10-09'),
(21, '2024-10-10'),
(22, '2024-10-11'),
(23, '2024-10-12'),
(24, '2024-10-13'),
(25, '2024-10-14'),
(26, '2024-10-15'),
(27, '2024-10-16'),
(28, '2024-10-17'),
(29, '2024-10-18'),
(30, '2024-10-19'),
(31, '2024-10-20'),
(32, '2024-10-21'),
(33, '2024-10-22'),
(34, '2024-10-23'),
(35, '2024-10-24'),
(36, '2024-10-25'),
(37, '2024-10-26'),
(38, '2024-10-27'),
(39, '2024-10-28'),
(40, '2024-10-29'),
(41, '2024-10-30'),
(42, '2024-10-31'),
(43, '2024-11-01'),
(44, '2024-11-02'),
(45, '2024-11-03'),
(46, '2024-11-04'),
(47, '2024-11-05'),
(48, '2024-11-06'),
(49, '2024-11-07'),
(50, '2024-11-08'),
(51, '2024-11-09'),
(52, '2024-11-10'),
(53, '2024-11-11'),
(54, '2024-11-12'),
(55, '2024-11-13'),
(56, '2024-11-14'),
(57, '2024-11-15'),
(58, '2024-11-16'),
(59, '2024-11-17'),
(60, '2024-11-18'),
(61, '2024-11-19'),
(62, '2024-11-20'),
(63, '2024-11-21'),
(64, '2024-11-22'),
(65, '2024-11-23'),
(66, '2024-11-24'),
(67, '2024-11-25'),
(68, '2024-11-26'),
(69, '2024-11-27'),
(70, '2024-11-28'),
(71, '2024-11-29'),
(72, '2024-11-30'),
(73, '2024-12-01'),
(74, '2024-12-02'),
(75, '2024-12-03'),
(76, '2024-12-04'),
(77, '2024-12-05'),
(78, '2024-12-06'),
(79, '2024-12-07'),
(80, '2024-12-08'),
(81, '2024-12-09'),
(82, '2024-12-10'),
(83, '2024-12-11'),
(84, '2024-12-12'),
(85, '2024-12-13'),
(86, '2024-12-14'),
(87, '2024-12-15'),
(88, '2024-12-16'),
(89, '2024-12-17'),
(90, '2024-12-18'),
(91, '2024-12-19'),
(92, '2024-12-20'),
(93, '2024-12-21'),
(94, '2024-12-22'),
(95, '2024-12-23'),
(96, '2024-12-24'),
(97, '2024-12-25'),
(98, '2024-12-26'),
(99, '2024-12-27'),
(100, '2024-12-28');
INSERT INTO itens_pedidos (pedido_id, produto_id, quantidade) VALUES 
(1, 1, 2), 
(1, 3, 1), 
(2, 2, 1);
INSERT INTO estoque (produto_id, quantidade) VALUES 
(1, 100),
(2, 150),
(3, 50),
(4, 30),
(5, 75),
(6, 200),
(7, 120),
(8, 90),
(9, 60),
(10, 80),
(11, 140),
(12, 110),
(13, 95),
(14, 85),
(15, 70),
(16, 50),
(17, 30),
(18, 100),
(19, 120),
(20, 140),
(21, 200),
(22, 160),
(23, 180),
(24, 90),
(25, 75),
(26, 65),
(27, 55),
(28, 45),
(29, 35),
(30, 25),
(31, 30),
(32, 40),
(33, 50),
(34, 60),
(35, 70),
(36, 80),
(37, 90),
(38, 100),
(39, 110),
(40, 120),
(41, 130),
(42, 140),
(43, 150),
(44, 160),
(45, 170),
(46, 180),
(47, 190),
(48, 200),
(49, 210),
(50, 220),
(51, 230),
(52, 240),
(53, 250),
(54, 260),
(55, 270),
(56, 280),
(57, 290),
(58, 300),
(59, 310),
(60, 320),
(61, 330),
(62, 340),
(63, 350),
(64, 360),
(65, 370),
(66, 380),
(67, 390),
(68, 400),
(69, 410),
(70, 420),
(71, 430),
(72, 440),
(73, 450),
(74, 460),
(75, 470),
(76, 480),
(77, 490),
(78, 500),
(79, 510),
(80, 520),
(81, 530),
(82, 540),
(83, 550),
(84, 560),
(85, 570),
(86, 580),
(87, 590),
(88, 600),
(89, 610),
(90, 620),
(91, 630),
(92, 640),
(93, 650),
(94, 660),
(95, 670),
(96, 680),
(97, 690),
(98, 700),
(99, 710),
(100, 720);
INSERT INTO vendas (produto_id, quantidade, data) VALUES 
(1, 5, '2024-09-20'),
(2, 3, '2024-09-21'),
(3, 10, '2024-09-22'),
(4, 7, '2024-09-23'),
(5, 12, '2024-09-24'),
(6, 6, '2024-09-25'),
(7, 15, '2024-09-26'),
(8, 4, '2024-09-27'),
(9, 8, '2024-09-28'),
(10, 11, '2024-09-29'),
(11, 2, '2024-09-30'),
(12, 9, '2024-10-01'),
(13, 3, '2024-10-02'),
(14, 5, '2024-10-03'),
(15, 1, '2024-10-04'),
(16, 10, '2024-10-05'),
(17, 4, '2024-10-06'),
(18, 6, '2024-10-07'),
(19, 7, '2024-10-08'),
(20, 9, '2024-10-09'),
(21, 8, '2024-10-10'),
(22, 5, '2024-10-11'),
(23, 3, '2024-10-12'),
(24, 11, '2024-10-13'),
(25, 15, '2024-10-14'),
(26, 13, '2024-10-15'),
(27, 2, '2024-10-16'),
(28, 9, '2024-10-17'),
(29, 4, '2024-10-18'),
(30, 6, '2024-10-19'),
(31, 10, '2024-10-20'),
(32, 1, '2024-10-21'),
(33, 7, '2024-10-22'),
(34, 3, '2024-10-23'),
(35, 5, '2024-10-24'),
(36, 8, '2024-10-25'),
(37, 12, '2024-10-26'),
(38, 14, '2024-10-27'),
(39, 6, '2024-10-28'),
(40, 4, '2024-10-29'),
(41, 9, '2024-10-30'),
(42, 10, '2024-10-31'),
(43, 15, '2024-11-01'),
(44, 7, '2024-11-02'),
(45, 3, '2024-11-03'),
(46, 1, '2024-11-04'),
(47, 2, '2024-11-05'),
(48, 8, '2024-11-06'),
(49, 12, '2024-11-07'),
(50, 5, '2024-11-08'),
(51, 11, '2024-11-09'),
(52, 6, '2024-11-10'),
(53, 4, '2024-11-11'),
(54, 15, '2024-11-12'),
(55, 10, '2024-11-13'),
(56, 2, '2024-11-14'),
(57, 9, '2024-11-15'),
(58, 3, '2024-11-16'),
(59, 7, '2024-11-17'),
(60, 1, '2024-11-18'),
(61, 8, '2024-11-19'),
(62, 14, '2024-11-20'),
(63, 12, '2024-11-21'),
(64, 10, '2024-11-22'),
(65, 6, '2024-11-23'),
(66, 4, '2024-11-24'),
(67, 11, '2024-11-25'),
(68, 5, '2024-11-26'),
(69, 3, '2024-11-27'),
(70, 2, '2024-11-28'),
(71, 7, '2024-11-29'),
(72, 15, '2024-11-30'),
(73, 8, '2024-12-01'),
(74, 6, '2024-12-02'),
(75, 10, '2024-12-03'),
(76, 4, '2024-12-04'),
(77, 5, '2024-12-05'),
(78, 12, '2024-12-06'),
(79, 3, '2024-12-07'),
(80, 9, '2024-12-08'),
(81, 1, '2024-12-09'),
(82, 13, '2024-12-10'),
(83, 7, '2024-12-11'),
(84, 11, '2024-12-12'),
(85, 6, '2024-12-13'),
(86, 10, '2024-12-14'),
(87, 2, '2024-12-15'),
(88, 3, '2024-12-16'),
(89, 14, '2024-12-17'),
(90, 12, '2024-12-18'),
(91, 8, '2024-12-19'),
(92, 5, '2024-12-20'),
(93, 9, '2024-12-21'),
(94, 15, '2024-12-22'),
(95, 4, '2024-12-23'),
(96, 2, '2024-12-24'),
(97, 10, '2024-12-25'),
(98, 6, '2024-12-26'),
(99, 1, '2024-12-27'),
(100, 11, '2024-12-28');

SELECT*FROM categorias;
SELECT*FROM produtos;
SELECT*FROM clientes;
SELECT*FROM fornecedores;
SELECT*FROM pedidos;
SELECT*FROM itens_pedidos;
SELECT*FROM estoque;
SELECT*FROM vendas;
SELECT 
    p.nome AS produto,
    p.preco,
    c.nome AS categoria
FROM 
    produtos p
INNER JOIN 
    categorias c ON p.categoria_id = c.id;
SELECT 
    ip.quantidade,
    p.nome AS produto,
    c.nome AS cliente,
    ped.data AS data_pedido
FROM 
    itens_pedidos ip
INNER JOIN 
    produtos p ON ip.produto_id = p.id
INNER JOIN 
    pedidos ped ON ip.pedido_id = ped.id
INNER JOIN 
    clientes c ON ped.cliente_id = c.id;
SELECT 
    v.quantidade,
    p.nome AS produto,
    v.data AS data_venda
FROM 
    vendas v
INNER JOIN 
    produtos p ON v.produto_id = p.id;
SELECT 
    e.quantidade,
    p.nome AS produto
FROM 
    estoque e
INNER JOIN 
    produtos p ON e.produto_id = p.id;
SELECT 
    ped.id AS pedido_id,
    c.nome AS cliente,
    ped.data
FROM 
    pedidos ped
INNER JOIN 
    clientes c ON ped.cliente_id = c.id;