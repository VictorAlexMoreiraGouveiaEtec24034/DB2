USE cadastro;

-- Exercícios de revisão
/*

1) Criar na tabela Estudante do banco de dados escolaTI, mais 2 atributos:
email e telefone*/

/*Cadastrar pelo menos 6 email e telefone para obviamente, 6 estudantes escolhidos*/

/*Listar os dados de todos os estudantes para verificar as mundanças realizadas a cima*/

-- Criação do atributo email na tabela estudante

ALTER TABLE estudante ADD COLUMN email VARCHAR(50);

-- Criação do atributo telefone na tabela estudante

ALTER Table estudante ADD COLUMN telefone VARCHAR(12);

UPDATE estudante SET email='DanielMorais@gmail.com', telefone="19 9826-7925" WHERE id=1;
UPDATE estudante SET email='TalitaNascimento@gmail.com', telefone="19 9926-9845" WHERE id=2;
UPDATE estudante SET email='EmersonGabriel@gmail.com', telefone="19 9503-9214" WHERE id=3;
UPDATE estudante SET email='LucasDamasceno@gmail.com', telefone="19 9891-3687" WHERE id=4;
UPDATE estudante SET email='LeilaMartins@gmail.com', telefone="19 9913-1028" WHERE id=5;
UPDATE estudante SET email='LeticiaNeves@gmail.com', telefone="19 9913-2871" WHERE id=6;
SELECT * FROM estudante;
