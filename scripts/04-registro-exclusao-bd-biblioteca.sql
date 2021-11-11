CREATE TABLE registro_emprestimos
(id INT AUTO_INCREMENT,
titulo BIGINT,
usuario BIGINT,
data_emprestimo DATE,
quantidade_dias_emprestimo INT,
data_exclusao TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id));

ALTER TABLE registro_emprestimos ADD CONSTRAINT FK_TG_LIVRO
FOREIGN KEY (titulo) REFERENCES livros (isbn);

ALTER TABLE registro_emprestimos ADD CONSTRAINT FK_TG_USUARIO
FOREIGN KEY (usuario) REFERENCES usuarios (cpf);

DELIMITER //
CREATE TRIGGER TG_ARMAZENA_REGISTRO_DELETE AFTER DELETE ON emprestimos
FOR EACH ROW BEGIN
	INSERT INTO registro_emprestimos (titulo, usuario, data_emprestimo, quantidade_dias_emprestimo)
    VALUES (OLD.isbn, OLD.cpf, OLD.data_retirada, OLD.quantidade_dias_emprestimo);
END//

DELETE FROM emprestimos WHERE esta_emprestado = 0;

SELECT l.titulo, u.nome AS usuario, re.data_emprestimo, re.quantidade_dias_emprestimo, re.data_exclusao
FROM registro_emprestimos AS re
INNER JOIN livros AS l ON re.titulo = l.isbn
INNER JOIN usuarios AS u ON re.usuario = u.cpf;
