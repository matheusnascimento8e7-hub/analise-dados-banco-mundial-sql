/* =============================================================================
PROJETO: Análise Banco Mundial
OBJETIVO: Identificar o país da África com o maior PIB per capita em 2019.
CONCEITOS: Subqueries escalares, Joins, Filtros de agregados.
=============================================================================
*/

SELECT 
    c.country, 
    c.four_regions, 
    gp.gdp_pc 
FROM country c 
JOIN gdp_pc gp ON c.country = gp.country 
WHERE c.four_regions = 'africa'
  AND gp.ref_year = 2019
  AND gp.gdp_pc = (
      -- Subquery para encontrar o valor máximo dinamicamente
      SELECT MAX(gp2.gdp_pc) 
      FROM gdp_pc gp2 
      JOIN country c2 ON gp2.country = c2.country 
      WHERE gp2.ref_year = 2019
        AND c2.four_regions = 'africa'
  );
