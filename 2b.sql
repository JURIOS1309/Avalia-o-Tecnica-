SELECT DISTINCT o.Nome
FROM Origem o
INNER JOIN ProdutoInfo pi ON o.Id = pi.IDOrigem
WHERE MONTH(pi.Data_Cadastro) = 3 AND YEAR(pi.Data_Cadastro) = 2020
   OR MONTH(pi.Data_Atualizacao) = 3 AND YEAR(pi.Data_Atualizacao) = 2020;
