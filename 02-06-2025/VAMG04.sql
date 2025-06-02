-- Atividade 4-A e B

SELECT * FROM loja.produto;
SELECT * FROM loja.estoque;
SELECT * FROM loja.categoria;
SELECT * FROM loja.marca;

SELECT produto.nome as "Nome produto", categoria.nome as "Categoria", marca.nome "Marca", estoque.tamanho as "Tamanho", estoque.cor as "Cor", estoque.preco as "Preço (R$)", estoque.quantidade as "Quantidade" FROM loja.produto
    JOIN loja.categoria on produto.id_categoria=categoria.id
    JOIN loja.marca on produto.id_marca=marca.id
    JOIN loja.estoque on produto.id=estoque.id_produto;