CREATE DATABASE farmacia;
USE farmacia;

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL);
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    estoque INT NOT NULL,
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
    
CREATE INDEX idx_produto_nome ON produtos(nome);
CREATE INDEX idx_pedido_data ON pedidos(data);

INSERT INTO categorias (nome) VALUES 
('Medicamentos'), 
('Cosméticos'), 
('Higiene'), 
('Suplementos');
INSERT INTO produtos (nome, preco, categoria_id, estoque) VALUES 
('Paracetamol', 5.99, 1, 100),
('Ibuprofeno', 7.49, 1, 100),
('Creme Hidratante', 15.99, 2, 50),
('Shampoo Anticaspa', 12.99, 3, 75),
('Multivitamínico', 29.99, 4, 60),
('Aspirina', 4.99, 1, 200),
('Antigripal', 9.99, 1, 150),
('Pomada para queimaduras', 18.50, 1, 30),
('Colírio', 11.25, 1, 90),
('Desodorante Roll-on', 6.75, 3, 80),
('Creme Dental', 3.99, 3, 120),
('Loção Corporal', 19.99, 2, 45),
('Soro fisiológico', 2.50, 1, 200),
('Suplemento de Ômega 3', 35.99, 4, 40),
('Protetor Solar', 22.50, 2, 65),
('Condicionador', 14.99, 2, 70),
('Gel Antisséptico', 8.49, 3, 150),
('Antibiótico', 30.00, 1, 25),
('Vitamina C', 15.00, 4, 80),
('Barra de Sabão', 1.99, 3, 200),
('Álcool em Gel', 7.50, 3, 120),
('Pomada para assaduras', 12.99, 1, 30),
('Cálcio + Vitamina D', 25.00, 4, 55),
('Shampoo Hidratante', 11.49, 2, 60),
('Condicionador Nutritivo', 13.99, 2, 65),
('Repelente', 15.99, 3, 40),
('Desinfetante', 5.99, 3, 100),
('Antitérmico', 9.99, 1, 150),
('Gase', 2.99, 1, 100),
('Band-aid', 1.49, 1, 200),
('Loção de limpeza', 16.99, 2, 50),
('Máscara facial', 3.50, 2, 100),
('Hidratante para mãos', 8.99, 2, 70),
('Escova de dentes', 5.49, 3, 110),
('Fio dental', 2.50, 3, 80),
('Chá de Camomila', 4.99, 4, 90),
('Suplemento de Proteína', 45.00, 4, 20),
('Água Termal', 30.00, 2, 25),
('Bebida isotônica', 7.00, 4, 150),
('Vaselina', 5.99, 2, 85),
('Cloro', 3.99, 3, 60),
('Sabonete Líquido', 10.00, 2, 50),
('Escova de cabelo', 15.00, 2, 40),
('Gel de Aloe Vera', 12.00, 2, 70),
('Loção para os pés', 9.99, 2, 55),
('Balm labial', 4.99, 2, 100),
('Xampu seco', 18.99, 2, 45),
('Desinfetante para mãos', 6.50, 3, 100),
('Soro Glicosado', 5.00, 1, 150),
('Creme para celulite', 25.00, 2, 30),
('Pomada para dor muscular', 15.99, 1, 40),
('Suplemento de ferro', 20.00, 4, 60),
('Colágeno', 35.00, 4, 35),
('Beterraba em pó', 12.00, 4, 75),
('Ácido hialurônico', 22.50, 2, 45),
('Suplemento de zinco', 10.00, 4, 85),
('Aloe Vera em gel', 18.00, 2, 50),
('Esfoliante facial', 20.00, 2, 45),
('Remédio para sinusite', 9.99, 1, 100),
('Pasta de dente clareadora', 7.50, 3, 80),
('Pílulas para emagrecimento', 40.00, 4, 20),
('Spray fixador', 15.00, 2, 70),
('Óleo de coco', 12.99, 4, 60),
('Sabonete esfoliante', 6.00, 2, 85),
('Bálsamo para cabelo', 8.50, 2, 50),
('Removedor de maquiagem', 7.00, 2, 90),
('Gotas para os olhos', 6.25, 1, 120),
('Anticoncepcional', 35.00, 1, 30),
('Tônico capilar', 18.00, 2, 50),
('Suplemento pré-treino', 29.99, 4, 45),
('Suplemento pós-treino', 29.99, 4, 40),
('Cremes para manchas', 19.99, 2, 35),
('Cremes anti-idade', 40.00, 2, 20),
('Protetor labial', 3.99, 2, 100),
('Pomada para dor de cabeça', 9.99, 1, 80),
('Óleo essencial', 25.00, 4, 30),
('Canela em pó', 4.00, 4, 70),
('Suplemento de magnésio', 15.00, 4, 60),
('Ginger Ale', 2.50, 4, 120),
('Suplemento de colágeno', 35.00, 4, 25);
INSERT INTO clientes (nome, cpf, telefone) VALUES 
('João Silva', '12345678901', '11987654321'),
('Maria Oliveira', '10987654321', '11912345678');
INSERT INTO fornecedores (nome, cnpj, telefone) VALUES 
('Farmacêutica ABC', '12345678000195', '1187654321'),
('Distribuidora XYZ', '98765432000195', '11987654321');
INSERT INTO pedidos (cliente_id, data) VALUES 
(1, '2024-09-20'),
(2, '2024-09-21');
INSERT INTO itens_pedidos (pedido_id, produto_id, quantidade) VALUES 
(1, 1, 2), 
(1, 3, 1), 
(2, 2, 1);

SELECT*FROM categorias;
SELECT*FROM produtos;
SELECT*FROM clientes;
SELECT*FROM fornecedores;
SELECT*FROM pedidos;
SELECT*FROM itens_pedidos;
SELECT 
    p.id AS pedido_id,
    c.nome AS cliente_nome,
    p.data AS data_pedido
FROM 
    pedidos p
INNER JOIN 
    clientes c ON p.cliente_id = c.id;
SELECT 
    ip.id AS item_id,
    p.nome AS produto_nome,
    ip.quantidade AS quantidade,
    pd.data AS data_pedido,
    c.nome AS cliente_nome
FROM 
    itens_pedidos ip
INNER JOIN 
    produtos p ON ip.produto_id = p.id
INNER JOIN 
    pedidos pd ON ip.pedido_id = pd.id
INNER JOIN 
    clientes c ON pd.cliente_id = c.id;
SELECT 
    p.nome AS produto_nome,
    p.preco AS preco,
    c.nome AS categoria_nome
FROM 
    produtos p
INNER JOIN 
    categorias c ON p.categoria_id = c.id;
SELECT 
    pd.id AS pedido_id,
    pd.data AS data_pedido,
    p.nome AS produto_nome,
    ip.quantidade AS quantidade
FROM 
    pedidos pd
INNER JOIN 
    itens_pedidos ip ON pd.id = ip.pedido_id
INNER JOIN 
    produtos p ON ip.produto_id = p.id;