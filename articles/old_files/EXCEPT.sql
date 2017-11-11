-- O operador EXCEPT retorna as linhas distintas da primeira consulta (esquerda) que não está
-- na saída da segunda consulta (direita). O seguinte exemplo ilustra a sintaxe do operador EXCEPT:

SELECT column_list
FROM A
WHERE condition_a
EXCEPT
SELECT column_list
FROM B
WHERE condition_b;

-- Para combinar as consultas usando o operador EXCEPT, você tem que seguir as seguintes regras:
-- *O número de colunas e sua ordem devem ser as mesmas nas duas consultas.
-- *O tipo de dado das respectivas colunas devem ser compatíveis

-- Exemplos
SELECT
 film_id,
 title
FROM
 film
ORDER BY
 title;

SELECT
 DISTINCT inventory.film_id,
 title
FROM
 inventory
INNER JOIN film ON film.film_id = inventory.film_id
ORDER BY title;

-- Para pegar os filmes que não estão em inventory
SELECT
 film_id,
 title
FROM
 film
EXCEPT
 SELECT
 DISTINCT inventory.film_id,
 title
 FROM
 inventory
 INNER JOIN film ON film.film_id = inventory.film_id
ORDER BY title;

-- Neste tutorial, nós mostramos como usar o operador EXCEPT do PostgreSQL para combinar duas consultas
-- e obeter as linhas da primeira consulta que não aparecem na saída da segunda consulta.