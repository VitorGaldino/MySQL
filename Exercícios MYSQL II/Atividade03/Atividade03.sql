/*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.*/

CREATE DATABASE DB_FARMACIA_BEM_ESTAR;

USE DB_FARMACIA_BEM_ESTAR;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT auto_increment,
REMEDIOS VARCHAR(255),
TIPOS VARCHAR(255),
PRIMARY KEY(ID)
);

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
PRECO DECIMAL,
PROD INT,
VALIDADE VARCHAR(255),
RECEITA VARCHAR(255),
PRIMARY KEY(ID),
CATEGORIAS_ID BIGINT,
FOREIGN KEY(CATEGORIAS_ID) references TB_CATEGORIAS(ID)
);

SELECT * FROM TB_CATEGORIAS;
SELECT * FROM TB_PRODUTOS;

INSERT INTO TB_CATEGORIAS (REMEDIOS, TIPOS) VALUES ('Descongex','Anti-alergico');
INSERT INTO TB_CATEGORIAS (REMEDIOS, TIPOS) VALUES ('Dorflex', 'Anti-Inflamatório');
INSERT INTO TB_CATEGORIAS (REMEDIOS, TIPOS) VALUES ('Neosaldina', 'Anti-Inflamatório');
INSERT INTO TB_CATEGORIAS (REMEDIOS, TIPOS) VALUES ('Amoxilina', 'Antiobitico');
INSERT INTO TB_CATEGORIAS (REMEDIOS, TIPOS) VALUES ('Tandrilax', 'Relaxante Muscular');

INSERT INTO TB_PRODUTOS (PRECO, PROD, VALIDADE, RECEITA, CATEGORIA_ID) VALUES (25.50, 125, '12 MESES', 'NÃO', 2);
INSERT INTO TB_PRODUTOS (PRECO, PROD, VALIDADE, RECEITA, CATEGORIA_ID) VALUES (55.00, 255, '24 MESES', 'SIM', 3);
INSERT INTO TB_PRODUTOS (PRECO, PROD, VALIDADE, RECEITA, CATEGORIA_ID) VALUES (70.00, 235, '12 MESES', 'SIM', 4);
INSERT INTO TB_PRODUTOS (PRECO, PROD, VALIDADE, RECEITA, CATEGORIA_ID) VALUES (30.00, 125, '24 MESES', 'NÃO', 2);
INSERT INTO TB_PRODUTOS (PRECO, PROD, VALIDADE, RECEITA, CATEGORIA_ID) VALUES (45.00, 125, '12 MESES', 'SIM', 3);
INSERT INTO TB_PRODUTOS (PRECO, PROD, VALIDADE, RECEITA, CATEGORIA_ID) VALUES (35.00, 245, '12 MESES', 'NÃO', 2);
INSERT INTO TB_PRODUTOS (PRECO, PROD, VALIDADE, RECEITA, CATEGORIA_ID) VALUES (20.00, 246, '24 MESES', 'SIM', 5);
INSERT INTO TB_PRODUTOS (PRECO, PROD, VALIDADE, RECEITA, CATEGORIA_ID) VALUES (30.00, 126, '24 MESES', 'NÃO', 4);

SELECT * FROM TB_PRODUTOS WHERE PRECO > 50;

SELECT * FROM TB_PRODUTOS WHERE PRECO between 5 AND 60;

SELECT REMEDIOS FROM TB_CATEGORIAS WHERE REMEDIOS LIKE "%D$";

SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_CATEGORIAS.ID = TB_PRODUTOS.CATEGORIAS_ID;

SELECT TB_PRODUTOS.PRECO, TB_CATEGORIAS.REMEDIOS FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_CATEGORIAS.ID = TB_PRODUTOS.CATEGORIAS_ID;

SELECT TB_PRODUTOS.PRECO, TB_CATEGORIAS.TIPOS FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_CATEGORIAS.ID = TB_PRODUTOS.CATEGORIAS.ID;