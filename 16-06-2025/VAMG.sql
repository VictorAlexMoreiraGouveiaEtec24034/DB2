-- Atividade 1
CREATE SCHEMA CineMarvelDC;
USE CineMarvelDC;

-- Atividade 2
CREATE TABLE vilao (
    idVilao INT PRIMARY KEY,
    nome VARCHAR(100),
    codinome VARCHAR(100),
    origem VARCHAR(50)
);

-- Conteúdo complementar
CREATE TABLE heroi (
    idHeroi INT PRIMARY KEY,
    nome VARCHAR(100),
    codinome VARCHAR(100),
    origem VARCHAR(50)
);

INSERT INTO heroi (idHeroi, nome, codinome, origem) VALUES
(1, 'Bruce Wayne', 'Batman', 'DC'),
(2, 'Clark Kent', 'Superman', 'DC'),
(3, 'Diana Prince', 'Mulher-Maravilha', 'DC'),
(4, 'Barry Allen', 'Flash', 'DC'),
(5, 'Hal Jordan', 'Lanterna Verde', 'DC'),
(6, 'Peter Parker', 'Homem-Aranha', 'Marvel'),
(7, 'Tony Stark', 'Homem de Ferro', 'Marvel'),
(8, 'Steve Rogers', 'Capitão América', 'Marvel'),
(9, 'Natasha Romanoff', 'Viúva Negra', 'Marvel'),
(10, 'Bruce Banner', 'Hulk', 'Marvel');

INSERT INTO vilao (idVilao, nome, codinome, origem, nivel_periculosidade) VALUES
(2, 'Oswald Cobblepot', 'Pinguim', 'DC', 5),
(3, 'Edward Nygma', 'Charada', 'DC', 8),
(4, 'Pamela Isley', 'Hera Venenosa', 'DC', 4),
(5, 'Slade Wilson', 'Exterminador', 'DC', 9),
(6, 'Norman Osborn', 'Duende Verde', 'Marvel', 6),
(7, 'Wilson Fisk', 'Rei do Crime', 'Marvel', 8),
(8, 'Victor Von Doom', 'Doutor Destino', 'Marvel', 10),
(9, 'Erik Lehnsher', 'Magneto', 'Marvel', 10),
(10, 'Thanos', 'Thanos', 'Marvel', 10);

-- Atividade 3
ALTER TABLE vilao ADD COLUMN nivel_periculosidade INT;

-- Atividade 4
CREATE TABLE confronto(
    idConfronto INT PRIMARY KEY,
    idHeroi INT,
    idVilao INT,
    local VARCHAR(100),
    resultado INT,
    FOREIGN KEY (idHeroi) REFERENCES heroi(idHeroi),
    FOREIGN KEY (idVilao) REFERENCES vilao(idVilao)
);

INSERT INTO confronto (idConfronto, idHeroi, idVilao, local, resultado) VALUES (1, 8, 1, 'Nova York', 8);


-- Atividade 5
INSERT INTO vilao(idVilao, nome, codinome, origem, nivel_periculosidade) VALUES (1, "Arthur Fleck", "Coringa", "DC", 10);

-- CONSULTAS

-- Atividade 6
SELECT * FROM vilao WHERE nivel_periculosidade>7;

-- Atividade 7 (Não consegui)
SELECT * FROM heroi;

-- Atividade 8
SELECT * FROM confronto ORDER BY local DESC;

-- Atividade 9
SELECT vilao.codinome AS "Vilões", heroi.codinome AS "Herois", confronto.resultado as "Vencedor" FROM confronto
    JOIN vilao ON confronto.idVilao = vilao.idVilao
    JOIN heroi ON confronto.idHeroi = heroi.idHeroi;

-- Atividade 10
SELECT vilao.codinome AS "Vilões", heroi.codinome AS "VS Capitão América" FROM confronto
    JOIN vilao ON confronto.idVilao = vilao.idVilao
    JOIN heroi ON confronto.idHeroi = heroi.idHeroi
    WHERE heroi.codinome = "Capitão América";
 

-- Atividade 11
SELECT COUNT(idVilao) as "Quantidade de vilões" FROM vilao;

-- Atividade 12
SELECT origem, AVG(nivel_periculosidade) AS "Média de Periculosidade" FROM vilao GROUP BY origem;

-- Atividade 13
SELECT origem, COUNT(idVilao) AS "Qtd vilões" FROM vilao WHERE idVilao > 2 GROUP BY origem;