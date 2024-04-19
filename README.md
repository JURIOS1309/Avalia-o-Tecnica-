# Questão 2.
##Tema: Banco de dados SQL. 

## RESPOSTA A

Para realizar a consulta que retorna os códigos de barras dos produtos cadastrados pela primeira vez no banco nos últimos 10 dias, utilizei a junção das tabelas Produto e ProdutoInfo, e o filtro dos registros com base na data de cadastro.

```sql 
SELECT DISTINCT p.Código_de_barras
FROM Produto p
INNER JOIN ProdutoInfo pi ON p.ID = pi.IDProduto
WHERE pi.Data_Cadastro >= DATEADD(day, -10, GETDATE())
```

Detalhamento da consulta:
- Usei um INNER JOIN para combinar as tabelas Produto e ProdutoInfo com base no ID do produto.
- Um DISTINCT para garantir que cada código de barras seja listado apenas uma vez.
- E na cláusula WHERE, filtrei os registros para incluir apenas aqueles onde a Data_Cadastro na tabela ProdutoInfo é maior ou igual à data atual menos 10 dias (DATEADD(day, -10, GETDATE())).

## RESPOSTA B

Para obter os resultados do nomes das origens que tiveram algum produto cadastrado ou atualizado no mês de março de 2020, foi feito uma junção entre as tabelas e condições de filtro na data.

```sql
SELECT DISTINCT Origem.Nome
FROM Origem
INNER JOIN ProdutoInfo ON Origem.ID = ProdutoInfo.IDOrigem
WHERE MONTH(ProdutoInfo.DataAtualizacao) = 3 AND YEAR(ProdutoInfo.DataAtualizacao) = 2020
```

Detalhamento da consulta:
- Foi selecionado os nomes das origens (Origem.Nome) da tabela `Origem`.
- Estabelecido uma junção interna (`INNER JOIN`) com a tabela `ProdutoInfo` utilizando a condição `Origem.ID = ProdutoInfo.IDOrigem` para relacionar as origens com as informações do produto.
- Utilizei a função `MONTH()` para extrair o mês da coluna `DataAtualizacao` e a função `YEAR()` para extrair o ano. Após comparado o mês e o ano com 3 (março) e 2020, consequentemnte.
- Utilizei o `DISTINCT` para garantir que cada origem fosse listada apenas uma vez, mesmo que tenha múltiplos produtos cadastrados ou atualizados em março de 2020.


## RESPOSTA C

Para corrigir o erro na atualização da origem "DISTRIBUIDORA TESTE" em que todos os produtos do fabricante "JOAO" foram enviados com o nome "MARIA", utilizei uma consulta SQL UPDATE com uma cláusula WHERE para selecionar os registros específicos que precisam ser corrigidos.

```sql
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
```

Detalhamento da consulta:
Essa consulta atualiza os registros na tabela `Produtoinfo` onde o `IDFabricante` corresponde ao fabricante com nome "MARIA" para o `IDFabricante` do fabricante com nome "JOAO", apenas para os produtos provenientes da origem "DISTRIBUIDORA TESTE".


## RESPOSTA D

Para utilizar essa consulta, foi preciso juntar as tabelas `Produto`, `ProdutoInfo`, `Fabricante` e `Origem`, e selecionar os campos desejados, filtrando pela origem de maior preferência para cada código de barras. 

```sql
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
```

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


Detalhamento da consulta:
Foi selecionado os campos `Código_de_barras` da tabela `Produto`, `Descrição` da tabela `ProdutoInfo`, `Nome` do fabricante da tabela `Fabricante` e `Código_Interno` da tabela `ProdutoInfo`.
E realizado uma junção entre essas tabelas,  filtrando apenas as linhas onde a origem tem a maior "preferência" (preferência = 1). Dessa forma pode se garantir que cada código de barras aparecerá apenas uma vez no resultado com as informações da origem de maior preferência disponível. 
