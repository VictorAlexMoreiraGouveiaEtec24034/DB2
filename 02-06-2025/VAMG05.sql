-- Atividade 5-A

SELECT SUM(quantidade) as "QTD Total de calçados"  FROM loja.estoque;

-- Atividade 5-B
SELECT produto.nome, SUM(estoque.quantidade) as "QTD Total calçados" from loja.estoque
    JOIN loja.produto on produto.id=estoque.id_produto
    GROUP BY produto.id;

-- Atividade 5-C 
SELECT produto.nome, SUM(estoque.preco) as "valor_tatal" from loja.estoque
    JOIN loja.produto on produto.id=estoque.id_produto
    GROUP BY produto.id;

-- Atividade 5-D
SELECT produto.nome, AVG(estoque.preco) as "Média de preço" from loja.estoque
    JOIN loja.produto on produto.id=estoque.id_produto
    GROUP BY produto.id;
