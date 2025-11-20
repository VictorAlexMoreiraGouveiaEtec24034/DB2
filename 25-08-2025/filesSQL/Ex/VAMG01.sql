USE loja;

DELIMITER $$
CREATE PROCEDURE estoque()
BEGIN
    SELECT produto.nome, estoque.tamanho,
    estoque.cor, estoque.preco, estoque.quantidade
    FROM produto 
    JOIN estoque ON produto.id = estoque.id_produto
    ORDER BY produto.nome;

END $$
DELIMITER;
CALL estoque;

-- Criar um SP para LISTAR os dados dos produtos em estoque
-- com quantidade menor ou igual a que o usuario informar

DELIMITER $$
CREATE PROCEDURE produtoPotQTD(IN qtde int)
BEGIN
    SELECT produto.nome as "Produto", estoque.tamanho as "Tamanho",
    estoque.cor as "Cor", estoque.preco as "Preço", estoque.quantidade as "QTD"
    FROM produto 
    JOIN estoque ON produto.id = estoque.id_produto
    WHERE estoque.quantidade <=  qtde
    ORDER BY produto.nome;

END $$

CALL produtoPotQTD(10)

-- Criar um SP para mostrar o nome e a descrição dos produtos
-- da marca informada como parâmetro pelo usuário
DELIMITER $$
CREATE PROCEDURE produtoPotQTD(IN qtde int)
BEGIN
    SELECT produto.nome as "Produto", estoque.tamanho as "Tamanho",
    estoque.cor as "Cor", estoque.preco as "Preço", estoque.quantidade as "QTD"
    FROM produto 
    JOIN estoque ON produto.id = estoque.id_produto
    WHERE  <=  qtde
    ORDER BY produto.nome;

END $$