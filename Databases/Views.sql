USE loja;

-- Exercicio 1
CREATE VIEW vw_produtos_completo as 
    SELECT produto.id as "ID Produto", produto.nome as "Nome Produto", categoria.nome as "Categoria", marca.nome as "Marca" FROM produto
    JOIN categoria on categoria.id=produto.id_categoria
    JOIN marca on marca.id=produto.id_marca;

-- Execicio 2
CREATE VIEW vw_estoque_baixo as 
    SELECT produto.nome as "Nome Produto", estoque.tamanho as "Tamanho", estoque.cor as "Cor", estoque.quantidade as "Quantidade" FROM estoque
    JOIN produto on produto.id = estoque.id_produto
    WHERE estoque.quantidade<= 5;

-- Execicio 3
CREATE VIEW vw_vendas_por_cliente as
    SELECT cliente.nome as "Nome cliente", COUNT(pedido.id_cliente) as "Total pedidos" FROM pedido
    JOIN cliente on cliente.id=pedido.id_cliente
    GROUP BY pedido.id_cliente;

-- Execicio 4
CREATE VIEW vw_detalhes_pedido as SELECT 
    id_pedido, 
    pedido.data_pedido as "Data Pedido",
    cliente.nome as "Nome cliente",
    produto.nome as "Nome Produto",
    estoque.tamanho as "Tamanho",
    estoque.cor as "Cor",
    -- Quantidade de itens
    pedido_item.quantidade,
    estoque.preco "Preço"
    FROM pedido_item
    JOIN pedido on pedido.id=pedido_item.id_pedido
    JOIN cliente on cliente.id=pedido.id_cliente
    -- Nome do produto
    JOIN estoque on estoque.id=pedido_item.id_estoque
    JOIN produto on produto.id=estoque.id_produto;

-- Execicio 5
CREATE VIEW vw_faturamento_por_categoria as 
    SELECT categoria.nome as "Categoria", SUM(preco_unitario) as "Total de vendas" 
    FROM pedido_item
    JOIN estoque on estoque.id=pedido_item.id_estoque
    JOIN produto on produto.id=estoque.id_produto
    JOIN categoria on categoria.id=produto.id_categoria
    GROUP BY categoria.nome;

-- Execicio 6
CREATE VIEW vw_vendas_recents_cliente_carlos as 
    SELECT pedido_item.id_pedido as "ID Pedido", 
    pedido.data_pedido as "Datas dos pedidos",
    pedido.valor_total as "Valor total",
    produto.nome as "Nome produtos"
    FROM pedido_item
    JOIN pedido ON pedido.id=pedido_item.id_pedido
    JOIN estoque ON estoque.id=pedido_item.id_estoque
    JOIN produto ON produto.id=estoque.id_produto
    WHERE pedido.id_cliente=1;

-- Execicio 7
CREATE VIEW vw_produtos_disponiveis AS
    SELECT produto.nome, estoque.tamanho, estoque.cor, estoque.quantidade 
    FROM estoque
    JOIN produto ON produto.id=estoque.id_produto
    WHERE estoque.quantidade>0;