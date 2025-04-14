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

show tables;
desc curso;
desc disciplina;