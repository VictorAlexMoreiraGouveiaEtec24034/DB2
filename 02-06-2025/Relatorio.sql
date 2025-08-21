-- Relátório de gatos em produtos e quantidade de produtos no tatal
SELECT SUM(preco) as "Preço total", SUM(quantidade) as "QTD calçados total" FROM loja.estoque;

-- Gerar a quantidade gasta de calçado por marca.
SELECT marca.nome as "Fabricantes", SUM(estoque.quantidade) as "QTD de produtos por marca", SUM(estoque.preco) as "Preço Total" FROM loja.estoque
    JOIN loja.produto on estoque.id_produto=produto.id
    JOIN loja.marca on marca.id=produto.id_marca
    GROUP BY (produto.id_marca);

-- Gerar a quantidade gasta de calçado por categoria.
SELECT categoria.nome as "Categorias", SUM(estoque.quantidade) as "QTD de produtos por categoria", SUM(estoque.preco) as "Preço Total" FROM loja.estoque
    JOIN loja.produto on estoque.id_produto=produto.id
    JOIN loja.categoria on categoria.id=produto.id_categoria
    GROUP BY (produto.id_categoria);

-- Mostrar a quantidade de categoria por marca
SELECT marca.nome as "Categorias", categoria.nome FROM loja.estoque
    JOIN loja.produto on estoque.id_produto=produto.id
    JOIN loja.marca on marca.id=produto.id_marca
    JOIN loja.categoria on categoria.id=produto.id_categoria;

    -- Fazer sistema de filtragem