/*Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH. */

CREATE DATABASE DB_RH;

USE DB_RH;

CREATE TABLE TB_FUNCIONARIOS(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(255),
SOBRENOME VARCHAR(255),
CARGO CHAR(255),
IDADE INT,
SALARIO DOUBLE,
PRIMARY KEY(ID)
);
