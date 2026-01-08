/* =============================================================================
PROJETO: Análise Banco Mundial
PERGUNTA: Quais países da ALC em 2000 tiveram um gap educacional feminino superior ao do Brasil?
HABILIDADE: Uso de EXISTS para lógica de comparação correlacionada.
=============================================================================
*/

SELECT 
    (wyas.mean_years - myas.mean_years) AS "diff", 
    c.country 
FROM men_years_at_school myas 
JOIN women_years_at_school wyas ON myas.country = wyas.country 
    AND myas.ref_year = wyas.ref_year 
JOIN country c ON myas.country = c.country 
WHERE myas.ref_year = 2000 
  AND c.wb_regions = 'Latin America & Caribbean'
  AND EXISTS (
      -- Subquery que busca o benchmark do Brasil para comparação dinâmica
      SELECT 1
      FROM men_years_at_school myas_br 
      JOIN women_years_at_school wyas_br ON myas_br.country = wyas_br.country 
          AND myas_br.ref_year = wyas_br.ref_year 
      WHERE myas_br.ref_year = 2000 
        AND wyas_br.country = 'Brazil' 
        AND (wyas.mean_years - myas.mean_years) > (wyas_br.mean_years - myas_br.mean_years)
  );
