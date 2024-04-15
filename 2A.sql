SELECT DISTINCT Código_de_barras
FROM Produto
WHERE Data_cadastro >= DATEADD(day, -10, GETDATE())
