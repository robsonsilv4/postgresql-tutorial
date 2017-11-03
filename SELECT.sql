Sumário: Neste tutorial, você irá aprender como usar o statement básico
do PostgreSQL SELECT para consultar dados de uma tabela.

Uma das tarefas mais comuns, quando você trabalha com PostgreSQL, é consultar
dados de uma tabela usando o operador SELECT. O operador SELECT é um dos
operadores mais complexos no PostgreSQL.


- Selecionar linhas distintas usando o operador DISTINCT.
- Filtrar linhas usando a clausula WHERE.
- Ordenar linhas usando a clausula ORDER BY.
- Selecionar várias linhas baseado em vários operadores como BETWEEN, IN e LIKE.


Sintaxe do comando SELECT do PostgreSQL

SELECT
 column_1,
 column_2,
 ...
FROM
 table_name;


 - Primeiro, você especifica a coluna da tabela de onde você quer consultar o dado
 na clausula SELECT. Se voê ...
 No caso de você querer consultar dados de todas as colunas, você pode usar um asterísco(*)

SELECT
 *
FROM
 customer;


Não é uma boa prática usar o asterísco(*) no comando SELECT. Imagine
que você tem uma tabela grande com muitas colunas, o comando SELECT com um
asterísco (*), vai retonar todos os dados da coluna inteira

SELECT
 first_name,
 last_name,
 email
FROM
 customer;
