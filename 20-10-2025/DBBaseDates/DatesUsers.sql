USE quizetec;

-- Exibir quantidade de perguntas por categoria
CREATE VIEW Qtd_QuestoesCategoria as SELECT perguntas.categoria as "Categoria", COUNT(perguntas.categoria) as "Quantidade de questões" FROM perguntas
    GROUP BY perguntas.categoria
    ORDER BY COUNT(perguntas.categoria) DESC;

-- Cria view para quantidade de categorias jogadas
CREATE VIEW Qtd_CategoriasJogadas as SELECT perguntas.categoria AS "Categoria", COUNT(perguntas.categoria) AS "Quantidade por categoria" FROM respostas
    JOIN jogadores ON jogadores.id = respostas.jogador_id
    JOIN perguntas ON perguntas.id = respostas.pergunta_id
    GROUP BY perguntas.categoria
    ORDER BY COUNT(perguntas.categoria) DESC; -- ASC para cresente

SELECT 
    jogadores.nome AS "Nome",  
    perguntas.categoria AS "Categoria",
    COUNT(respostas.correta) AS "Qtd_respostas corretas" FROM respostas
    JOIN jogadores ON jogadores.id = respostas.jogador_id
    JOIN perguntas ON perguntas.id = respostas.pergunta_id
    GROUP BY jogadores.nome, perguntas.categoria, respostas.correta;

SELECT 
    jogadores.nome AS "Nome",  
    perguntas.categoria AS "Categoria",
    COUNT(respostas.correta) AS "Qtd_respostas corretas" FROM respostas
    JOIN jogadores ON jogadores.id = respostas.jogador_id
    JOIN perguntas ON perguntas.id = respostas.pergunta_id
    GROUP BY jogadores.nome, perguntas.categoria;
