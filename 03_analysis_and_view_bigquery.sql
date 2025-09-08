-- Consultas de análise

-- P1: Clientes do estado de SP
SELECT Nome_Cliente
FROM `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Clientes`
WHERE Estado_Cliente = 'SP';

-- P2: Produtos da categoria 'Ficção Científica'
SELECT Nome_Produto
FROM `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Produtos`
WHERE Categoria_Produto = 'Ficção Científica';

-- P3: Listar vendas com nome do cliente, produto e data
SELECT
    C.Nome_Cliente,
    P.Nome_Produto,
    V.Data_Venda
FROM `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Vendas` V
JOIN `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Clientes` C ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Produtos` P ON V.ID_Produto = P.ID_Produto
ORDER BY V.Data_Venda;

-- P4: Valor total de cada venda
SELECT
    V.ID_Venda,
    (V.Quantidade * P.Preco_Produto) AS Valor_Total
FROM `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Vendas` V
JOIN `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Produtos` P ON V.ID_Produto = P.ID_Produto;

-- P5: Produto mais vendido
SELECT
    P.Nome_Produto,
    SUM(V.Quantidade) AS Total_Quantidade_Vendida
FROM `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Vendas` V
JOIN `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Produtos` P ON V.ID_Produto = P.ID_Produto
GROUP BY P.Nome_Produto
ORDER BY Total_Quantidade_Vendida DESC
LIMIT 1;

-- Criar VIEW
CREATE OR REPLACE VIEW `t1engenhariadados.Grupo3_13_LivrariaDevSaber.v_relatorio_vendas_detalhado` AS
SELECT
    V.ID_Venda,
    V.Data_Venda,
    C.Nome_Cliente,
    C.Estado_Cliente,
    P.Nome_Produto,
    P.Categoria_Produto,
    V.Quantidade,
    P.Preco_Produto,
    (V.Quantidade * P.Preco_Produto) AS Valor_Total
FROM `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Vendas` V
JOIN `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Clientes` C ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.Grupo3_13_LivrariaDevSaber.Produtos` P ON V.ID_Produto = P.ID_Produto;
