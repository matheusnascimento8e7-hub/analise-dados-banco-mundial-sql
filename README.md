# 📊 Projeto: Inteligência de Dados Socioeconômicos (SQL)

## 📌 Sobre o Projeto
Este repositório reúne uma série de análises exploratórias utilizando dados reais do **Banco Mundial**. O objetivo é demonstrar proficiência técnica em **SQL** para extrair insights sobre desenvolvimento global, saúde e educação.

## 🛠️ Tecnologias e Ferramentas
- **Linguagem:** SQL (PostgreSQL/SQLite)
- **Ferramenta de Gestão:** DBeaver
- **Fonte de Dados:** World Bank Data

## 📈 Estrutura das Análises
O projeto está organizado para refletir o fluxo real de um Analista de Dados:
1. **Auditoria e Integridade:** Verificação de consistência entre bases.
2. **Análise de Indicadores Sociais:** Cruzamento de escolaridade e expectativa de vida.
3. **Lógica Avançada:** Uso de Subqueries e Operadores de Existência para benchmarks regionais.

## 🗂️ Estrutura do Repositório

### 📁 01. Auditoria e Integridade
- **Scripts:** Validação de consistência entre bases de fertilidade e mortalidade.
- **Técnicas:** `EXCEPT`, `ORDER BY`.

### 📁 02. Análise de Indicadores Sociais
- **Scripts:** Comparativo de escolaridade nos BRICS (Gênero).
- **Técnicas:** `UNION`, `IN`, Colunas Categóricas.

### 📁 03. Lógica Avançada e Business Intelligence
- **Maior PIB África:** Identificação de outliers regionais usando `Subqueries`.
- **Expectativa de Vida:** Comparativo histórico (1990-2010) com `NULLIF` e `LIMIT`.
- **Mortalidade Brasil:** Análise de tendência decenal usando operador de módulo `%`.
- **Renda vs PIB:** Correlação de indicadores econômicos e produtividade.
