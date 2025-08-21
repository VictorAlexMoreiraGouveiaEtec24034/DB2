-- Selecionar um banco de dados
use banco;

-- Selecionar uma tabela do banco de dados
select * from categorias;

select * from clientes;
 
select * from locais;

select * from lojas;

select * from pedidos;

select * from produtos;

-- selecionar colunas expecificas da tabela
select 
	ID_Cliente,
    Nome,
    Sobrenome,
    Sexo,
    Email,
    telefone 
    from clientes;

-- Adicionar um apelido para as colunas

select 
	ID_Cliente as 'ID Clientes',
	Nome as 'Nome do Cliente',
    Data_nascimento as 'data de nascimento',
    Email as 'E-mail'
    from clientes;
    
-- selecionar só as top primeiras tabelas
select * from produtos limit 5;

-- selecionar todas as linhas da tabelas produtos e ordena na ordem decresente
select * from produtos order by Preco_Unit asc;
-- ordem cresente
select * from produtos order by Preco_Unit desc; 

