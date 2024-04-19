SELECT DISTINCT p.Código_de_barras
FROM Produto p
INNER JOIN ProdutoInfo pi ON p.ID = pi.IDProduto
WHERE pi.Data_Cadastro >= DATEADD(day, -10, GETDATE())
