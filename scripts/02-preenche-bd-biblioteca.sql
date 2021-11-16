USE Biblioteca;
INSERT INTO Usuario (
CPF, Nome, Email, Telefone) VALUES (
'24602488064', 'Maria de Lourdes Pereira', 'marial87@gmail.com', '5511967656850');

USE Biblioteca;
INSERT INTO Usuario (
CPF, Nome, Email) VALUES (
'50009541063', 'Mario José Freitas', 'mjosefreitas@bol.com.br');

USE Biblioteca;
INSERT INTO Usuario (
CPF, Nome, Email, Telefone) VALUES (
'21594243077', 'João da Silva', 'joaos8887s@gmail.com', '5510941063754');

USE Biblioteca;
INSERT INTO Usuario (
CPF, Nome, Email) VALUES (
'53256996019', 'Wilson Alves', 'wilsonalves00373@hotmail.com');

USE Biblioteca;
INSERT INTO Usuario (
CPF, Nome, Email, Telefone) VALUES (
'40271771003', 'Alessandro Florenço', 'aless6839fl@gmail.com', '5540956436079');

USE Biblioteca;
INSERT INTO Usuario (
CPF, Nome, Email) VALUES (
'55264758085', 'Joana Mendes', 'jo_ana_1007@gmail.com');

SELECT * FROM Usuario;

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Harveu', 'Deitel', '1945/06/10');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Paul', 'Deitel', '1980/11/11');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Paul', 'Bloch', '1961/08/28');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Paulo', 'Silveira', '1970/10/31');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Rodrigo', 'Turni', '1973/05/12');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Barri', 'Burd', '1991/06/12');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Decio', 'Luckow', '1967/01/22');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Alexandre', 'Altair de Melo', '1987/02/02');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Rodrigo', 'Gonçalves Santana', '1945/03/02');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Robert', 'C. Martin', '1981/08/15');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Jérôme', 'Gabillaud', '1978/07/18');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Jon', 'Duckett', '1988/09/20');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'David', 'Flanagan', '1993/12/25');

Use Biblioteca;
INSERT INTO Autor (
Nome, Sobrenome, Data_nascimento) VALUES (
'Sébasties', 'Chazallet', '1986/04/11');

SELECT * FROM Autor;

Use Biblioteca;
INSERT INTO Editora (
Nome, Data_fundacao) VALUES (
'Pearson Universidades', 1902);

Use Biblioteca;
INSERT INTO Editora (
Nome, Data_fundacao) VALUES (
'Alta Books', 1998);

Use Biblioteca;
INSERT INTO Editora (
Nome, Data_fundacao) VALUES (
'Casa do Código', 2005);

Use Biblioteca;
INSERT INTO Editora (
Nome, Data_fundacao) VALUES (
'Novatec', 2010);

Use Biblioteca;
INSERT INTO Editora (
Nome, Data_fundacao) VALUES (
'Ediciones Eni', 1910);

Use Biblioteca;
INSERT INTO Editora (
Nome, Data_fundacao) VALUES (
'Wiley', 2003);

Use Biblioteca;
INSERT INTO Editora (
Nome, Data_fundacao) VALUES (
'OReilly Media', 1995);

SELECT * FROM Editora;

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'8543004799', 'Java®: Como Programar', 1996, 968, 'PT-BR', 1);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8543004799', 1);
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8543004799', 2);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'8550804622', 'Java efetivo: as melhores práticas para a plataforma Java', 2019, 432, 'PT-BR', 2);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8550804622', 3);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'9788566250', 'Java 8 Prático: Lambdas, Streams e os novos recursos da linguagem', 2014, 192, 'PT-BR', 3);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'9788566250', 4);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'9788566250', 5);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'8576088010', 'Java para leigos', 2013, 424, 'PT-BR', 2);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8576088010', 6);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'8575222384', 'Programação Java Para a Web', 2010, 640, 'PT-BR', 4);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8575222384', 7);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8575222384', 8);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'8572540520', 'Design Patterns com C#: Aprenda padrões de projeto com os games', 2020, 175, 'PT-BR', 3);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8572540520', 9);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'8576082675', 'Código limpo: Habilidades práticas do Agile Software', 2009, 425, 'PT-BR', 2);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8576082675', 10);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'8576059347', 'C: Como Programar', 2011, 846, 'PT-BR', 1);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8576059347', 1);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'8576059347', 2);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'2746099403', 'SQL Server 2014: Pack 2 libros: Domine la administración y l', 2015, 1152, 'ES', 5);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'2746099403', 11);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'1118907442', 'Javascript & JQuery', 2011, 1078, 'EN', 6);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'1118907442', 12);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'0596805527', 'JavaScript: The Definitive Guide: Activate Your Web Pages', 2011, 988, 'EN', 7);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'0596805527', 13);

Use Biblioteca;
INSERT INTO Livro (
ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) VALUES (
'4090247887', 'Python 3 Los fundamentos del lenguaje', 2020, 667, 'EN', 5);

Use Biblioteca;
INSERT INTO Livro_autores (
ISBN, AutorID) VALUES (
'4090247887', 14);

SELECT * FROM Editora;
SELECT * FROM Autor;
SELECT * FROM Livro;
SELECT * FROM Livro_autores;
SELECT * FROM Usuario;

Use Biblioteca;
INSERT INTO Emprestimo (
Data_retirada, QTD_dias_para_emprestimo, Devolvido, ISBN, CPF) VALUES (
'2021/11/01', 20, 0, '0596805527', '40271771003');

Use Biblioteca;
INSERT INTO Emprestimo (
Data_retirada, QTD_dias_para_emprestimo, Devolvido, ISBN, CPF) VALUES (
'2021/10/15', 20, 0, '8576088010', '50009541063');

Use Biblioteca;
INSERT INTO Emprestimo (
Data_retirada, QTD_dias_para_emprestimo, Devolvido, ISBN, CPF) VALUES (
'2021/08/01', 20, 1, '8576059347', '55264758085');

Use Biblioteca;
INSERT INTO Emprestimo (
Data_retirada, QTD_dias_para_emprestimo, Devolvido, ISBN, CPF) VALUES (
'2021/09/12', 30, 1, '8576082675', '53256996019');

Use Biblioteca;
INSERT INTO Emprestimo (
Data_retirada, QTD_dias_para_emprestimo, Devolvido, ISBN, CPF) VALUES (
'2021/11/10', 30, 0, '8576059347', '21594243077');

Use Biblioteca;
INSERT INTO Emprestimo (
Data_retirada, QTD_dias_para_emprestimo, Devolvido, ISBN, CPF) VALUES (
'2021/11/05', 20, 0, '1118907442', '24602488064');

Use Biblioteca;
INSERT INTO Emprestimo (
Data_retirada, QTD_dias_para_emprestimo, Devolvido, ISBN, CPF) VALUES (
'2021/08/01', 20, 1, '2746099403', '55264758085');

Use Biblioteca;
INSERT INTO Emprestimo (
Data_retirada, QTD_dias_para_emprestimo, Devolvido, ISBN, CPF) VALUES (
'2021/09/12', 30, 1, '4090247887', '53256996019');

SELECT * FROM Emprestimo;



