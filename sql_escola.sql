CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    turma VARCHAR(20),
    materia VARCHAR(50),
    nota DECIMAL(3,1),
    idade INT
);

INSERT INTO estudantes
(nome, turma, materia, nota, idade)
VALUES
('Lucas Martins', '1A', 'Matemática', 8.5, 15),
('Fernanda Alves', '1A', 'Português', 6.0, 16),
('João Pedro', '2B', 'História', 9.0, 17),
('Camila Rocha', '2B', 'Geografia', 5.5, 16),
('Rafael Lima', '3C', 'Física', 7.5, 17),
('Beatriz Souza', '3C', 'Química', 4.5, 18),
('Thiago Santos', '1D', 'Biologia', 8.0, 15),
('Larissa Costa', '2A', 'Inglês', 6.5, 16);



SELECT * FROM estudantes
WHERE nota > 7.0;

SELECT * FROM estudantes
WHERE nota < 7.0;

UPDATE estudantes
SET nota = 7.2
WHERE id = 2;
