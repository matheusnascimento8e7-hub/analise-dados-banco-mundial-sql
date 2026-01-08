/* =============================================================================
PROJETO: Análise Banco Mundial
OBJETIVO: Identificar países africanos onde as mulheres possuem vantagem 
          escolar > 1 ano sobre os homens (Década de 2000).
HABILIDADE: INNER JOIN múltiplo, Filtros de intervalo e Lógica aritmética.
=============================================================================
*/

SELECT DISTINCT  
    c.country 
FROM country c 
INNER JOIN men_years_at_school myas 
    ON c.country = myas.country 
INNER JOIN women_years_at_school wyas 
    ON c.country = wyas.country 
    AND wyas.ref_year = myas.ref_year 
WHERE c.four_regions = 'africa' 
  AND myas.ref_year BETWEEN 2001 AND 2010
  AND (wyas.mean_years - myas.mean_years) > 1;
