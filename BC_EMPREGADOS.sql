CREATE DATABASE BIBLIOTECA;
USE BIBLIOTECA;

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    biografia TEXT);
CREATE TABLE Livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    ano_publicacao YEAR,
    editora VARCHAR(255));
CREATE TABLE Escreve (
    id_livro INT NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor));

INSERT INTO Autor (nome, biografia)
VALUES 
('Ana Clara Ribeiro', 'Ana Clara Ribeiro é uma escritora brasileira, conhecida por seus romances históricos e sua paixão por literatura medieval.'),
('Carlos Silva', 'Carlos Silva é um renomado autor de ficção científica, com uma carreira que abrange mais de duas décadas e uma série de bestsellers internacionais.'),
('Fernanda Oliveira', 'Fernanda Oliveira é uma autora contemporânea com uma habilidade especial para criar histórias emocionantes e envolventes.'),
('João Pedro Costa', 'João Pedro Costa é um escritor e poeta português, famoso por suas obras poéticas e reflexivas.'),
('Maria Luiza Almeida', 'Maria Luiza Almeida é uma autora de romances policiais, conhecida por suas tramas intrigantes e personagens complexos.'),
('Ricardo Fernandes', 'Ricardo Fernandes é um autor de literatura infantojuvenil, com livros que encantam e educam jovens leitores.'),
('Tatiane Lima', 'Tatiane Lima é uma escritora de ficção romântica, cujas histórias são celebradas por sua sensibilidade e profundidade emocional.'),
('Vinícius Martins', 'Vinícius Martins é um autor de thrillers e romances de suspense, conhecido por suas tramas intensas e reviravoltas inesperadas.'),
('Isabela Costa', 'Isabela Costa é uma autora de fantasia, cuja imaginação fértil cria mundos fascinantes e histórias épicas.'),
('Gustavo Pereira', 'Gustavo Pereira é um escritor de não-ficção e jornalismo investigativo, famoso por suas análises profundas e relatos impactantes.');

INSERT INTO Livro (titulo, ano_publicacao, editora)
VALUES 
('A Era das Sombras', 2022, 'Editora Lumina'),
('Horizontes de Fogo', 2021, 'Editora Galáxia'),
('O Segredo da Floresta', 2023, 'Editora Aurora'),
('Versos ao Crepúsculo', 2020, 'Editora Estrela'),
('Mistério na Noite', 2022, 'Editora Labirinto'),
('Aventuras na Terra das Fadas', 2021, 'Editora Infância'),
('Entre Dois Mundos', 2024, 'Editora Destino'),
('O Coração das Trevas', 2023, 'Editora Midas'),
('O Livro dos Encantamentos', 2022, 'Editora Fantasia'),
('Segredos do Passado', 2021, 'Editora Verdade');

SELECT*FROM Autor;
SELECT*FROM Livro;
SELECT*FROM Escreve;