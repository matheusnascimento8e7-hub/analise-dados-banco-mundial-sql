/* =============================================================================
PROJETO: Análise Banco Mundial
OBJETIVO: Analisar a evolução da mortalidade infantil no Brasil a cada década.
CONCEITOS: Operador de Módulo (%), Séries Temporais, Cálculos de Indicadores.
=============================================================================
*/

SELECT 
    cm.country, 
    cm.ref_year AS "Ano", 
    -- Transformando a contagem bruta em um índice por 1000 nascimentos
    (100 * cm.tot_deaths / 1000) AS "Índice"
FROM child_mortality cm  
WHERE cm.country = 'Brazil' 
  AND cm.ref_year BETWEEN 1910 AND 2020
  -- O operador % 10 = 0 garante que selecionamos apenas anos de virada de década (1910, 1920...)
  AND cm.ref_year % 10 = 0 
ORDER BY cm.ref_year ASC;
