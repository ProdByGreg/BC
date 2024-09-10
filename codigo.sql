CREATE DATABASE estoque;
DROP DATABASE estoque;
USE estoque;

CREATE TABLE estoque (
    codigo_produto_estoque INT NOT NULL,
    produto_estoque VARCHAR(100),
    quantidade_estoque DECIMAL(10,2),
    valor_estoque DECIMAL(10,2),
    PRIMARY KEY (codigo_produto_estoque)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE pedido (
    ID_PEDIDO INT NOT NULL AUTO_INCREMENT,
    DATA_PEDIDO DATE,
    TOTAL_PEDIDO DECIMAL(10,2),
    PRIMARY KEY (ID_PEDIDO)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE item_pedido (
    ID_ITEM INT NOT NULL AUTO_INCREMENT,
    ID_PEDIDO INT,
    CODIGO_PRODUTO_ESTOQUE INT,
    PRODUTO VARCHAR(255),
    QUANTIDADE DECIMAL(10,2),
    VALOR_UNITARIO DECIMAL(10,2),
    PRIMARY KEY (ID_ITEM),
    FOREIGN KEY (ID_PEDIDO) REFERENCES pedido (ID_PEDIDO),
    FOREIGN KEY (CODIGO_PRODUTO_ESTOQUE) REFERENCES estoque (codigo_produto_estoque)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE pagamento (
    ID_PAGAMENTO INT NOT NULL AUTO_INCREMENT,
    ID_PEDIDO INT,
    DATA_PAGAMENTO DATE,
    METODO_PAGAMENTO VARCHAR(50),
    VALOR_PAGAMENTO DECIMAL(10,2),
    PRIMARY KEY (ID_PAGAMENTO),
    FOREIGN KEY (ID_PEDIDO) REFERENCES pedido (ID_PEDIDO)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE posto (
    ID_POSTO INT NOT NULL AUTO_INCREMENT,
    CNPJ_POSTO VARCHAR(14),
    NOME_POSTO VARCHAR(100),
    ENDERECO_POSTO VARCHAR(255),
    RAZAO_SOCIAL_POSTO VARCHAR(255),
    PRIMARY KEY (ID_POSTO),
    UNIQUE KEY CNPJ_POSTO (CNPJ_POSTO)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE sistema (
    PERMISSAO_SISTEMA VARCHAR(50),
    NOME_SISTEMA VARCHAR(100),
    LOGIN_SISTEMA VARCHAR(100) PRIMARY KEY
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE cliente (
    cpf VARCHAR(15) NOT NULL,
    nome VARCHAR(70),
    dtNasc DATE,
    PRIMARY KEY (cpf)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE modelo (
    codModelo INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(70),
    PRIMARY KEY (codModelo)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
CREATE TABLE patio (
    num INT NOT NULL AUTO_INCREMENT,
    ender VARCHAR(50),
    capacidade INT,
    PRIMARY KEY (num)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
CREATE TABLE veiculo (
    placa VARCHAR(8) NOT NULL,
    codModelo INT,
    cliente_cpf VARCHAR(15),
    cor VARCHAR(40),
    PRIMARY KEY (placa),
    FOREIGN KEY (cliente_cpf) REFERENCES cliente (cpf),
    FOREIGN KEY (codModelo) REFERENCES modelo (codModelo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE bomba (
    id_bomba INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_bomba)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE caixa (
    id_caixa INT NOT NULL AUTO_INCREMENT,
    caixa DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_caixa)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE despesa_mensal (
    id_despesa INT NOT NULL AUTO_INCREMENT,
    despesa DECIMAL(10,2) NOT NULL,
    data_despesa DATE,
    PRIMARY KEY (id_despesa)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE fornecedor (
    id_fornecedor INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    telefone VARCHAR(45) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    bairro VARCHAR(35) NOT NULL,
    cidade VARCHAR(35) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    PRIMARY KEY (id_fornecedor)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE produto (
    fornecedor INT,
    id_produto INT NOT NULL AUTO_INCREMENT,
    preco_produto DECIMAL(10,2) NOT NULL,
    produto VARCHAR(25) NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (fornecedor) REFERENCES fornecedor (id_fornecedor)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE receita_combustivel (
    id_receita_combustivel INT NOT NULL AUTO_INCREMENT,
    data_receita DATE NOT NULL,
    tipo_combustivel VARCHAR(50) NOT NULL,
    quantidade_vendida DECIMAL(10,2) NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_receita_combustivel)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE receita_mensal (
    id_receita INT NOT NULL AUTO_INCREMENT,
    receita DECIMAL(10,2) NOT NULL,
    data_receita DATE,
    PRIMARY KEY (id_receita)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE relatorio_bomba (
    bomba INT,
    id_relatorio INT NOT NULL AUTO_INCREMENT,
    quant DECIMAL(10,2) NOT NULL,
    valor_final DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_relatorio),
    FOREIGN KEY (bomba) REFERENCES bomba (id_bomba)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE tanque (
    id_tanque INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(200) NOT NULL,
    capacidade INT DEFAULT 10000,
    quantidade INT DEFAULT 0,
    PRIMARY KEY (id_tanque)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE cargo (
    ID_cargo INT NOT NULL AUTO_INCREMENT,
    Titulo_cargo VARCHAR(100),
    Nivel_cargo VARCHAR(50),
    Salario_Base DECIMAL(10,2),
    PRIMARY KEY (ID_cargo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE departamento (
    COD_departamento INT NOT NULL,
    Nome_departamento VARCHAR(100),
    PRIMARY KEY (COD_departamento)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE funcionario (
    ID_funcionario INT NOT NULL AUTO_INCREMENT,
    Nome_funcionario VARCHAR(50),
    CPF_funcionario VARCHAR(15),
    Data_admissao DATE,
    Cod_cargo INT,
    Cod_departamento INT,
    PRIMARY KEY (ID_funcionario),
    FOREIGN KEY (Cod_cargo) REFERENCES cargo (ID_cargo),
    FOREIGN KEY (Cod_departamento) REFERENCES departamento (COD_departamento)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE historico_horas (
    ID_historico INT NOT NULL AUTO_INCREMENT,
    ID_funcionario INT,
    Data DATE,
    Horas DECIMAL(10,2),
    PRIMARY KEY (ID_historico),
    FOREIGN KEY (ID_funcionario) REFERENCES funcionario (ID_funcionario)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE horario (
    ID_horario INT NOT NULL AUTO_INCREMENT,
    ID_funcionario INT,
    Data DATE,
    Entrada TIME,
    Saida TIME,
    PRIMARY KEY (ID_horario),
    FOREIGN KEY (ID_funcionario) REFERENCES funcionario (ID_funcionario)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE escala (
    ID_escala INT NOT NULL AUTO_INCREMENT,
    ID_funcionario INT,
    Data DATE,
    Turno VARCHAR(50),
    PRIMARY KEY (ID_escala),
    FOREIGN KEY (ID_funcionario) REFERENCES funcionario (ID_funcionario)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO estoque (codigo_produto_estoque, produto_estoque, quantidade_estoque, valor_estoque) VALUES
(1, 'Óleo Diesel', 5000.00, 4.50),
(2, 'Gasolina', 3000.00, 6.20),
(3, 'Álcool', 1500.00, 5.00);
INSERT INTO pedido (DATA_PEDIDO, TOTAL_PEDIDO) VALUES
('2024-09-01', 1200.00),
('2024-09-05', 550.00);
INSERT INTO item_pedido (ID_PEDIDO, CODIGO_PRODUTO_ESTOQUE, PRODUTO, QUANTIDADE, VALOR_UNITARIO) VALUES
(1, 1, 'Óleo Diesel', 2000.00, 4.50),
(1, 2, 'Gasolina', 1000.00, 6.20),
(2, 3, 'Álcool', 1500.00, 5.00);
INSERT INTO pagamento (ID_PEDIDO, DATA_PAGAMENTO, METODO_PAGAMENTO, VALOR_PAGAMENTO) VALUES
(1, '2024-09-02', 'Cartão de Crédito', 1200.00),
(2, '2024-09-06', 'Dinheiro', 550.00);
INSERT INTO posto (CNPJ_POSTO, NOME_POSTO, ENDERECO_POSTO, RAZAO_SOCIAL_POSTO) VALUES
('12345678000195', 'Posto Central', 'Av. Paulista, 1000', 'Posto Central LTDA'),
('98765432000154', 'Posto da Esquina', 'Rua das Flores, 200', 'Posto da Esquina S/A');
INSERT INTO sistema (PERMISSAO_SISTEMA, NOME_SISTEMA, LOGIN_SISTEMA) VALUES
('admin', 'Sistema de Gestão', 'admin'),
('user', 'Sistema de Gestão', 'user');
INSERT INTO cliente (cpf, nome, dtNasc) VALUES
('12345678901', 'João Silva', '1985-06-15'),
('98765432100', 'Maria Oliveira', '1990-11-22');
INSERT INTO modelo (modelo) VALUES
('Modelo A'),
('Modelo B'),
('Modelo C');
INSERT INTO patio (ender, capacidade) VALUES
('Av. Brasil, 1500', 50),
('Rua do Comércio, 75', 30);
INSERT INTO veiculo (placa, codModelo, cliente_cpf, cor) VALUES
('ABC1D23', 1, '12345678901', 'Preto'),
('XYZ9W87', 2, '98765432100', 'Branco');
INSERT INTO bomba (tipo, preco) VALUES
('Bomba Alta', 3.50),
('Bomba Baixa', 2.75);
INSERT INTO caixa (caixa) VALUES
(1500.00),
(2000.00);
INSERT INTO despesa_mensal (despesa, data_despesa) VALUES
(1000.00, '2024-09-01'),
(1200.00, '2024-09-01');
INSERT INTO fornecedor (nome, email, telefone, endereco, bairro, cidade, estado) VALUES
('Fornecedor A', 'a@fornecedor.com', '1111-2222', 'Rua A, 10', 'Centro', 'São Paulo', 'SP'),
('Fornecedor B', 'b@fornecedor.com', '3333-4444', 'Rua B, 20', 'Jardim', 'Campinas', 'SP');
INSERT INTO produto (fornecedor, preco_produto, produto) VALUES
(1, 10.00, 'Produto A'),
(2, 20.00, 'Produto B');
INSERT INTO receita_combustivel (data_receita, tipo_combustivel, quantidade_vendida, valor_total) VALUES
('2024-09-01', 'Óleo Diesel', 2000.00, 9000.00),
('2024-09-01', 'Gasolina', 1000.00, 6200.00);
INSERT INTO receita_mensal (receita, data_receita) VALUES
(15000.00, '2024-09-01'),
(18000.00, '2024-09-01');
INSERT INTO relatorio_bomba (bomba, quant, valor_final) VALUES
(1, 1500.00, 5250.00),
(2, 1000.00, 2750.00);
INSERT INTO tanque (tipo, capacidade, quantidade) VALUES
('Tanque A', 10000, 5000),
('Tanque B', 15000, 3000);
INSERT INTO cargo (Titulo_cargo, Nivel_cargo, Salario_Base) VALUES
('Gerente', 'Nível 1', 5000.00),
('Atendente', 'Nível 2', 2000.00);
INSERT INTO departamento (COD_departamento, Nome_departamento) VALUES
(1, 'Financeiro'),
(2, 'Operacional');
INSERT INTO funcionario (Nome_funcionario, CPF_funcionario, Data_admissao, Cod_cargo, Cod_departamento) VALUES
('Carlos Pereira', '12345678901', '2024-01-10', 1, 1),
('Ana Souza', '98765432100', '2024-03-15', 2, 2);
INSERT INTO historico_horas (ID_funcionario, Data, Horas) VALUES
(1, '2024-09-01', 8.00),
(2, '2024-09-02', 7.50);
INSERT INTO horario (ID_funcionario, Data, Entrada, Saida) VALUES
(1, '2024-09-01', '08:00:00', '17:00:00'),
(2, '2024-09-02', '09:00:00', '17:30:00');
INSERT INTO escala (ID_funcionario, Data, Turno) VALUES
(1, '2024-09-01', 'Manhã'),
(2, '2024-09-02', 'Tarde');

SELECT
    pedido.DATA_PEDIDO,
    pedido.TOTAL_PEDIDO,
    item_pedido.PRODUTO,
    item_pedido.QUANTIDADE,
    item_pedido.VALOR_UNITARIO
FROM
    pedido
INNER JOIN item_pedido
ON pedido.ID_PEDIDO = item_pedido.ID_PEDIDO;
SELECT
    pedido.DATA_PEDIDO,
    pedido.TOTAL_PEDIDO,
    pagamento.DATA_PAGAMENTO,
    pagamento.METODO_PAGAMENTO,
    pagamento.VALOR_PAGAMENTO
FROM
    pedido
INNER JOIN pagamento
ON pedido.ID_PEDIDO = pagamento.ID_PEDIDO;
SELECT
    receita_combustivel.data_receita,
    receita_combustivel.tipo_combustivel,
    receita_combustivel.quantidade_vendida,
    receita_combustivel.valor_total,
    relatorio_bomba.bomba,
    relatorio_bomba.quant,
    relatorio_bomba.valor_final
FROM
    receita_combustivel
INNER JOIN relatorio_bomba
ON receita_combustivel.tipo_combustivel = (CASE WHEN relatorio_bomba.bomba = 1 THEN 'Óleo Diesel' ELSE 'Gasolina' END);
SELECT
    funcionario.Nome_funcionario,
    cargo.Titulo_cargo,
    cargo.Salario_Base
FROM
    funcionario
INNER JOIN cargo
ON funcionario.Cod_cargo = cargo.ID_cargo;
