USE clinica_medica;

-- EX 1
SELECT COUNT(id) as "Quantidade de pacientes" FROM pacientes;

-- EX 2
SELECT AVG(YEAR(CURDATE()) - YEAR(data_nascimento)) as "Média de idade"FROM pacientes;

-- EX 3
SELECT * FROM agendamentos;
SELECT * FROM medicos;

SELECT medicos.nome, COUNT(agendamentos.id) FROM medicos JOIN agendamentos on medicos.id = agendamentos.medico_id GROUP BY medicos.nome;

--Ex 4
INSERT INTO agendamentos (paciente_id, medico_id, data_hora, tipo_consulta, status) VALUES (1, 5, "2025-06-01 12:30:", "Avaliação", "Agendado");