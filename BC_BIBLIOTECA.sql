CREATE DATABASE UNIVERSIDADE;
USE UNIVERSIDADE;

CREATE TABLE ALUNOS (
    ID_ALUNO INT AUTO_INCREMENT PRIMARY KEY,
    NOME_ALUNO VARCHAR(100) NOT NULL,
    DATA_NASCIMENTO_ALUNO DATE NOT NULL,
    ENDERECO_ALUNO VARCHAR(255),
    TELEFONE_ALUNO VARCHAR(15),
    EMAIL_ALUNO VARCHAR(100) UNIQUE);

INSERT INTO ALUNOS (NOME_ALUNO, DATA_NASCIMENTO_ALUNO, ENDERECO_ALUNO, TELEFONE_ALUNO, EMAIL_ALUNO)
VALUES 
('João Silva', '2005-05-28', 'RUA A', '41 9 97418123', 'joao.silva@email.com'),
('Maria Oliveira', '2004-07-14', 'RUA B, 123', '41 9 98765432', 'maria.oliveira@email.com'),
('Pedro Santos', '2006-03-22', 'RUA C, 456', '41 9 96543210', 'pedro.santos@email.com'),
('Ana Costa', '2005-11-30', 'RUA D, 789', '41 9 95432109', 'ana.costa@email.com'),
('Lucas Pereira', '2003-02-15', 'RUA E, 101', '41 9 94321098', 'lucas.pereira@email.com'),
('Beatriz Almeida', '2007-09-07', 'RUA F, 202', '41 9 93210987', 'beatriz.almeida@email.com'),
('Carlos Lima', '2004-12-25', 'RUA G, 303', '41 9 92109876', 'carlos.lima@email.com'),
('Fernanda Martins', '2005-06-17', 'RUA H, 404', '41 9 91098765', 'fernanda.martins@email.com'),
('Ricardo Souza', '2006-08-12', 'RUA I, 505', '41 9 90987654', 'ricardo.souza@email.com'),
('Juliana Rocha', '2003-10-29', 'RUA J, 606', '41 9 89876543', 'juliana.rocha@email.com');

CREATE TABLE PROFESSORES (
    ID_PROFESSOR INT AUTO_INCREMENT PRIMARY KEY,
    NOME_PROFESSOR VARCHAR(100) NOT NULL,
    ESPECIALIDADE_PROFESSOR VARCHAR(100),
    ENDERECO_PROFESSOR VARCHAR(255),
    TELEFONE_PROFESSOR VARCHAR(15),
    EMAIL_PROFESSOR VARCHAR(100) UNIQUE,
    DATA_NASCIMENTO_PROFESSOR DATE NOT NULL);

INSERT INTO PROFESSORES (NOME_PROFESSOR, DATA_NASCIMENTO_PROFESSOR, ENDERECO_PROFESSOR, TELEFONE_PROFESSOR, EMAIL_PROFESSOR)
VALUES 
('Mariana Santos', '1980-04-12', 'RUA 1, 100', '41 9 99887766', 'mariana.santos@email.com'),
('Roberto Almeida', '1975-09-25', 'RUA 2, 200', '41 9 98765432', 'roberto.almeida@email.com'),
('Cláudia Ferreira', '1987-11-30', 'RUA 3, 300', '41 9 97654321', 'claudia.ferreira@email.com'),
('Eduardo Lima', '1990-02-19', 'RUA 4, 400', '41 9 96543210', 'eduardo.lima@email.com'),
('Juliana Costa', '1985-07-07', 'RUA 5, 500', '41 9 95432109', 'juliana.costa@email.com'),
('Marcelo Pereira', '1978-12-10', 'RUA 6, 600', '41 9 94321098', 'marcelo.pereira@email.com'),
('Tatiane Rocha', '1992-03-18', 'RUA 7, 700', '41 9 93210987', 'tatiane.rocha@email.com'),
('Carlos Souza', '1983-08-23', 'RUA 8, 800', '41 9 92109876', 'carlos.souza@email.com'),
('Ana Paula Lima', '1989-05-15', 'RUA 9, 900', '41 9 91098765', 'ana.paula.lima@email.com'),
('Ricardo Martins', '1981-06-30', 'RUA 10, 1000', '41 9 90987654', 'ricardo.martins@email.com');

