CREATE SCHEMA IF NOT EXISTS biblioteca DEFAULT CHARACTER SET utf8mb4;

USE biblioteca;

CREATE TABLE IF NOT EXISTS autores(
	idautor INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR (25) NOT NULL,
    sobrenome VARCHAR (50),
    data_nascimento DATE,
    PRIMARY KEY(idautor)
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS editoras(
	ideditora INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR (50) NOT NULL,
    ano_fundacao YEAR,
    PRIMARY KEY(ideditora)
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS livros(
	titulo VARCHAR(250) NOT NULL,
    data_publicacao DATE,
    qnt_paginas INT UNSIGNED,
    idioma ENUM('PT-BR', 'EN', 'ES'),
    ISBN VARCHAR(17) NOT NULL,
    autor INT NOT NULL,
    editora INT NOT NULL,
    FOREIGN KEY(autor)
    REFERENCES autores(idautor),
    FOREIGN KEY(editora)
    REFERENCES editoras(ideditora),
    PRIMARY KEY(ISBN)
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS usuarios_biblioteca(
	nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(250) NOT NULL,
    tel VARCHAR(20),
    PRIMARY KEY(cpf)
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS emprestimos(
	id_e INT AUTO_INCREMENT NOT NULL,
	livro VARCHAR(17) NOT NULL,
    usuario VARCHAR(11) NOT NULL,
    data_retiro DATE NOT NULL,
    qnt_dias_emprestimo INT UNSIGNED NOT NULL,
    devolvido BOOLEAN DEFAULT FALSE,
    PRIMARY KEY(id_e),
	FOREIGN KEY(livro)
    REFERENCES livros(ISBN),
    FOREIGN KEY(usuario)
    REFERENCES usuarios_biblioteca(cpf)
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
