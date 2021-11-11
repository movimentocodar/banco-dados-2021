CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE autores
(codigo INT AUTO_INCREMENT,
nome VARCHAR(40),
sobrenome VARCHAR(40),
data_nascimento DATE,
PRIMARY KEY (codigo));

CREATE TABLE editoras
(codigo INT AUTO_INCREMENT,
nome VARCHAR(40),
data_fundacao DATE,
PRIMARY KEY(codigo));

CREATE TABLE livros
(isbn BIGINT,
titulo VARCHAR(255),
data_publicacao DATE,
quantidade_paginas INT,
idioma VARCHAR(5),
codigo_autor INT,
codigo_editora INT,
PRIMARY KEY (isbn));

ALTER TABLE livros ADD CONSTRAINT FK_AUTOR
FOREIGN KEY (codigo_autor) REFERENCES autores (codigo);

ALTER TABLE livros ADD CONSTRAINT FK_EDITORA
FOREIGN KEY (codigo_editora) REFERENCES editoras (codigo);

CREATE TABLE usuarios
(cpf BIGINT,
nome VARCHAR(40),
email VARCHAR(40),
telefone VARCHAR(14) NULL,
PRIMARY KEY (cpf));

CREATE TABLE emprestimos
(codigo INT AUTO_INCREMENT,
isbn BIGINT,
cpf BIGINT,
data_retirada DATE,
quantidade_dias_emprestimo INT,
esta_emprestado BIT(1),
PRIMARY KEY (codigo));

ALTER TABLE emprestimos ADD CONSTRAINT FK_LIVRO
FOREIGN KEY (isbn) REFERENCES livros (isbn);

ALTER TABLE emprestimos ADD CONSTRAINT FK_USUARIO
FOREIGN KEY (cpf) REFERENCES usuarios (cpf);