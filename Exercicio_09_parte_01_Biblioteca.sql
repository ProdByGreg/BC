CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
CREATE TABLE Livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    id_autor INT,
    id_categoria INT,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

INSERT INTO Autor (nome) VALUES ('J.K. Rowling');
INSERT INTO Autor (nome) VALUES ('J.R.R. Tolkien');
INSERT INTO Autor (nome) VALUES ('George R.R. Martin');
INSERT INTO Autor (nome) VALUES ('Agatha Christie');
INSERT INTO Autor (nome) VALUES ('Isaac Asimov');
INSERT INTO Autor (nome) VALUES ('Arthur C. Clarke');
INSERT INTO Autor (nome) VALUES ('Stephen King');
INSERT INTO Autor (nome) VALUES ('Jane Austen');
INSERT INTO Autor (nome) VALUES ('F. Scott Fitzgerald');
INSERT INTO Autor (nome) VALUES ('Herman Melville');
INSERT INTO Autor (nome) VALUES ('Leo Tolstoy');
INSERT INTO Autor (nome) VALUES ('Charles Dickens');
INSERT INTO Autor (nome) VALUES ('J.D. Salinger');
INSERT INTO Autor (nome) VALUES ('Mark Twain');
INSERT INTO Autor (nome) VALUES ('H.G. Wells');
INSERT INTO Autor (nome) VALUES ('Mary Shelley');
INSERT INTO Autor (nome) VALUES ('James Joyce');
INSERT INTO Autor (nome) VALUES ('Oscar Wilde');
INSERT INTO Autor (nome) VALUES ('Ernest Hemingway');
INSERT INTO Autor (nome) VALUES ('Franz Kafka');
INSERT INTO Autor (nome) VALUES ('Ray Bradbury');
INSERT INTO Autor (nome) VALUES ('Jules Verne');
INSERT INTO Autor (nome) VALUES ('Douglas Adams');
INSERT INTO Autor (nome) VALUES ('Philip K. Dick');
INSERT INTO Autor (nome) VALUES ('Terry Pratchett');
INSERT INTO Autor (nome) VALUES ('Neil Gaiman');
INSERT INTO Autor (nome) VALUES ('Dan Brown');
INSERT INTO Autor (nome) VALUES ('John Grisham');
INSERT INTO Autor (nome) VALUES ('Michael Crichton');
INSERT INTO Autor (nome) VALUES ('Suzanne Collins');
INSERT INTO Autor (nome) VALUES ('Paulo Coelho');
INSERT INTO Autor (nome) VALUES ('Margaret Atwood');

INSERT INTO Categoria (nome) VALUES ('Fantasia');
INSERT INTO Categoria (nome) VALUES ('Mistério');
INSERT INTO Categoria (nome) VALUES ('Ficção Científica');
INSERT INTO Categoria (nome) VALUES ('Clássico');
INSERT INTO Categoria (nome) VALUES ('Romance');
INSERT INTO Categoria (nome) VALUES ('Aventura');

INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Harry Potter e a Pedra Filosofal', 1, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Harry Potter e a Câmara Secreta', 1, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Senhor dos Anéis: A Sociedade do Anel', 2, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Hobbit', 2, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('As Crônicas de Gelo e Fogo: A Guerra dos Tronos', 3, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Fundação', 5, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('2001: Uma Odisséia no Espaço', 6, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Assassinato no Expresso do Oriente', 4, 2);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('E eu pensei que o mundo acabava aqui', 4, 2);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Orgulho e Preconceito', 8, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Emma', 8, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Grande Gatsby', 9, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Tender Is the Night', 9, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Moby Dick', 10, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Billy Budd', 10, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Guerra e Paz', 11, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Anna Karenina', 11, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Oliver Twist', 12, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Grandes Esperanças', 12, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Apanhador no Campo de Centeio', 13, 5);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Franny and Zooey', 13, 5);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('As Aventuras de Huckleberry Finn', 14, 5);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Príncipe e o Mendigo', 14, 5);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('A Máquina do Tempo', 15, 6);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('A Guerra dos Mundos', 15, 6);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Frankenstein', 16, 6);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Último Homem', 16, 6);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Ulisses', 17, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Retrato do Artista Quando Jovem', 17, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Retrato de Dorian Gray', 18, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Canário', 18, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Sol é Para Todos', 19, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Por quem os Sinos Dobram', 19, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('A Metamorfose', 20, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Processo', 20, 4);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Fahrenheit 451', 21, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Crônicas Marcianas', 21, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Vinte Mil Léguas Submarinas', 22, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('A Volta ao Mundo em Oitenta Dias', 22, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Guia do Mochileiro das Galáxias', 23, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Restaurante no Fim do Universo', 23, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Androides Sonham com Ovelhas Elétricas?', 24, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Homem Duplo', 24, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Discworld: A Cor do Mágico', 25, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Mort', 25, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Deuses Americanos', 26, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Coraline', 26, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Código Da Vinci', 27, 2);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Anjos e Demônios', 27, 2);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Caso dos Dez Negrinhos', 28, 2);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Assassinato de Roger Ackroyd', 28, 2);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('Jurassic Park', 29, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('O Mundo Perdido', 29, 3);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('A Sombria Jornada de Jonas', 30, 1);
INSERT INTO Livro (titulo, id_autor, id_categoria) VALUES ('A Tempestade do Deserto', 30, 1);

SELECT Livro.titulo, Autor.nome AS autor, Categoria.nome AS categoria
FROM Livro
JOIN Autor ON Livro.id_autor = Autor.id_autor
JOIN Categoria ON Livro.id_categoria = Categoria.id_categoria;
