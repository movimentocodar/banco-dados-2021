INSERT INTO autores (nome, sobrenome, data_nascimento) VALUES ('J.K.', 'Rowling', '1965-07-31'),
('Jane', 'Austen', '1775-12-16'),
('Rodrigo', 'Turini', '1988-05-02'),
('Mauricio', 'Aniche', '1985-07-10'),
('Joshua', 'Bloch', '1961-08-28'),
('Robert', 'C. Martin', '1952-02-03');

INSERT INTO editoras (nome, data_fundacao) VALUES ('Rocco', '1975-03-12'),
('Penguin', '1935-01-01'),
('Casa do Código', '2012-04-20'),
('Prentice Hall PTR', '1913-05-30'),
('Alta Books', '1987-01-01');

INSERT INTO livros VALUES (8532530788, 'Harry Potter e a Pedra Filosofal', '2017-08-19', 345, 'EN', 1, 1),
(8563560158, 'Orgulho e Preconceito', '2011-06-21', 576, 'PT-BR', 2, 2),
(8566250466, 'Java 8 Prático', '2014-03-01', 151, 'ES', 3, 3),
(9788555190, 'JAVA: Orientação a Objetos e SOLID para Ninjas', '2015-03-01', 155, 'PT-BR', 4, 3),
(8550804622, 'As melhores práticas para a plataforma JaVa', '2019-05-28', 432, 'PT-BR', 5, 5),
(8576082675, 'Código limpo: Habilidades práticas do Agile Software', '2009-09-08', 425, 'EN', 4, 4);

INSERT INTO usuarios VALUES (12398765423,  'Fernanda Beato', 'fernandabeato@gmail.com', ''),
(22398765833,  'Diogo Beato', 'diogobeato@gmail.com', ''),
(32392265423,  'Luciane Beato', 'lucianebeato@gmail.com', ''),
(42394465423,  'Renato Beato', 'renatobeato@gmail.com', ''),
(52395565423,  'Andréa Beato', 'andreabeato@gmail.com', '');

INSERT INTO emprestimos (isbn, cpf, data_retirada, quantidade_dias_emprestimo, esta_emprestado) VALUES
(8563560158, 12398765423, '2020-09-30', 20, 1),
(8566250466, 22398765833, '2020-09-20', 10, 1),
(9788555190, 32392265423, '2020-09-27', 10, 1),
(8576082675, 42394465423, '2020-09-29', 15, 0),
(8550804622, 52395565423, '2020-10-01', 5, 0);

