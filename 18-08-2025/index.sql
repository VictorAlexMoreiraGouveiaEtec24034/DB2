CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,     
    nome VARCHAR(100) NOT NULL,     
    email VARCHAR(100) UNIQUE,     
    telefone VARCHAR(20)
);

INSERT INTO cliente (nome, email, telefone) VALUES ('Carlos Silva', 'carlos.silva@email.com', '(11) 98765-4321'), ('Ana Pereira', 'ana.pereira@email.com', '(11) 99876-5432'), ('Beatriz Costa', 'beatriz.costa@email.com', '(11) 97654-3210'), ('João Mendes', 'joao.mendes@email.com', '(11) 96543-2109'), ('Fernanda Lima', 'fernanda.lima@email.com', '(11) 95432-1098'), ('Lucas Martins', 'lucas.martins@email.com', '(11) 94321-0987'), ('Juliana Almeida', 'juliana.almeida@email.com', '(11) 93210-9876'), 
('Ricardo Souza', 'ricardo.souza@email.com', '(11) 92109-8765'), ('Daniela Rocha', 'daniela.rocha@email.com', '(11) 91098-7654'), ('Mariana Santos', 'mariana.santos@email.com', '(11) 90987-6543');

-- Adicionar a nova coluna para a chave estrangeira 
ALTER TABLE pedido ADD COLUMN id_cliente INT;  

-- Atualizar os pedidos existentes com base no nome do cliente 
UPDATE pedido JOIN cliente ON pedido.cliente_nome = cliente.nome SET pedido.id_cliente = cliente.id;

  -- Adicionar a restrição de chave estrangeira 
  ALTER TABLE pedido ADD FOREIGN KEY (id_cliente) REFERENCES cliente(id);  
  
  -- Remover a coluna antiga 
  ALTER TABLE pedido DROP COLUMN cliente_nome;  
  
  -- Ajustar a coluna para não permitir valores nulos se necessário 
  
  ALTER TABLE pedido MODIFY COLUMN id_cliente INT NOT NULL;