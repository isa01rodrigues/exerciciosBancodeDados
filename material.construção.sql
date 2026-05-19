CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;


CREATE TABLE tbCategorias (
    idCategoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeCategoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tbProdutos (
    idProduto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeProduto VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    quantidade INT,
    marca VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2),
    idCategoria BIGINT,

    FOREIGN KEY (idCategoria)
        REFERENCES tbCategorias(idCategoria)
);


INSERT INTO tbCategorias (nomeCategoria, descricao)
VALUES
("Hidráulica", "Produtos para instalações hidráulicas"),

("Elétrica", "Produtos para instalações elétricas"),

("Ferramentas", "Ferramentas manuais e elétricas"),

("Pintura", "Tintas e acessórios para pintura"),

("Construção", "Materiais para construção civil");

/**/
INSERT INTO tbProdutos
(nomeProduto, descricao, quantidade, marca, valor, idCategoria)

VALUES
("Cano PVC",
"Cano para instalação hidráulica",
50,"Tigre",120.00,1),

("Chuveiro Elétrico",
"Chuveiro com aquecimento elétrico",
30,"Lorenzetti",145.00,2),

("Furadeira",
"Furadeira elétrica profissional",
15,"Bosch",350.00,3),

("Tinta Acrílica",
"Tinta branca fosca para parede",
40,"Suvinil",95.00,4),

("Cimento",
"Saco de cimento 50kg",
100,"Votoran",45.00,5),

("Caixa d’água",
"Caixa d’água 500 litros",
10,"Fortlev",420.00,1),

("Chave de Fenda",
"Ferramenta manual para manutenção",
60,"Tramontina",35.00,3),

("Cerâmica",
"Revestimento cerâmico para piso",
80,"Portobello",130.00,5);

/*Produtos com o valor maior que 100*/
SELECT * FROM tbProdutos
WHERE valor > 100.00;

/*Produtos com o valor menor que 100*/
SELECT * FROM tbProdutos
WHERE valor < 100.00;

/*valorese entre 70 a 150*/
SELECT * FROM tbProdutos
WHERE valor BETWEEN 70.00 AND 150.00;

/*produtos que possuem a letra C no nome*/
SELECT * FROM tbProdutos
WHERE nomeProduto LIKE "%C%";

/* INNER JOIN*/
SELECT
    tbProdutos.idProduto,tbProdutos.nomeProduto,tbProdutos.marca,
    tbProdutos.valor,tbCategorias.nomeCategoria
FROM tbProdutos
INNER JOIN tbCategorias
ON tbProdutos.idCategoria = tbCategorias.idCategoria;

/**/

SELECT
    tbProdutos.idProduto,tbProdutos.nomeProduto,tbProdutos.marca,
    tbProdutos.valor,tbCategorias.nomeCategoria
FROM tbProdutos
INNER JOIN tbCategorias
ON tbProdutos.idCategoria = tbCategorias.idCategoria
WHERE tbCategorias.nomeCategoria = "Hidráulica";