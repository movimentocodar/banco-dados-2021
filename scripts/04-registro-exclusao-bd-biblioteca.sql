CREATE TABLE IF NOT EXISTS emprestimos_excluidos(
	id_ee INT UNSIGNED AUTO_INCREMENT,
	livro VARCHAR(17) NOT NULL,
    usuario VARCHAR(11) NOT NULL,
    data_retiro DATE NOT NULL,
    qnt_dias_emprestimo INT UNSIGNED NOT NULL,
    data_exclusao DATE NOT NULL,
    PRIMARY KEY (id_ee),
    FOREIGN KEY(livro)
    REFERENCES livros(ISBN),
    FOREIGN KEY(usuario)
    REFERENCES usuarios_biblioteca(cpf)
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

DELIMITER //
CREATE TRIGGER TG_INSERT_DELETE_EMPRESTIMOS AFTER DELETE ON emprestimos
FOR EACH ROW INSERT emprestimos_excluidos VALUES
(DEFAULT, OLD.livro, OLD.usuario, OLD.data_retiro, OLD.qnt_dias_emprestimo, now());
//

DELETE FROM emprestimos WHERE devolvido = TRUE
LIMIT 10;
