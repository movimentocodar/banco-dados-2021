
INSERT INTO livros (TITULO, DATA_PUBLICACAO, PAGINAS, IDIOMA, ISBN, AUTORES, EDITORA)
VALUES 
('The Ghost In The Shell', '2016-12-1', '352', 'Português', '8545702329', 10, 9),
('O Ladrão de Raios', '2008-12-12', '400', 'Português', '8598078395', 11, 10),
('O Mar de Monstros', '2009-12-12', '304', 'Espanhol', '8598078441', 11, 10),
('O Último Desejo', '2015-05-28', '320', 'Português', '8578279581', 12, 11),
('Auguste Dupin: o primeiro detetive', '2020-02-20', '256', 'Inglês', '8542816480', 13, 12),
('Berserk Vol. 1: Edição de Luxo', '2021-06-28', '224', 'Português', '8542617096', 14, 13),
('Berserk Vol. 2: Edição de Luxo', '2021-06-29', '225', 'Português', '4542617097', 14, 13),
('Berserk Vol. 3: Edição de Luxo', '2021-06-30', '226', 'Português', '6542617098', 14, 13),
('Box Duna: Primeira Trilogia', '2021-03-25', '1480', 'Inglês', '6586064414', 15, 14),
('Duna: livro 1', '2017-04-28', '680', 'Inglês', '8576573130', 15, 14),
('Messias de Duna: livro 2', '2017-07-05', '272', 'Inglês', '8576573822', 15, 14),
('Filhos de Duna: livro 3', '2017-08-31', '528', 'Inglês', '8576573148', 15, 14),
('A espada do Destino', '2015-06-05', '380', 'Português', '8578275560', 12, 11),
('Caixa Harry Potter: Edição Premium', '2017-06-17', '1325', 'Espanhol', '8532505708', 16, 15),
('Harry Potter e a Criança Amaldiçoada', '2016-10-31', '214', 'Espanhol', '8532530427', 16, 15),
('Animais Fantásticos e Onde Habitam', '2017-04-08', '287', 'Espanhol', '8532530613', 16, 15),
('Java: Como Programar', '2016-06-24', '968', 'Português', '8543004799', 17, 16);

INSERT INTO autores (NOME, SOBRENOME, DATA_NASCIMENTO, ID_AUTOR)
VALUES
('Masamune', 'Shirow', '1961-11-23', DEFAULT),
('Rick', 'Riordan', '1964-06-05', DEFAULT),
('Andrzej', 'Sapkowski', '1948-06-21', DEFAULT),
('Edgar Allan', 'Poe', '1809-01-19', DEFAULT),
('Miura', 'Kentaro', '1966-07-11', DEFAULT),
('Frank', 'Herbert', '1920-11-08', DEFAULT),
('JK', 'Rowling', '1965-07-31', DEFAULT),
('Paul', 'Deitel', '1945-12-12', DEFAULT),
('Harvey', 'Deitel', '1945-12-12', DEFAULT);

INSERT INTO editoras (NOME, DATA_FUNDACAO, ID_EDITORA)
VALUES
('Editora JBC', '1995-12-12', DEFAULT),
('Intrínseca', '2003-12-12', DEFAULT),
('WMF Martins Fontes', '2006-09-18', DEFAULT),
('Novo Século', '2001-07-01', DEFAULT),
('Panini', '1994-12-12', DEFAULT),
('Editora Aleph', '1984-12-12', DEFAULT),
('Rocco', '1975-12-12', DEFAULT),
('Pearson Universidades', '1844-12-12', DEFAULT);

INSERT INTO usuarios (NOME, CPF, EMAIL, TELEFONE)
VALUES
('Vitor Hugo de Souza Lima Dantas Tavares', '62167395060', 'vitorhugo@outlook.com', NULL),
('Giulio Cesar Costa Bernardi', '71483030016', 'giuliocesar@outlook.com', NULL),
('Rafael de Souza Lima Dantas Tavares', '68064773059', 'rafatavares@outlook.com', '123456789'),
('Alice Inacio de Oliveira', '71206489006', 'aliceinacio@gmail.com', NULL),
('Clara Helen Oliveira Carlos', '52769895087', 'clarahelen@outlook.com', NULL),
('Eric Figueira Macieski', '92625873094', 'eric@hotmail.com', '456781000'),
('Mateus Jesus', '61175415030', 'mateus10@hotmail.com', '000456823'),
('Manuela Heck', '65960215055', 'manu@outlook.com.br', NULL),
('Gabriel Scherrer', '71237818052', 'bielsch@gmail.com', NULL),
('Luiz Fernando', '10412542021', 'lf.cezario@hotmail.com', NULL),
('Kathrina Khantack', '19753097077', 'kathrina@hotmail.com', NULL),
('Thiago Herculano', '66900479030', 'th.herculano@gmail.com', '334801444'),
('Gustavo Araujo', '04720245072', 'gustavo.araujo@hotmail.com', '002945001'),
('Anna Caldas Martins', '34221282045', 'anna.martins@gmail.com', '100384222');

/* 
	STATUS_DEVOLUCAO: 
	0 = NÃO DEVOLVIDO
    1 = DEVOLVIDO
*/
INSERT INTO emprestimos (LIVRO, USUARIO, DATA_RETIRADA, QUANTIDADE_DIAS, STATUS_DEVOLUCAO)
VALUES
('8542617096', '68064773059', '2021-08-12', 12, 1),
('8542816480', '71206489006', '2020-05-02', 7, 1),
('8576573130', '62167395060', '2021-11-05', 3, 0),
('8532530613', '65960215055', '2021-11-02', 5, 0),
('8578275560', '04720245072', '2021-10-28', 7, 0),
('8578279581', '34221282045', '2021-11-02', 5, 0),
('8545702329', '61175415030', '2021-10-20', 7, 0),
('6586064414', '19753097077', '2021-11-04', 6, 1),
('8598078441', '92625873094', '2021-11-06', 7, 0),
('8576573822', '71483030016', '2021-11-11', 12, 0),
('8543004799', '68064773059', '2021-11-09', 20, 0);

