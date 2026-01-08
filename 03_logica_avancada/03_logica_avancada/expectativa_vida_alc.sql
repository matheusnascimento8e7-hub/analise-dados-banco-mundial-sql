/* =============================================================================
PROJETO: Análise Banco Mundial
OBJETIVO: Identificar a menor expectativa de vida na América Latina e Caribe,
          comparando os anos de 1990 e 2010.
CONCEITOS: Subqueries, UNION, NULLIF (tratamento de dados) e LIMIT.
=============================================================================
*/

-- Análise para o ano de 1990
SELECT 
    le.ref_year AS "Ano",
    ROUND(MIN(NULLIF(le.tot_years, 0)), 0) AS "Expectativa Mínima",
    (SELECT c2.country 
     FROM country c2 
     LEFT JOIN life_expectancy le2 ON c2.country = le2.country 
     WHERE le2.ref_year = 1990
       AND c2.wb_regions = 'Latin America & Caribbean' 
     ORDER BY le2.tot_years ASC 
     LIMIT 1) AS "País com menor índice"
FROM life_expectancy le 
LEFT JOIN country c ON le.country = c.country 
WHERE le.ref_year = 1990
  AND c.wb_regions = 'Latin America & Caribbean'

UNION 

-- Análise para o ano de 2010
SELECT 
    le.ref_year AS "Ano",
    ROUND(MIN(NULLIF(le.tot_years, 0)), 0) AS "Expectativa Mínima",
    (SELECT c2.country 
     FROM country c2 
     LEFT JOIN life_expectancy le2 ON c2.country = le2.country 
     WHERE le2.ref_year = 2010
       AND c2.wb_regions = 'Latin America & Caribbean' 
     ORDER BY le2.tot_years ASC 
     LIMIT 1) AS "País com menor índice"
FROM life_expectancy le 
LEFT JOIN country c ON le.country = c.country 
WHERE le.ref_year = 2010
  AND c.wb_regions = 'Latin America & Caribbean';
