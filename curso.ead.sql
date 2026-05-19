CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tbCategorias (
    idCategoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeCategoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tbCursos (
    idCurso BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeCurso VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cargaHoraria INT,
    semestre INT,
    docente VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2),
    idCategoria BIGINT,

    FOREIGN KEY (idCategoria)
        REFERENCES tbCategorias(idCategoria)
);

-- INSERTS DA TABELA tbCategorias

INSERT INTO tbCategorias (nomeCategoria, descricao)
VALUES 
("Java", "Cursos voltados para desenvolvimento Java"),

("Desenvolvimento Web", 
"Cursos de criação de sites e aplicações web"),

("Banco de Dados", 
"Cursos sobre SQL, MySQL e modelagem de dados"),

("UI/UX", 
"Cursos de interface e experiência do usuário"),

("Análise de Dados", 
"Cursos voltados para análise e manipulação de dados");



-- INSERTS DA TABELA tbCursos

INSERT INTO tbCursos
(nomeCurso, descricao, cargaHoraria, semestre, docente, valor, idCategoria)

VALUES
("Java Fundamentos",
"Introdução à linguagem Java",
60,1,"Carlos Silva",750.00,1),

("Java Orientado a Objetos",
"Programação orientada a objetos com Java",
80,2,"Ana Souza",950.00,1),

("HTML e CSS",
"Criação de páginas web responsivas",
40,1,"Marina Costa",450.00,2),

("JavaScript Moderno",
"Desenvolvimento web com JavaScript",
70,2,"Felipe Rocha",850.00,2),

("MySQL Completo",
"Banco de dados relacional com MySQL",
50,1,"Ricardo Lima",650.00,3),

("Modelagem de Dados",
"Modelagem conceitual e lógica",
45,2,"Fernanda Alves",700.00,3),

("UX Design Essentials",
"Fundamentos de experiência do usuário",
35,1,"Juliana Martins",550.00,4),

("Análise de Dados com SQL",
"Consultas e relatórios utilizando SQL",
65,2,"Patrícia Gomes",1000.00,5);

/**cursos com valor maior que 500**/
SELECT * FROM tbCursos
WHERE valor > 500.00;

/** cursos com valor menor que 500*/
SELECT * FROM tbCursos
WHERE valor < 500.00;

/** cursos com valor entre 600 e 1000**/
SELECT * FROM tbCursos
WHERE valor BETWEEN 600.00 AND 1000.00;

/*cursos que possuem a letra J no nome*/
SELECT * FROM tbCursos
WHERE nomeCurso LIKE "%J%";

/*INNER JOIN*/
SELECT 
    tbCursos.idCurso,tbCursos.nomeCurso,tbCursos.docente,tbCursos.valor,tbCategorias.nomeCategoria
FROM tbCursos
INNER JOIN tbCategorias
ON tbCursos.idCategoria = tbCategorias.idCategoria;

/**/
SELECT 
    tbCursos.idCurso,tbCursos.nomeCurso,tbCursos.docente,tbCursos.valor,
    tbCategorias.nomeCategoria
FROM tbCursos
INNER JOIN tbCategorias
ON tbCursos.idCategoria = tbCategorias.idCategoria
WHERE tbCategorias.nomeCategoria = "Java";

