CREATE DATABASE LOJA;
USE LOJA;

CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    endereco TEXT
);
CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_pedido DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

INSERT INTO Produto (nome, descricao, preco, estoque) VALUES
('Smartphone X1', 'Smartphone com 128GB de armazenamento e câmera de 12MP.', 1999.99, 50),
('Notebook Pro', 'Notebook com processador i7, 16GB RAM e 512GB SSD.', 3999.99, 20),
('Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio com cancelamento de ruído.', 299.99, 100),
('Cadeira Gamer', 'Cadeira ergonômica para gamers com ajuste de altura e reclinável.', 799.99, 15),
('Monitor Ultra HD', 'Monitor 4K de 27 polegadas com tecnologia IPS.', 1499.99, 30),
('Teclado Mecânico', 'Teclado mecânico com retroiluminação RGB.', 399.99, 80),
('Mouse Gamer', 'Mouse com DPI ajustável e iluminação LED.', 199.99, 60),
('HD Externo 2TB', 'HD externo com 2TB de capacidade e conexão USB 3.0.', 249.99, 40),
('Impressora Multifuncional', 'Impressora a laser com funções de cópia e digitalização.', 699.99, 25),
('Câmera de Segurança Wi-Fi', 'Câmera de segurança com conectividade Wi-Fi e visão noturna.', 499.99, 35);

INSERT INTO Cliente (nome, email, telefone, endereco) VALUES
('João da Silva', 'joao.silva@email.com', '(11) 98765-4321', 'Rua das Flores, 123, São Paulo, SP'),
('Maria Oliveira', 'maria.oliveira@email.com', '(21) 99876-5432', 'Avenida Brasil, 456, Rio de Janeiro, RJ'),
('Pedro Santos', 'pedro.santos@email.com', '(31) 91234-5678', 'Rua das Palmeiras, 789, Belo Horizonte, MG'),
('Ana Costa', 'ana.costa@email.com', '(41) 93456-7890', 'Praça da Liberdade, 101, Curitiba, PR'),
('Lucas Pereira', 'lucas.pereira@email.com', '(51) 92345-6789', 'Rua do Comércio, 202, Porto Alegre, RS'),
('Juliana Almeida', 'juliana.almeida@email.com', '(61) 93456-7890', 'Quadra 104, Bloco D, Brasília, DF'),
('Marcos Lima', 'marcos.lima@email.com', '(11) 92345-6789', 'Rua dos Jacarandás, 303, São Paulo, SP'),
('Beatriz Martins', 'beatriz.martins@email.com', '(21) 91234-5678', 'Rua dos Andorinhas, 404, Rio de Janeiro, RJ'),
('Carlos Almeida', 'carlos.almeida@email.com', '(31) 92345-6789', 'Rua dos Jatobás, 505, Belo Horizonte, MG'),
('Fernanda Rodrigues', 'fernanda.rodrigues@email.com', '(41) 98765-4321', 'Avenida das Américas, 606, Curitiba, PR');

INSERT INTO Pedido (id_pedido,id_cliente, data_pedido, total) VALUES
(1,1, '2024-09-01', 2299.98),
(2,2, '2024-09-02', 4399.98),
(3,3, '2024-09-03', 499.98),
(4,4, '2024-09-04', 799.99),
(5,5, '2024-09-05', 1499.99),
(6,6, '2024-09-06', 399.99),
(7,7, '2024-09-07', 199.99),
(8,8, '2024-09-08', 249.99),
(9,9, '2024-09-09', 699.99),
(10,10, '2024-09-10', 499.99);

SELECT*FROM Produto;
SELECT*FROM Cliente;
SELECT*FROM Pedido;