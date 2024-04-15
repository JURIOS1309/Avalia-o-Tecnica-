UPDATE Produtoinfo
SET IDFabricante = (
    SELECT ID
    FROM Fabricante
    WHERE Nome = 'JOAO'
)
WHERE IDOrigem = (
    SELECT Id
    FROM Origem
    WHERE Nome = 'DISTRIBUIDORA TESTE'
)
AND IDFabricante = (
    SELECT ID
    FROM Fabricante
    WHERE Nome = 'MARIA'
);
