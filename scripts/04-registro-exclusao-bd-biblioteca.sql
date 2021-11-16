USE Biblioteca;
CREATE TABLE Historico_Emprestimos
(EmprestimoID int PRIMARY KEY AUTO_INCREMENT,
Data_retirada DATE NOT NULL,
QTD_dias_para_emprestimo int NOT NULL,
Data_exclusao DATE NOT NULL,
ISBN VARCHAR(10) NOT NULL,
CPF VARCHAR(11) NOT NULL,
FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
FOREIGN KEY (CPF) REFERENCES Usuario(CPF)
);

delimiter $$
CREATE TRIGGER Emprestimos_log
AFTER delete ON Emprestimo
FOR EACH ROW
BEGIN
INSERT INTO Historico_Emprestimos values(old.EmprestimoID,old.Data_retirada,
old.QTD_dias_para_emprestimo,now(),old.ISBN,old.CPF);
 END$$
delimiter ;

SHOW TRIGGERS;

USE Biblioteca;
select * from emprestimo;

USE Biblioteca;
DELETE FROM Emprestimo WHERE Devolvido = 1;