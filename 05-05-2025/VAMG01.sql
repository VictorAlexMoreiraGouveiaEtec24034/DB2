USE clinica_medica;
SELECT COUNT(id) as "Total de pacientes" FROM pacientes;

DESC medicos;
-- Exibir a quantidade de médicos oftalmologistas
SELECT especialidade, COUNT(id) FROM medicos WHERE especialidade = "pediatria";

--exibir a quantidade de médicos por especialidade
SELECT especialidade, COUNT(id) as "Quantidade" FROM medicos GROUP BY especialidade;

-- Exibir tudo
SELECT * FROM medicos;

-- cadastrar um médico
DESC medicos;
INSERT INTO medicos(nome, especialidade, crm, telefone, email) VALUES ("Carlos Fernandes", "Pediatria", "CRM 3029-8844", "(11) 9895-9216", "Carlos.Fernandes@gmail.com");