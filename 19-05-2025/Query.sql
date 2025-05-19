USE clinica_medica;
SHOW TABLES;

-- Acesso aos campos de 'paciente_id' e 'medico_id'
SELECT agendamentos.id, pacientes.nome as "Pacientes", medicos.nome as "Médicos", agendamentos.data_hora, agendamentos.tipo_consulta, agendamentos.status  FROM agendamentos 
    JOIN pacientes on pacientes.id=agendamentos.paciente_id
    JOIN medicos on medicos.id=agendamentos.medico_id;

SELECT * FROM agendamentos;

-- Aula de hoje
INSERT INTO agendamentos
    (paciente_id, medico_id, data_hora, tipo_consulta, status) VALUES 
    (2,1,"2025-05-19 09:00", "chechup geral", "Consulta realizada"),
    (4,3, "2025-05-26 16:00", "Diagnóstico de dor abdominal", "agendada"),
    (2,3, "2025-06-02 14:00", "Diagnóstico de dor de cabeça", "agendada"),
    (5,2, "2025-05-19 11:00", "Retorno com resultado de exames", "Consulta realizada");

/*Listar a quantidade de consulta por médico*/
SELECT * FROM medicos;

SELECT medicos.id, medicos.nome, COUNT(agendamentos.id) as "QTD_Consultas" FROM medicos 
    JOIN agendamentos on medicos.id=agendamentos.medico_id 
    GROUP BY medicos.nome
    ORDER BY medicos.id;