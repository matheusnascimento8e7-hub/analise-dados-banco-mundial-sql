/* =============================================================================
PROJETO: Análise Banco Mundial
OBJETIVO: Verificar a integridade dos dados entre as tabelas de Fertilidade
          e Mortalidade Infantil.
CONCEITOS: Operadores de Conjunto (EXCEPT), Ordenação.
=============================================================================
*/

-- Identificando países que possuem dados de fertilidade, mas não de mortalidade
SELECT 
    f.country  
FROM fertility f  
EXCEPT 
SELECT 
    country 
FROM child_mortality  
ORDER BY country;

-- Identificando países presentes na tabela de mortalidade, mas ausentes na de fertilidade
SELECT 
    cm.country 
FROM child_mortality cm 
EXCEPT 
SELECT 
    f.country 
FROM fertility f 
ORDER BY country;