CREATE TABLE CURSOS (
    ID_CURSO INT AUTO_INCREMENT PRIMARY KEY,
    NOME_CURSO VARCHAR(100) NOT NULL,
    DESCRICAO TEXT,
    CH INT NOT NULL);

INSERT INTO CURSOS (NOME_CURSO, DESCRICAO, CH)
VALUES 
('História', 'História Geral e Brasileira', 50),
('Biologia', 'Biologia Básica e Avançada', 70),
('Física', 'Física Experimental e Teórica', 80),
('Química', 'Química Orgânica e Inorgânica', 65),
('Geografia', 'Geografia Física e Humana', 55),
('Literatura', 'Literatura Clássica e Moderna', 45),
('Educação Física', 'Treinamento e Saúde', 75),
('Artes', 'Artes Visuais e Cênicas', 60),
('Programação', 'Introdução à Programação e Algoritmos', 90),
('Economia', 'Economia Básica e Avançada', 85);

CREATE TABLE MATRICULAS (
    ID_MATRICULA INT AUTO_INCREMENT PRIMARY KEY,
    ID_ALUNO INT,
    ID_CURSO INT,
    DATA_MATRICULA DATE NOT NULL,
    FOREIGN KEY (ID_ALUNO) REFERENCES ALUNOS(ID_ALUNO),
    FOREIGN KEY (ID_CURSO) REFERENCES CURSOS(ID_CURSO));

INSERT INTO MATRICULAS (ID_ALUNO, ID_CURSO, DATA_MATRICULA)
VALUES 
(1, 1, '2024-08-08'),
(1, 2, '2024-10-10'),
(2, 3, '2024-09-01'),
(2, 4, '2024-09-15'),
(3, 5, '2024-08-20'),
(3, 6, '2024-09-25'),
(4, 7, '2024-10-01'),
(4, 8, '2024-10-15'),
(5, 9, '2024-08-30'),
(5, 10, '2024-09-10');

CREATE TABLE AULAS (
    ID_AULA INT AUTO_INCREMENT PRIMARY KEY,
    ID_CURSO INT,
    ID_PROFESSOR INT,
    DATAS DATE NOT NULL,
    HORARIO TIME NOT NULL,
    FOREIGN KEY (ID_CURSO) REFERENCES CURSOS(ID_CURSO),
    FOREIGN KEY (ID_PROFESSOR) REFERENCES PROFESSORES(ID_PROFESSOR));

INSERT INTO AULAS (ID_CURSO, ID_PROFESSOR, DATAS, HORARIO)
VALUES 
(1, 1, '2024-03-01', '09:00:00'),
(1, 1, '2024-03-01', '07:00:00'),
(2, 2, '2024-03-02', '10:00:00'),
(2, 2, '2024-03-02', '14:00:00'),
(3, 3, '2024-03-03', '08:00:00'),
(3, 3, '2024-03-03', '12:00:00'),
(4, 4, '2024-03-04', '11:00:00'),
(4, 4, '2024-03-04', '15:00:00'),
(5, 5, '2024-03-05', '13:00:00'),
(5, 5, '2024-03-05', '17:00:00');

SELECT * FROM ALUNOS;
SELECT * FROM PROFESSORES;
SELECT * FROM CURSOS;
SELECT * FROM MATRICULAS;
SELECT * FROM AULAS;

SELECT A.NOME_ALUNO AS ALUNO, C.NOME_CURSO AS CURSO, M.DATA_MATRICULA
FROM MATRICULAS M
JOIN ALUNOS A ON M.ID_ALUNO = A.ID_ALUNO
JOIN CURSOS C ON M.ID_CURSO = C.ID_CURSO;

SELECT C.NOME_CURSO AS CURSO, P.NOME_PROFESSOR AS PROFESSOR
FROM AULAS A
JOIN CURSOS C ON A.ID_CURSO = C.ID_CURSO
JOIN PROFESSORES P ON A.ID_PROFESSOR = P.ID_PROFESSOR;