SELECT
    p.Código_de_barras,
    pi.Descrição,
    f.Nome AS Nome_do_fabricante,
    pi.Código_Interno
FROM
    Produto p
INNER JOIN
    ProdutoInfo pi ON p.ID = pi.IDProduto
INNER JOIN
    Fabricante f ON pi.IDFabricante = f.ID
INNER JOIN
    Origem o ON pi.IDOrigem = o.ID
WHERE
    o.Preferência = 1
