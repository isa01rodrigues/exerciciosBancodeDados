CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    tipo_carne VARCHAR(100) NOT NULL,
    origem VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo_carne, origem)
VALUES ("Bovina", "Nacional");

INSERT INTO tb_categorias (tipo_carne, origem)
VALUES ("Suína", "Nacional");

INSERT INTO tb_categorias (tipo_carne, origem)
VALUES ("Aves", "Granja");

INSERT INTO tb_categorias (tipo_carne, origem)
VALUES ("Peixes", "Importado");

INSERT INTO tb_categorias (tipo_carne, origem)
VALUES ("Embutidos", "Industrializado");

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    peso_kg DECIMAL(4,2),
    validade DATE,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos
(nome, preco, peso_kg, validade, categoria_id)
VALUES("Picanha", 89.90, 1.20, "2026-06-10", 1);

INSERT INTO tb_produtos
(nome, preco, peso_kg, validade, categoria_id)
VALUES("Costela Bovina", 59.90, 2.00, "2026-06-12", 1);

INSERT INTO tb_produtos
(nome, preco, peso_kg, validade, categoria_id)
VALUES("Linguiça Toscana", 34.50, 1.00, "2026-06-15", 5);

INSERT INTO tb_produtos
(nome, preco, peso_kg, validade, categoria_id)
VALUES("Peito de Frango", 24.90, 1.50, "2026-06-08", 3);

INSERT INTO tb_produtos
(nome, preco, peso_kg, validade, categoria_id)
VALUES("Coxa de Frango", 29.90, 1.80, "2026-06-09", 3);

INSERT INTO tb_produtos
(nome, preco, peso_kg, validade, categoria_id)
VALUES("Costelinha Suína", 49.90, 1.30, "2026-06-11", 2);

INSERT INTO tb_produtos
(nome, preco, peso_kg, validade, categoria_id)
VALUES("Salmão", 149.90, 1.00, "2026-06-07", 4);

INSERT INTO tb_produtos
(nome, preco, peso_kg, validade, categoria_id)
VALUES("Contra Filé", 79.90, 1.40, "2026-06-13", 1);

 /*produto com o valor maior de 50*/
SELECT * FROM tb_produtos
WHERE preco > 50.00;

 /*produto com o valor meno de 50*/
SELECT * FROM tb_produtos
WHERE preco < 50.00;

/*produtos entre 50 e 150*/
SELECT * FROM tb_produtos
WHERE preco BETWEEN 50.00 AND 150.00;

/*Produtos com c*/
SELECT * FROM tb_produtos
WHERE nome LIKE "%C%";

/*JOIN*/
SELECT
tb_produtos.nome,tb_produtos.preco,tb_produtos.peso_kg,
tb_categorias.tipo_carne,tb_categorias.origem
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

/*Categoria*/
SELECT
tb_produtos.nome,tb_produtos.preco,tb_categorias.tipo_carne
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo_carne = "Aves";