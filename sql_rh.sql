CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE funcionario (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(150),
    celular VARCHAR(11),
    funcao VARCHAR(30),
    salario DECIMAL(10,2)
);

INSERT INTO funcionario
(nome, email, celular, funcao, salario)
VALUES
('Ana Souza', 'ana@email.com', '11999999999', 'Analista RH', 3500.00),
('Carlos Lima', 'carlos@email.com', '11988888888', 'Assistente', 1800.00),
('Mariana Silva', 'mariana@email.com', '11977777777', 'Gerente', 5500.00),
('Pedro Santos', 'pedro@email.com', '11966666666', 'Auxiliar', 1500.00),
('Juliana Costa', 'juliana@email.com', '11955555555', 'Recrutadora', 2800.00);

SELECT * FROM funcionario
WHERE salario > 2000;

SELECT * FROM funcionario
WHERE salario < 2000;

UPDATE funcionario
SET salario = 2200.00
WHERE idFuncionario = 2;
