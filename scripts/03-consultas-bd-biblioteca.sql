
-- Quantidade de livros por Idioma

SELECT IDIOMA, SUM(IDIOMA) AS QUANTIDADE 
FROM LIVRO
GROUP BY IDIOMA;

/* Livros que foram emprestados nos últimos sete dias, ordenados do empréstimo mais antigo para o mais recente.
A data deve estar no formato mostrado abaixo.
Levando em consideração a data 01/10/2020 caso queira a data atual alterar a linha 18 para:
BETWEEN TIMESTAMP(DATE_SUB(NOW(), INTERVAL 7 day)) AND NOW()*/
 
SELECT LI.TITULO AS LIVRO , date_format(EM.DATA_DE_RETIRADA, "%d/%1/%Y") AS DATA_EMPRESTIMO 
FROM EMPRESTIMO EM
INNER JOIN LIVRO LI ON EM.ISBN = LI.ISBN
Where  EM.DATA_DE_RETIRADA 
BETWEEN TIMESTAMP(DATE_SUB('2020-10-01', INTERVAL 7 day)) AND '2020-10-01'
order by EM.DATA_DE_RETIRADA ASC;

-- Todos os livros que contém a palavra 'java' na descrição (Independente de maiúsculas ou minúsculas).
SELECT TITULO AS LIVRO FROM LIVRO WHERE TITULO LIKE '%java%';

/* Apresente os dados de livros emprestados que estão com a devolução atrasada e indique se tem ou não uma multa.
A regra do campo ​ MULTA ​ é:
Se dias em atraso for menor que 5 é SEM MULTA
Se dias em atraso for maior ou igual a 5 é COM MULTA
Formato do resultado: (Considere a data atual de 01/10/2020 para o exemplo),
Caso queira a data atual altere a data '2020-10-01' para  NOW() */

SELECT
 LI.TITULO AS LIVRO,
 US.NOME AS USUARIO, 
 US.EMAIL, 
 EM.DATA_DE_RETIRADA AS DATA_EMPRESTIMO,
 EM.DIAS_DE_EMPRESTIMO AS DIAS_EMPRESTIMO ,
 (DATEDIFF ('2020-10-01', EM.DATA_DE_RETIRADA ) - EM.DIAS_DE_EMPRESTIMO)  AS DIAS_ATRASO,
IF((DATEDIFF ('2020-10-01', EM.DATA_DE_RETIRADA ) - EM.DIAS_DE_EMPRESTIMO) < 5, 'SEM MULTA', 'COM MULTA')  AS MULTA 
 FROM EMPRESTIMO EM
INNER JOIN LIVRO LI ON LI.ISBN = EM.ISBN
INNER JOIN USUARIO US ON US.CPF = EM.CPF
WHERE  (DATEDIFF ('2020-10-01', EM.DATA_DE_RETIRADA )- EM.DIAS_DE_EMPRESTIMO) > 0
AND EM.DEVOLVIDO = 0
ORDER BY DIAS_ATRASO DESC ;