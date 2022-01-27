-- Tabela de Log de Emprestimo Excluidos;  
DROP TABLE IF EXISTS LOG_EMPRESTIMO_EXCLUIDO;  
CREATE TABLE IF NOT EXISTS `BIBLIOTECA`. `LOG_EMPRESTIMO_EXCLUIDO`(
`LOG_EMPRESTIMO_EXCLUIDO_KEY` BIGINT NOT NULL AUTO_INCREMENT,
`ISBN` BIGINT(10) NOT NULL,  
`CPF` BIGINT NOT NULL,
`DATA_DO_EMPRESTIMO` DATE NOT NULL,
`DIAS_DE_EMPRESTIMO` INT NOT NULL,
`DATA_DE_EXCLUSAO` DATE NOT NULL,
CONSTRAINT LOG_EMPRESTIMO_EXCLUIDO_KEY_PK PRIMARY KEY (LOG_EMPRESTIMO_EXCLUIDO_KEY), 
CONSTRAINT `FK_ISBN_KEY_LOG` FOREIGN KEY (`ISBN`) REFERENCES `LIVRO` (`ISBN`),
CONSTRAINT `FK_CPF_KEY_LOG` FOREIGN KEY (`CPF`) REFERENCES `USUARIO` (`CPF`));

-- Trigger para registrar informações ao excluir um registro da tabela de Log de Empréstimos Excluidos
DROP TRIGGER IF EXISTS `biblioteca`.`emprestimo_AFTER_DELETE`;
DELIMITER $$
USE `biblioteca`$$
CREATE DEFINER = CURRENT_USER TRIGGER `biblioteca`.`emprestimo_AFTER_DELETE` AFTER DELETE ON `emprestimo` FOR EACH ROW
BEGIN
INSERT INTO `LOG_EMPRESTIMO_EXCLUIDO`
 VALUES (null, OLD.ISBN, OLD.CPF, OLD.DATA_DE_RETIRADA, OLD.DIAS_DE_EMPRESTIMO, NOW() );
END$$
DELIMITER ;

-- Crie um delete que remova todos os empréstimo em que o livro já foi devolvido.
SELECT * FROM EMPRESTIMO WHERE DEVOLVIDO = 1;
DELETE FROM EMPRESTIMO WHERE DEVOLVIDO = 1;
SELECT * FROM LOG_EMPRESTIMO_EXCLUIDO