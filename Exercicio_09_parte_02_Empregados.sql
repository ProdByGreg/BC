CREATE DATABASE EMPREGADOS;
USE EMPREGADOS;

CREATE TABLE Empregado (
    id_empregado INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_supervisor INT,
    FOREIGN KEY (id_supervisor) REFERENCES Empregado(id_empregado)
);

INSERT INTO Empregado (id_empregado, nome, id_supervisor) VALUES
(1, 'Ana', NULL),
(2, 'Bruno', 1),    
(3, 'Carlos', 1),     
(4, 'Diana', 2),      
(5, 'Eduardo', NULL),  
(6, 'Fernanda', 3);

SELECT e1.id_empregado AS id_empregado,
       e1.nome AS nome_empregado,
       e2.id_empregado AS id_supervisor,
       e2.nome AS nome_supervisor
FROM Empregado e1
LEFT JOIN Empregado e2 ON e1.id_supervisor = e2.id_empregado;
