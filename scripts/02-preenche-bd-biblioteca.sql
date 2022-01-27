
-- Insert Tabale Autoria
INSERT INTO `AUTOR` VALUES (null,'Furgeri', ' Bates', '2000-08-25'  );
insert into `AUTOR` VALUES (null,'Sérgio', 'Lispector', '1980-12-12');
insert into `AUTOR` VALUES (null,'Martelli', 'Torres', '1970-10-07' );
insert into `AUTOR` VALUES (null,'Paul', 'Brain', '1993-05-05'      );
insert into `AUTOR` VALUES (null,'Evans', 'Late', '2005-07-21'      );
insert into `AUTOR` VALUES (null,'Andre', 'Carlos', '1990-07-07'    );

-- Insert Table Editora
insert into `EDITORA` VALUES (null,'Alta Books', '2005-07-05'           );
insert into `EDITORA` VALUES (null,'Erica', '2000-01-21'                );
insert into `EDITORA` VALUES (null,'Pearson Universidades', '1800-07-21');
insert into `EDITORA` VALUES (null,'LTC', '2005-07-21'                  );
insert into `EDITORA` VALUES (null,'Senac São Paulo', '1993-07-10'      );
insert into `EDITORA` VALUES (null,'Casa de Codigo', '1993-07-10'       );

-- Insert Table Livro
insert into `LIVRO` VALUES (8536527269,'Java : Ensino didático', '2018-02-03', 336, 'PORTUGUES', 1, 2 					       );
insert into `LIVRO` VALUES (8543004799,'Como Programar em jaVa'   , '2016-06-24', 968, 'PORTUGUES', 4, 3 					   );
insert into `LIVRO` VALUES (8539609061,'HTML5 e CSS3'          , '2016-04-02', 282, 'PORTUGUES', 3, 5					       );
insert into `LIVRO` VALUES (8521637349,'IA- Uma Abordagem de Aprendizado de Máquina', '2021-03-12', 336, 'PORTUGUES', 6, 4     );
insert into `LIVRO` VALUES (8550800651,'Livro - Domain-Driven Design', '2021-03-12', 528, 'INGLES', 5, 1				       );
insert into `LIVRO` VALUES (9788550806,'Libro de Código Limpio', '2010-01-17', 700, 'ESPANHOL', 5, 6						   );
insert into `LIVRO` VALUES (7550800659,'Java Basico', '2021-03-12', 528, 'PORTUGUES', 1, 1				                       );
insert into `LIVRO` VALUES (6788550808,'Aprendendo Logica', '2010-01-17', 700, 'ESPANHOL', 5, 6						           );

-- Insert Table Usuario

insert into `USUARIO` VALUES (94183536014, 'Hugo Ferreira', 'hugoogle@teste.com.br', '999991234');
insert into `USUARIO` VALUES (58119396049, 'Heloisa Gama', 'lolo@teste.com.br', '979996541'     );
insert into `USUARIO` VALUES (67968155053, 'Aldice Ferreira', 'didi@teste.com.br', '989999871'  );
insert into `USUARIO` VALUES (16316696051, 'Nubia Torres', 'bibia@teste.com.br', '969991593'    );
insert into `USUARIO` VALUES (02310928062, 'Humberto Garcia', 'beto@teste.com.br', '949991585'  );

-- Insert Tabela Emprestimo
insert into `EMPRESTIMO` VALUES(null, 8536527269, 94183536014, '2020-09-10', 10, FALSE ); 
insert into `EMPRESTIMO` VALUES(null, 8521637349, 16316696051, '2020-07-16', 100, TRUE );
insert into `EMPRESTIMO` VALUES(null, 8550800651, 16316696051, '2020-09-12', 15, FALSE );
insert into `EMPRESTIMO` VALUES(null, 9788550806, 94183536014, '2020-09-11', 10, FALSE );
insert into `EMPRESTIMO` VALUES(null, 8536527269, 02310928062, '2020-09-11', 10, TRUE  );
insert into `EMPRESTIMO` VALUES(null, 8543004799, 02310928062, '2020-09-27', 12, FALSE );
insert into `EMPRESTIMO` VALUES(null, 7550800659, 02310928062, '2020-09-29', 13, FALSE );
insert into `EMPRESTIMO` VALUES(null, 6788550808, 02310928062, '2020-10-01', 15, FALSE );