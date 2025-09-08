# :books: Projeto Livraria DevSaber

Este é o mini-projeto do grupo **3_13** da disciplina de Engenharia de Dados.  
Nosso objetivo foi construir um **pipeline de dados no BigQuery** para organizar e analisar as vendas da livraria online *DevSaber*.

---

## :rocket: Objetivo
- Criar as tabelas no BigQuery (**Clientes**, **Produtos** e **Vendas**)  
- Inserir os dados fornecidos  
- Realizar consultas de análise (SQL)  
- Criar uma VIEW para relatórios diários  

---

## :file_folder: Estrutura do repositório
- `01_create_tables_bigquery.sql` → Script de criação das tabelas  
- `02_insert_data_bigquery.sql` → Script de inserção dos dados  
- `03_analysis_and_view_bigquery.sql` → Consultas de análise e criação da VIEW  

---

## :memo: Consultas realizadas
1. Listar clientes do estado de **SP**  
2. Mostrar produtos da categoria **Ficção Científica**  
3. Listar todas as vendas com nome do cliente, produto e data  
4. Calcular o **valor total de cada venda**  
5. Identificar o **produto mais vendido**  

---

## :busts_in_silhouette: Integrantes do grupo 3_13
- Ana Carolina Vieira  
- Andressa Da Silva  
- Bruno Brasileiro  
- Elisa Ramos Góes Santos  
- Keylla Souza De Carvalho  
- Lucia Do Bomfim Tavares  
- Nabia Von Linde De Oliveira Souza  
- Welington Júlio Dias Rodrigues  

---

## :bulb: Observações
- O projeto foi desenvolvido em **Google BigQuery**.  
- Os scripts foram organizados para permitir execução em ordem (CREATE → INSERT → ANALYSIS).  
- A VIEW criada facilita consultas futuras e garante consistência nos relatórios.  

---

## :thinking: Perguntas respondidas pelo projeto
- Quais são os clientes mais assíduos?  
- Quais gêneros literários tiveram maior destaque?  
- Qual é o desempenho das vendas por estado (ex.: SP, RJ)?  
- Qual foi o produto mais vendido?  
- Qual o valor total das vendas em determinado período?  

---

## :hammer_and_wrench: Boas práticas aplicadas
- Separação de clientes, produtos e vendas em tabelas próprias para evitar redundância.  
- Uso de **chaves (IDs)** para permitir integrações entre tabelas.  
- Criação de **VIEWs** para facilitar consultas futuras sem reescrever SQL.  
- Organização dos scripts em ordem de execução: `CREATE → INSERT → ANALYSIS`.  
