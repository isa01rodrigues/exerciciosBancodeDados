CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE produto (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100),
    cor VARCHAR(50),
    tamanho VARCHAR(10)
);

CREATE TABLE entrada (
    idEntrada INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    estoque INT,
    preco DECIMAL(10,2),
    categoria VARCHAR(100),

    idProduto INT,

    FOREIGN KEY (idProduto)
        REFERENCES produto(idProduto)
);

INSERT INTO produto
(produto, cor, tamanho)
VALUES
('Camiseta Nike', 'Preta', 'M'),
('Tênis Adidas', 'Branco', '42'),
('Jaqueta Puma', 'Azul', 'G'),
('Calça Jeans', 'Azul Escuro', '40'),
('Boné New Era', 'Vermelho', 'Único');


INSERT INTO entrada
(nome, estoque, preco, categoria, idProduto)
VALUES
('Camiseta Nike', 20, 120.00, 'Roupas', 1),
('Tênis Adidas', 15, 550.00, 'Calçados', 2),
('Jaqueta Puma', 10, 300.00, 'Roupas', 3),
('Calça Jeans', 25, 180.00, 'Roupas', 4),
('Boné New Era', 30, 90.00, 'Acessórios', 5);

SELECT * FROM entrada
WHERE preco > 500;

SELECT * FROM entrada
WHERE preco < 500;




