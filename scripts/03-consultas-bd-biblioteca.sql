SELECT idioma, COUNT(*) AS Quantidade FROM livros GROUP BY idioma;

SELECT titulo, DATE_FORMAT(data_retirada,'%d/%m/%Y') AS data_emprestimo 
FROM emprestimos emprestimos INNER JOIN livros livros ON emprestimos.isbn = livros.isbn
WHERE esta_emprestado = 1
AND data_retirada >= '2020-10-01' - interval 7 day
ORDER BY data_retirada;

SELECT titulo FROM livros WHERE titulo LIKE '%JAVA%';  
        
SELECT titulo AS livro, nome AS usuario, email, data_retirada AS data_emprestimo, 
quantidade_dias_emprestimo AS dias_emprestimo, 
DATEDIFF(ADDDATE(data_retirada, INTERVAL quantidade_dias_emprestimo DAY), '2020-10-01') AS Dias_atraso,
	IF(DATEDIFF(ADDDATE(data_retirada, INTERVAL quantidade_dias_emprestimo DAY), '2020-10-01') >= 5, 
		"COM MULTA", "SEM MULTA") AS Multa
FROM emprestimos AS emprestimos
INNER JOIN livros AS livros ON emprestimos.isbn = livros.isbn
INNER JOIN usuarios AS usuarios ON emprestimos.cpf = usuarios.cpf;
