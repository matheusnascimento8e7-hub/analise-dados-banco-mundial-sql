/* =============================================================================
PROJETO: Análise Banco Mundial
OBJETIVO: Comparar a média de anos de estudo entre homens e mulheres nos BRICS.
CONCEITOS: UNION, Criação de colunas categóricas (Gender), Filtros (IN).
=============================================================================
*/

-- Seleção de dados masculinos (Rotulados como 'Men')
SELECT 
    myas.country, 
    myas.ref_year, 
    myas.mean_years, 
    'Men' AS gender 
FROM men_years_at_school myas 
WHERE myas.ref_year = 2000 
  AND myas.country IN ('Brazil', 'China', 'Russia', 'India', 'South Africa')

UNION -- Unificando as bases para análise comparativa

-- Seleção de dados femininos (Rotulados como 'Women')
SELECT 
    wyas.country, 
    wyas.ref_year, 
    wyas.mean_years, 
    'Women' AS gender
FROM women_years_at_school wyas 
WHERE wyas.ref_year = 2000 
  AND wyas.country IN ('Brazil', 'China', 'Russia', 'India', 'South Africa')

ORDER BY mean_years DESC;
