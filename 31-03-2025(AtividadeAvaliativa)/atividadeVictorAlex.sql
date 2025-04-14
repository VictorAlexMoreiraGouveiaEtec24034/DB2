create schema biblioteca;
use biblioteca;

create table usuario(
    id_usuario INT, PRIMARY KEY, AUTO_INCREMENT,
    nome VARCHAR(35) NOT NULL,
    sobrenome VARCHAR(35) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15)
);

create table livro(
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL, 
    autor VARCHAR(100) NOT NULL, 
    ano_publicacao YEAR NOT NULL, 
    disponivel BOOLEAN DEFAULT TRUE
);

create table emprestimo(
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    id_livro INT FOREIGN KEY (id_livro) REFERENCES livro(id_livro),
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE DEFAULT NULL
);

ALTER TABLE usuario ADD endereco VARCHAR(200);
ALTER TABLE livro MODIFY disponivel TINYINT(1);


INSERT INTO usuario(id_usuario, nome, sobrenome, email, telefone) VALUES (
    1, "Charlie", "Morningstar", "CharlieMorningstar@gmail.com", "94338-6719"
);

INSERT INTO usuario(id_usuario, nome, sobrenome, email, telefone) VALUES (
    2, "Angel", "Dust", "Anthoni@gmail.com", "93168-1981"
);

INSERT INTO usuario(id_usuario, nome, sobrenome, email, telefone) VALUES (
    3, "Alastor", "????", "Alastor@gmail.com", "18652-1584"
);


INSERT INTO livro(id_livro, titulo, autor, ano_publicacao, disponivel) VALUES (
    1, "Negronamicom", "Mago louco", "1500", TRUE
);

INSERT INTO livro(id_livro, titulo, autor, ano_publicacao, disponivel) VALUES (
    2, "Diario do caos", "Bill Saifer", "0000", TRUE
);

INSERT INTO livro(id_livro, titulo, autor, ano_publicacao, disponivel) VALUES (
    3, "Maldições", "????", "????", TRUE
);

INSERT INTO emprestimo(
    id_emprestimo, 
    id_usuario, 
    id_livro, 
    data_emprestimo,
    data_devolucao
) VALUES (1, 1, 1, "10/04/2000", "14/04/2000");

INSERT INTO emprestimo(
    id_emprestimo, 
    id_usuario, 
    id_livro, 
    data_emprestimo,
    data_devolucao
) VALUES (2, 3, 2, "10/05/2000", "14/06/2000");

UPDATE usuario SET telefone="6666-666" WHERE nome="Charlie"

DELETE FROM livro WHERE id=1;

SELECT * FROM usuario;
SELECT * FROM livro WHERE disponivel=TRUE;
SELECT * FROM emprestimo;