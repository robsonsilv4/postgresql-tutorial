SELECT
 AVG (rental_rate)
FROM
 film;

SELECT
  film_id,
  title,
  rental_rate
FROM
 film
WHERE
 rental_rate > 2.98;

-- Para contruir uma sub consulta, nós colocamos a segunda consulta entre parentêses e a usamos na clausúla WHERE como
-- uma expressão:

SELECT
 film_id,
 title,
 rental_rate
FROM
 film
WHERE
 rental_rate > (
 SELECT
 AVG (rental_rate)
 FROM
 film
 );

-- A consulta dentro dos parentêses é chamada de sub consulta ou consulta interna. A consulta que contém
-- a sub consulta é conhecida como consulta externa.

-- PostgreSQL executa a consulta que contém a sub consulta na seguinte sequência:
-- *Priemiro, executa a sub consulta.
-- *Segundo, pega o resultado e passa ele para a consulta externa.
-- *Terceiro, executa a consulta externa.

SELECT
 inventory.film_id
FROM
 rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE
 return_date BETWEEN '2005-05-29'
AND '2005-05-30';

SELECT
 film_id,
 title
FROM
 film
WHERE
 film_id IN (
 SELECT
 inventory.film_id
 FROM
 rental
 INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
 WHERE
 return_date BETWEEN '2005-05-29'
 AND '2005-05-30'
 );

EXISTS subquery;

-- Uma sub consulta pode ser uma entrada para o operador EXISTS. Se uma subconsulta retornar qualquer linha, o operador
-- EXISTS retorna verdadeiro. Se a sub consulta retornar nenhuma linha, o resultado do operador EXISTS é falso.

-- O operador EXISTS só se preocupa com o número de linhas retornadas na sub consulta, não o
-- conteúdo das linhas, a convenção comum de código do operador EXISTS é a seguinte:

EXISTS (SELECT 1 FROM tbl WHERE condition);

SELECT
 first_name,
 last_name
FROM
 customer
WHERE
 EXISTS (
 SELECT
 1
 FROM
 payment
 WHERE
 payment.customer_id = customer.customer_id
 );
