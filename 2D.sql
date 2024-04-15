WITH OrigensOrdenadas AS (
    SELECT 
        pi.IDProduto,
        pi.IDOrigem,
        ROW_NUMBER() OVER (PARTITION BY pi.IDProduto ORDER BY o.Preferencia DESC) AS RowNum
    FROM ProdutoInfo pi
    INNER JOIN Origem o ON pi.IDOrigem = o.Id
)

SELECT 
    p."Código de barras",
    pi.Descrição,
    f.Nome AS Nome_Fabricante,
    pi."Código Interno"
FROM Produto p
INNER JOIN ProdutoInfo pi ON p.ID = pi.IDProduto
INNER JOIN Fabricante f ON pi.IDFabricante = f.ID
INNER JOIN OrigensOrdenadas oo ON pi.IDProduto = oo.IDProduto AND pi.IDOrigem = oo.IDOrigem
WHERE oo.RowNum = 1;
