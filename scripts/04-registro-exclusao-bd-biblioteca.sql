CREATE TABLE registro_emprestimos
(id INT AUTO_INCREMENT,
titulo VARCHAR(255),
usuario VARCHAR(40),
data_emprestimo DATE,
data_exclusao TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id));

DELIMITER //
CREATE TRIGGER TG_ARMAZENA_REGISTRO_DELETE AFTER DELETE ON emprestimos
FOR EACH ROW BEGIN
	INSERT INTO registro_emprestimos (titulo, usuario, data_emprestimo)
    SELECT livros.titulo AS livro, 
			usuarios.nome AS usuario, 
			emprestimos.data_retirada AS data_emprestimo 
	FROM emprestimos AS emprestimos
	INNER JOIN livros AS livros ON emprestimos.isbn = livros.isbn
	INNER JOIN usuarios AS usuarios ON emprestimos.cpf = usuarios.cpf;
END//

DELETE FROM emprestimos WHERE esta_emprestado = 0;

SELECT * FROM emprestimos;
SELECT * FROM registro_emprestimos;
