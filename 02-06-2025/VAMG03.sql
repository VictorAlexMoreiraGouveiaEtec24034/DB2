-- A) Listar produtos cadastrados com cada preço
SELECT * FROM loja.produto;
SELECT * FROM loja.estoque;

SELECT produto.nome as "Nome produto", estoque.preco as "Preço" from loja.estoque
    JOIN loja.produto on produto.id=estoque.id_produto;

-- B) Listar os nomes e quantidade de todas as variações em estoque
SELECT estoque.id, produto.nome, estoque.tamanho, loja.estoque.cor, loja.estoque.preco, loja.estoque.quantidade FROM loja.estoque
    JOIN loja.produto ON estoque.id_produto=produto.id
    ORDER BY id_produto;

-- C) Listar os produtos com estoque menor que 10 pares
select estoque.id, produto.nome as "Nome produto", estoque.quantidade, estoque.preco as "Preço", estoque.quantidade FROM loja.estoque
    JOIN loja.produto on estoque.id_produto=produto.id
    WHERE quantidade>10;