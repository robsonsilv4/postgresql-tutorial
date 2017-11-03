SELECT
 column_1,
 aggregate_function (column_2)
FROM
 tbl_name
GROUP BY
 column_1
HAVING
 condition;

SELECT
 customer_id,
 SUM (amount)
FROM
 payment
GROUP BY
 customer_id;

SELECT
 customer_id,
 SUM (amount)
FROM
 payment
GROUP BY
 customer_id
HAVING
 SUM (amount) > 200;


-- A seguinte consulta retorna o número de customers por store:
SELECT
 store_id,
 COUNT (customer_id)
FROM
 customer
GROUP BY
 store_id;


-- Você pode usar a clausúla HAVING para selecionar a store que tem mais de 300 customers:
SELECT
 store_id,
 COUNT (customer_id)
FROM
 customer
GROUP BY
 store_id
HAVING
 COUNT (customer_id) > 300;
