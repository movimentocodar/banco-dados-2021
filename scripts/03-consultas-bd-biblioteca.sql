/* A quantidade de livros por Idioma. */

SELECT l.idioma AS IDIOMA, COUNT(idioma) AS QUANTIDADE
FROM livros l
GROUP BY l.idioma
ORDER BY QUANTIDADE DESC;

/* 
 Livros que foram emprestados nos últimos sete dias,
 ordenados do empréstimo mais antigo para o mais recente.
*/

SELECT l.titulo AS LIVRO, DATE_FORMAT(e.data_retiro, '%d/%m/%Y')  AS DATA_EMPRESTIMO
FROM emprestimos e LEFT JOIN livros l ON l.ISBN = e.livro
WHERE e.data_retiro >= DATE(NOW()) - INTERVAL 7 DAY
ORDER BY e.data_retiro ASC;

/*
 Todos os livros que contém a palavra 'java' na descrição (Independente de maiúsculas ou minúsculas).
*/

SELECT l.titulo AS LIVRO FROM livros l
WHERE l.titulo LIKE '%java%';

/* Apresente os dados de livros emprestados que estão com a devolução atrasada e indique se tem ou não uma multa */

SELECT l.titulo AS LIVRO, u.nome AS USUARIO, u.email AS EMAIL,
DATE_FORMAT(e.data_retiro, '%d/%m/%Y') AS DATA_EMPRESTIMO, e.qnt_dias_emprestimo AS DIAS_EMPRESTIMO,
DATEDIFF(NOW(), DATE_ADD(e.data_retiro, INTERVAL e.qnt_dias_emprestimo DAY)) AS DIAS_ATRASO,
IF(DATEDIFF(NOW(), DATE_ADD(e.data_retiro, INTERVAL e.qnt_dias_emprestimo DAY)) >= 5, "COM MULTA", "SEM MULTA") AS MULTA 
FROM usuarios_biblioteca u 
JOIN emprestimos e ON u.cpf = e.usuario
JOIN livros l ON e.livro = l.ISBN
WHERE DATEDIFF(NOW(), DATE_ADD(e.data_retiro, INTERVAL e.qnt_dias_emprestimo DAY)) > 0;
