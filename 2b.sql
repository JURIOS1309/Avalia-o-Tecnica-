SELECT DISTINCT Origem.Nome
FROM Origem
INNER JOIN ProdutoInfo ON Origem.ID = ProdutoInfo.IDOrigem
WHERE MONTH(ProdutoInfo.DataAtualizacao) = 3 AND YEAR(ProdutoInfo.DataAtualizacao) = 2020

