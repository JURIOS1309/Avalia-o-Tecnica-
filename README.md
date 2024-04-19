# Questão 1

## Casos (ID) de Teste = 1

### Pré-condições
Verificar se é possível cadastrar um novo planeta.

### Passos
1- Acesse a tela de ""Cadastro de Planeta"" na aplicação. 

2- Preencher todos os campos obrigatórios:  Nome> Clima> Terreno. 

3- Clique no botão ""Cadastrar"".

### Resultado Esperado 
1- O planeta deve ser cadastrado com sucesso. 

2- As informações fornecidas devem ser armazenados corretamente na base de dados. 

### Execução 
Aprovado ( )/ 
Reprovado ( )/
Reteste Aprovado ( )/
Reteste Reprovado ( )/

## Casos (ID) de Teste = 2
Cadastrar um novo Planeta sem preencher todos os campos da tela. 

### Pré-condições
Verificar se é possível cadastrar um novo planeta, sem preencher todos os dados solicitados na tela. 

### Passos
1- Acesse a tela de ""Cadastro de Planeta"" na aplicação. 

2- Preencher somente os campos:  Nome> Clima. 

3- Clique no botão ""Cadastrar"". 


### Resultado Esperado
1- O planeta não deveá ser cadastrado. 

2- Deverá ser exibido uma mensagem na tela de ""Falta dados no campo obrigatório: Terreno"". 


### Execução 
Aprovado ( )/ 
Reprovado ( )/
Reteste Aprovado ( )/
Reteste Reprovado ( )/

## Casos (ID) de Teste = 3
Cancelar a inserção de um Cadastro de Planeta. 

### Pré-condições
Verificar se é possível cancelar as informações de um cadastro de planeta. 

### Passos
1- Acesse a tela de ""Cadastro de Planeta"" na aplicação. 

2- Preencher todos os campos obrigatórios:  Nome> Clima> Terreno. 

3- Clique no botão ""Cancelar"". 

### Resultado Esperado 
1- As informações pré preenchidas na tela de Cadastro deverá ser removida/excluída com sucesso. 

### Execução 
Aprovado ( )/ 
Reprovado ( )/
Reteste Aprovado ( )/
Reteste Reprovado ( )/

### Casos (ID) de Teste = 4
Limpar Filtro de Busca

### Pré-condições
Verificar se é possível "Limpar" o filtro de busca na tela "Planetas Cadastrados"

### Passos
1- Acesse a tela ""Planetas Cadastrados"". 

2- Preencha o campo de ""Busca"" com alguma das opções entre os campos ""ID ou Nome"".

3- Clique no botão ""Limpar"". 

### Resultado Esperado 
O campo de busca deve ser limpo e a lista de planetas deve ser exibida sem filtros cadastrados. 

### Execução 
Aprovado ( )/ 
Reprovado ( )/
Reteste Aprovado ( )/
Reteste Reprovado ( )/

## Casos (ID) de Teste = 5 
Consulta de Planetas Cadastrados por "ID"

### Pré-condições
Verificar se é possível "Consultar" por "ID" os planetas cadastrados na aplicação de acordo com os Filmes. 

### Passos
1- Acesse a Tela ""Planetas Cadastrados"". 

2- Preencha o campo de ""Busca"" com a informação por ""ID"". 

3- Clique no botão ""Consultar""

### Resultado Esperado 
1- A lista de planetas cadastrados deve ser exibida corretamente com as informações preenchidas nos campos como ""ID"",""Nome"", ""Clima"", ""Terreno"" e Filmes.

2- Os filtros de busca devem funcionar conforme esperado. 

### Execução 
Aprovado ( )/
Reprovado ( )/
Reteste Aprovado ( )/
Reteste Reprovado ( )/

## Casos (ID) de Teste = 6 
Consulta de Planetas Cadastrados por "Nome"

### Pré-condições
Verificar se é possível "Consultar" por "Nome" os planetas cadastrados na aplicação de acordo com os Filmes. 

### Passos
1- Acesse a Tela ""Planetas Cadastrados"". 

2- Preencha o campo de ""Busca"" com a informação por ""Nome"". 

3- Clique no botão ""Consultar""

### Resultado Esperado 
1- A lista de planetas cadastrados deve ser exibida corretamente com as informações preenchidas nos campos como ""ID"",""Nome"", ""Clima"", ""Terreno"" e Filmes.

2- Os filtros de busca devem funcionar conforme esperado. 

### Execução 
Aprovado ( )/ 
Reprovado ( )/
Reteste Aprovado ( )/
Reteste Reprovado ( )/

## Casos (ID) de Teste = 7
Contagem de Filmes Star Wars por Planeta.

### Pré-condições
Verificar se a "Consulta" conta corretamente os filmes Star Wars em que cada planeta está presente.

### Passos
1- Acesse a Tela ""Planetas Cadastrados"". 

2- Preencha o campo de ""Busca"" com a informação por ""Nome"". 

3- Verifique a contagem de filmes Star Wars atribuídos a esse planeta. 

### Resultado Esperado 
A contagem de filmes Star Wars associados ao planeta deve ser precisa e corresponder ao esperado com base nos dados cadastrados. 

### Execução 
Aprovado ( )/ 
Reprovado ( )/
Reteste Aprovado ( )/
Reteste Reprovado ( )/

## Casos (ID) de Teste = 8
Remover linha da tabela de Planetas Cadastrados por "Nome".

### Pré-condições
Verificar se é possível "Remover" a linha apresentada na Consulta da tela "Planetas Cadastrados".

### Passos
1- Acesse a Tela ""Planetas Cadastrados"". 

2- Preencha o campo de ""Busca"" com a informação por ""Nome"". 

3- Clique no ""X Remover""da 1º linha da lista exibida na busca. 

### Resultado Esperado 
1- A lista de planetas cadastrados deve ser exibida corretamente. 

2- A 1º linha não deverá ser mais exibida na tela de Consulta. 

### Execução 
Aprovado ( )/ 
Reprovado ( )/
Reteste Aprovado ( )/
Reteste Reprovado ( )/

# Questão 2.
##Tema: Banco de dados SQL. 

### RESPOSTA A

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

### RESPOSTA B

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


### RESPOSTA C

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


### RESPOSTA D

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

Detalhamento da consulta:
Foi selecionado os campos `Código_de_barras` da tabela `Produto`, `Descrição` da tabela `ProdutoInfo`, `Nome` do fabricante da tabela `Fabricante` e `Código_Interno` da tabela `ProdutoInfo`.
E realizado uma junção entre essas tabelas,  filtrando apenas as linhas onde a origem tem a maior "preferência" (preferência = 1). Dessa forma pode se garantir que cada código de barras aparecerá apenas uma vez no resultado com as informações da origem de maior preferência disponível. 
