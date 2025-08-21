-- A) Inserir um novo produto
-- associar a novo produto no estoque:
-- necessario atualizar a tabela categorias com o tipo 'Sapatênis'

insert into loja.categoria (nome) VALUE ("Sapatênis");

insert into loja.produto (nome, id_categoria, id_marca, descricao) VALUES 
    ("Sapatênis Casual Puma", 5, 3, "Sapatênis Casual Puma");

-- Atividade A +B
insert into loja.estoque(id_produto, tamanho, cor, preco, quantidade) VALUES 
    (11, 40, "Cinza", 219.9, 6);

insert into loja.estoque(id_produto, tamanho, cor, preco, quantidade) VALUES 
    (11, 41, "Preto", 219.9, 4);