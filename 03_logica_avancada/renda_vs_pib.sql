/* =============================================================================
PROJETO: Análise Banco Mundial
OBJETIVO: Comparar a Renda Média Diária com o PIB Per Capita por país em 2019.
CONCEITOS: Joins, Agregação de Médias, Arredondamento e Ordenação de Negócio.
=============================================================================
*/

SELECT 
    ai.country AS "País", 
    ROUND(AVG(ai.mean_usd), 2) AS "Renda Média Diária", 
    ROUND(AVG(gp.gdp_pc), 2) AS "PIB Per Capita Médio"
FROM avg_income ai 
JOIN gdp_pc gp ON ai.country = gp.country 
    AND ai.ref_year = gp.ref_year 
WHERE ai.ref_year = 2019
GROUP BY ai.country 
ORDER BY "PIB Per Capita Médio" DESC;
