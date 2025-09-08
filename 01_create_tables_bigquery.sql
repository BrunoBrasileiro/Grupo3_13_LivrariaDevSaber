-- Este script cria a estrutura do schema no Google BigQuery.
-- Tabelas são criadas com `CREATE OR REPLACE TABLE` para permitir a execução repetida do script.
-- Lembre-se de substituir `seu-projeto.seu_dataset` pelo nome do seu projeto e dataset.

-- Tabela de Clientes
CREATE OR REPLACE TABLE `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Clientes` (
    ID_Cliente INT64,
    Nome_Cliente STRING,
    Email_Cliente STRING,
    Estado_Cliente STRING
);

-- Tabela de Produtos
CREATE OR REPLACE TABLE `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Produtos` (
    ID_Produto INT64,
    Nome_Produto STRING,
    Categoria_Produto STRING,
    Preco_Produto NUMERIC
);

-- Tabela de Vendas
CREATE OR REPLACE TABLE `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Vendas` (
    ID_Venda INT64,
    ID_Cliente INT64,
    ID_Produto INT64,
    Data_Venda DATE,
    Quantidade INT64
);
