USE Biblioteca;
INSERT INTO 
	Usuario (CPF, Nome, Email, Telefone) 
VALUES 
('24602488064', 'Maria de Lourdes Pereira', 'marial87@gmail.com', '5511967656850'),
('50009541063', 'Mario José Freitas', 'mjosefreitas@bol.com.br', null),
('21594243077', 'João da Silva', 'joaos8887s@gmail.com', '5510941063754'),
('53256996019', 'Wilson Alves', 'wilsonalves00373@hotmail.com', null),
('40271771003', 'Alessandro Florenço', 'aless6839fl@gmail.com', '5540956436079'),
('55264758085', 'Joana Mendes', 'jo_ana_1007@gmail.com', null);

Use Biblioteca;
INSERT INTO 
	Autor (Nome, Sobrenome, Data_nascimento) 
VALUES 
	('Harveu', 'Deitel', STR_TO_DATE('10/06/1945', '%d/%m/%Y')),
	('Paul', 'Deitel', STR_TO_DATE('11/11/1980', '%d/%m/%Y')),
	('Paul', 'Bloch', STR_TO_DATE('28/08/1961', '%d/%m/%Y')),
	('Paulo', 'Silveira', STR_TO_DATE('31/10/1970', '%d/%m/%Y')),
	('Rodrigo', 'Turni', STR_TO_DATE('12/05/1973', '%d/%m/%Y')),
	('Barri', 'Burd', STR_TO_DATE('12/06/1991', '%d/%m/%Y')),
	('Decio', 'Luckow', STR_TO_DATE('22/01/1967', '%d/%m/%Y')),
	('Alexandre', 'Altair de Melo', STR_TO_DATE('02/02/1987', '%d/%m/%Y')),
	('Rodrigo', 'Gonçalves Santana', STR_TO_DATE('02/03/1945', '%d/%m/%Y')),
	('Robert', 'C. Martin', STR_TO_DATE('15/08/1981', '%d/%m/%Y')),
	('Jérôme', 'Gabillaud', STR_TO_DATE('18/07/1978', '%d/%m/%Y')),
	('Jon', 'Duckett', STR_TO_DATE('20/09/1988', '%d/%m/%Y')),
	('David', 'Flanagan', STR_TO_DATE('25/12/1993', '%d/%m/%Y')),
	('Sébasties', 'Chazallet', STR_TO_DATE('11/04/1986', '%d/%m/%Y'));

Use Biblioteca;
INSERT INTO 
Editora (Nome, Data_fundacao) 
VALUES 
	('Pearson Universidades', 1902),
    ('Alta Books', 1998),
	('Casa do Código', 2005),
	('Novatec', 2010),
	('Ediciones Eni', 1910),
	('Wiley', 2003),
	('OReilly Media', 1995);

Use Biblioteca;
INSERT INTO 
Livro (ISBN, Titulo, Data_publicacao, QTD_paginas, Idioma, EditoraID) 
VALUES 
	('8543004799', 'Java®: Como Programar', 1996, 968, 'PT-BR', 1), 
	('8550804622', 'Java efetivo: as melhores práticas para a plataforma Java', 2019, 432, 'PT-BR', 2),
	('9788566250', 'Java 8 Prático: Lambdas, Streams e os novos recursos da linguagem', 2014, 192, 'PT-BR', 3),
	('8576088010', 'Java para leigos', 2013, 424, 'PT-BR', 2),
	('8575222384', 'Programação Java Para a Web', 2010, 640, 'PT-BR', 4),
	('8572540520', 'Design Patterns com C#: Aprenda padrões de projeto com os games', 2020, 175, 'PT-BR', 3),
	('8576082675', 'Código limpo: Habilidades práticas do Agile Software', 2009, 425, 'PT-BR', 2), 
	('8576059347', 'C: Como Programar', 2011, 846, 'PT-BR', 1),
	('2746099403', 'SQL Server 2014: Pack 2 libros: Domine la administración y l', 2015, 1152, 'ES', 5),
	('1118907442', 'Javascript & JQuery', 2011, 1078, 'EN', 6),
	('0596805527', 'JavaScript: The Definitive Guide: Activate Your Web Pages', 2011, 988, 'EN', 7),
	('4090247887', 'Python 3 Los fundamentos del lenguaje', 2020, 667, 'EN', 5);

Use Biblioteca;
INSERT INTO 
Livro_autores (ISBN, AutorID) 
VALUES 
	('8543004799', 1),
	('8543004799', 2),
	('8550804622', 3),
	('9788566250', 4),
	('9788566250', 5),
	('8576088010', 6),
	('8575222384', 7),
	('8575222384', 8),
	('8572540520', 9),
	('8576082675', 10),
	('8576059347', 1),
	('8576059347', 2),
	('2746099403', 11),
	('1118907442', 12),
	('0596805527', 13),
	('4090247887', 14);

Use Biblioteca;
INSERT INTO 
Emprestimo (Data_retirada, QTD_dias_para_emprestimo, Devolvido, ISBN, CPF) 
VALUES 
	('2021/11/01', 20, 0, '0596805527', '40271771003'),
    ('2021/10/15', 20, 0, '8576088010', '50009541063'),
	('2021/08/01', 20, 1, '8576059347', '55264758085'),
	('2021/09/12', 30, 1, '8576082675', '53256996019'),
	('2021/11/10', 30, 0, '8576059347', '21594243077'),
	('2021/11/05', 20, 0, '1118907442', '24602488064'),
	('2021/08/01', 20, 1, '2746099403', '55264758085'),
	('2021/09/12', 30, 1, '4090247887', '53256996019');
    
SELECT * FROM Usuario;
SELECT * FROM Editora;
SELECT * FROM Autor;
SELECT * FROM Livro;
SELECT * FROM Livro_autores;
SELECT * FROM Usuario;
SELECT * FROM Emprestimo;



