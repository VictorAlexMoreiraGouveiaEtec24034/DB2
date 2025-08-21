-- Active: 1748880100381@@127.0.0.1@3306@loja
use loja;


SELECT * FROM categoria;
SELECT * FROM estoque;
SELECT * FROM marca;
SELECT * FROM pedido;
SELECT * FROM pedido_item;
SELECT * FROM produto;

SELECT produto.id, produto.nome, categoria.nome as "Categoria", marca.nome as "Marca", produto.descricao FROM produto
    JOIN categoria on categoria.id=produto.id_categoria
    JOIN marca on marca.id=produto.id_marca;

-- Coleta pedidos para Carlos
SELECT * FROM pedido WHERE cliente_nome LIKE "Carlos%";

SELECT pedido.id as "Pedido", pedido.cliente_nome as "Nome", pedido.data_pedido as "Data", 
    pedido_item.id_pedido as "Número pedido", estoque. pedido_item.id_estoque as "Produto",
    pedido_item.quantidade
    FROM pedido
    JOIN pedido_item on pedido.id = pedido_item.id_pedido,
    JOIN estoque on estoque.id=pedido.id
    WHERE pedido.cliente_nome LIKE "Carlos%";