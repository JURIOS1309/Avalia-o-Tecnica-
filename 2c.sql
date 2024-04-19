UPDATE Produtoinfo
SET IDFabricante = (
    SELECT ID
    FROM Fabricante
    WHERE Nome = 'JOAO'
)
WHERE IDFabricante = (
    SELECT ID
    FROM Fabricante
    WHERE Nome = 'MARIA'
)
AND IDOrigem = (
    SELECT ID
    FROM Origem
    WHERE Nome = 'DISTRIBUIDORA TESTE'
);
