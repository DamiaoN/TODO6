USE todo6vitrinevirtual;
SELECT * FROM tbprodutos;

-- Quais são os 3 produtos mais caros?
SELECT 
    tbprodutos.id_produto AS pmcaros, MAX(preco)
FROM
    tbprodutos
GROUP BY id_produto
ORDER BY preco DESC
LIMIT 3; 

-- Quantas avaliações cada cliente realizou?
SELECT 
    cpf, COUNT(id_avaliacao) AS AV
FROM
    tbavaliacao
GROUP BY cpf;

-- Qual a média das avaliações de cada produto?
SELECT 
    tbavaliacao.id_produto, AVG(nota) AS media
FROM
    tbavaliacao
GROUP BY tbavaliacao.id_produto
ORDER BY media DESC;

-- Qual a data de avaliação mais recente de cada produto?
SELECT 
    id_produto, MAX(data_avaliacao)
FROM
    tbavaliacao
GROUP BY id_produto
ORDER BY id_produto;

-- Quais as clientes cujo o nome se inicia com Joana?
SELECT 
    tbclientes.nome_cliente
FROM
    tbclientes
WHERE
    nome_cliente LIKE 'J%';

-- Qual o produto que recebeu a menor avaliação?
SELECT 
    tbavaliacao.id_produto, MIN(tbavaliacao.nota) AS nota
FROM
    tbprodutos
        INNER JOIN tbavaliacao
        ON tbprodutos.id_produto = tbavaliacao.id_produto
GROUP BY tbprodutos.id_produto
HAVING nota = (SELECT 
        MIN(tbavaliacao.nota)
    FROM
        tbavaliacao);

-- Quais são os produtos cuja a avaliação mais recente é anterior à 30 dias, liste-os como “Avaliação desatualizada”?
SELECT 
    MAX(data_avaliacao) AS Av_desatualizada, 
    tbavaliacao.id_produto
FROM
    tbavaliacao
WHERE
   data_avaliacao < NOW() - INTERVAL 30 DAY
GROUP BY tbavaliacao.id_produto;
