CREATE DATABASE DBEscolar;
USE DBEscolar;

CREATE TABLE IF NOT EXISTS Curso(
	IDCurso INT NOT NULL PRIMARY KEY,
    Habilitacao VARCHAR(45) NOT NULL,
    Turno VARCHAR(45) NOT NULL,
    Carga_Horaria INT NOT NULL,
    Nivel VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS Disciplina(
	IDisciplina INT NOT NULL PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    CH INT NOT NULL,
    Area VARCHAR(45) NOT NULL,
    FOREIGN KEY (Curso) REFERENCES Curso(IDCurso)
);

CREATE TABLE IF NOT EXISTS Estudante(
	RM INT PRIMARY KEY,
    Nome VARCHAR(25) NOT NULL,
    Sobrenome VARCHAR(30) NOT NULL,
    Data_Nas DATE NOT NULL,
    Endereco VARCHAR(45), 
    CEP VARCHAR(9),
    Cidade VARCHAR(35),
    UF VARCHAR(2), 
    Telefone VARCHAR(14) NOT NULL,
    Email VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Atividade(
	ID INT PRIMARY KEY,
    Tema VARCHAR(40) NOT NULL,
    Disciplina VARCHAR(5) NOT NULL,
    Data_Conclusao DATE, Tipo VARCHAR(30) NOT NULL,
    FOREIGN KEY (Disciplina) REFERENCES Disciplina(IDisciplina)
);

CREATE TABLE IF NOT EXISTS Professores(
	Matricula INT PRIMARY KEY,
    Nome  VARCHAR(25) NOT NULL,
    Sobrenome VARCHAR(30) NOT NULL,
    Data_ADM DATE NOT NULL,
    Endereco VARCHAR(45),
    CEP VARCHAR(14) NOT NULL,
    Email VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Estudante_Ativiada(
	RM_Estudante INT NOT NULL,
    ID_Atividade INT NOT NULL,
    Mencao VARCHAR(2) NOT NULL, 
    DataEntrega DATE NOT NULL,
    CONSTRAINT PK_Avaliacao PRIMARY KEY (RM_Estudante, ID_Atividade)
);

ALTER TABLE Disciplina ADD COLUMN ID_Professor INT;

INSERT INTO Curso(IDCurso, Habilitacao, Turno, Carga_Horaria, Nivel) VALUES 
	(1, "Mtec em Des. Sistemas", "Vesperino", 3500, "Encino Médio"),
    (2, "Mtec PI Informatica p/ Internet", "Integral", 3800, "Encino Médio");
    
INSERT INTO Disciplina(IDisciplina, Nome, CH, Area) VALUES 
	("DS", "Desenvolvimento de Sistemas", 120, "Informatica", 1),
	("CNPW2", "Computaçâo em Nuvem p/ Web II", 80, "Informatica", 2);

INSERT INTO Estudante (RM, Nome, Sobrenome, Data_Nas, Endereco, CEP, Cidade, UF, Telefone, Email ) VALUES 
	(1, "Victor Alex", "Moreira Gouveia", "2007-03-19", "Alameda Dona Augusata de Melo Syllos", "137289827", "São José do Rio Pardo", "SP", "98910-5972", "Victor.Alex.Moreira.Gouveia@gmail.com"),
    

DESCRIBE Curso;
DESCRIBE Disciplina;
DESCRIBE Estudante;
DESCRIBE Atividade;
