CREATE DATABASE if not exists BDEscolar;
USE BDEscolar;

CREATE TABLE if not exists curso(idcurso int primary key,
habilitacao varchar(45) not null,
turno varchar(20) not null,
c_horaria int not null,
nivel varchar(25));

CREATE TABLE if not exists disciplina(idDisciplina varchar(5)
primary key,
nome varchar(45) not null, c_horaria int not null,
area varchar(45), idcurso int);

CREATE TABLE if not exists estudante(rm int primary key, 
nome varchar(25) not null,
sobrenome varchar(30) not null, dataNasc date not null,
endereco varchar(45), cep varchar(9), cidade varchar(35),
uf varchar(2), telefone varchar(14) not null, email varchar(45) not null);

create table if not exists atividade(id int primary key, 
tema varchar(40) not null, disciplina varchar(5) not null,
dataConclusao date, tipo varchar(30) not null,
foreign key (disciplina) references disciplina(idDisciplina));

CREATE TABLE IF NOT EXISTS professor(matricula int primary key,
nome varchar(25) not null,
sobrenome varchar(30) not null, dataAdm date not null,
endereco varchar(45), cep varchar(9), cidade varchar(35),
uf varchar(2), telefone varchar(14) not null, email varchar(45) not null);

CREATE TABLE IF NOT EXISTS estudante_atividade(rmEstudante int not null,
idAtividade int not null, mencao varchar(2) not null, dataEntrega date not null,
constraint pk_avaliacao primary key(rmEstudante, idAtividade));

/*Alterando a tabela disciplina para acrescentar o atributo idprofessor */ 
ALTER TABLE disciplina add column idprofessor int; 

desc disciplina;

/* INSERINDO DADOS NAS TABELAS */
INSERT INTO curso(idcurso, habilitacao,turno,c_horaria,nivel)
VALUES
(1,"Mtec em Des. Sistemas","vespertino",3500,"ensino médio"),
(2,"MTec PI Informática p/ Internet","integral",3800,"ensino médio");
		
INSERT INTO disciplina(idDisciplina,nome,c_horaria,area,idcurso)
VALUES
("DS","Desenvolvimento de Sistemas",120,"Informática",1),
("CNPW2","Computação em Nuvem p/ Web II",80,"Informática",2),
("CC","Corte e Costura",30,"Artesanato",4);



/* CONSULTANDO DADOS DAS TABELAS */
SELECT * FROM curso;
SELECT * FROM disciplina;