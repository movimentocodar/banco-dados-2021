SELECT Idioma, count(*) AS Quantidade_de_livros FROM Livro GROUP BY Idioma;

SELECT 
L.Titulo, 
E.Data_retirada 
FROM Livro L 
INNER JOIN Emprestimo E 
ON L.ISBN = E.ISBN 
WHERE (DATEDIFF(now(), Data_retirada) <= 7);

SELECT Titulo FROM Livro WHERE LOWER(Titulo) LIKE '%java%';

SELECT 
L.Titulo, 
U.Nome, 
U.Email, 
E.Data_retirada, 
E.QTD_dias_para_emprestimo, 
DATEDIFF(now(), E.Data_retirada) AS Dias_atraso,
(IF((DATEDIFF(now(), E.Data_retirada) > (E.QTD_dias_para_emprestimo + 5)), "SEM MULTA", "COM MULTA")) AS MULTA
FROM Emprestimo E
INNER JOIN Livro L
ON E.ISBN = L.ISBN
INNER JOIN Usuario U
ON E.CPF = U.CPF
WHERE (E.Devolvido = 0 AND DATEDIFF(now(), E.Data_retirada) > E.QTD_dias_para_emprestimo);