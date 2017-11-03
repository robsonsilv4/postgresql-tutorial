SELECT
 column_list
FROM
 A
INTERSECT
SELECT
 column_list
FROM
 B;

-- Para usar o operador INTERSECT, as colunas que aparecem no statments
-- devem seguir as seguintes regras a seguir:
-- 1. O número de colunas e a ordem na claúsula select devem ser do
-- mesmo tipo