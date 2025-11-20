use loja;

DELIMITER $$
CREATE PROCEDURE estoque()
BEGIN
	SELECT produto.nome, estoque.tamanho,
    estoque.cor, estoque.preco, estoque.quantidade
    FROM produto JOIN estoque
    ON produto.id = estoque.id_produto
	ORDER BY produto.nome;
END $$
DELIMITER ;


call estoque;

-- CRIAR UM SP PARA LISTAR OS DADOS DOS PRODUTOS EM ESTOQUE
-- COM QUANTIDADE MENOR OU IGUAL A QUE O USUÁRIO INFORMAR.

DELIMITER $$
CREATE PROCEDURE produtoPorQuantidade(IN qtde int)
BEGIN
	SELECT produto.nome as produto, estoque.tamanho,
    estoque.cor, estoque.preco, estoque.quantidade
    FROM produto JOIN estoque
    ON produto.id = estoque.id_produto
	WHERE estoque.quantidade <= qtde
    ORDER BY produto.nome;
END $$
DELIMITER ;
call produtoPorQuantidade(6);

-- CRIAR UM SP para mostrar o nome e a descrição dos produtos
-- da marca informada como parâmetro pelo usuário. 
