use clinica_medica;
SHOW TABLES;
-- Exercicio 1
SELECT pacientes.nome, SUM(medicamentos.preco) as "Gatos com medicamentos" 
    FROM pacientes JOIN historicomedico
    on pacientes.id = historicomedico.paciente_id JOIN prescricoes 
    on historicomedico.id = prescricoes.historico_medico_id JOIN medicamentos
    on medicamentos.id = prescricoes.medicamento_id
    GROUP BY pacientes.nome;

-- Exercicio 2
SELECT pacientes.nome, COUNT(prescricoes.id) as "QTD_exames"
    FROM pacientes JOIN historicomedico
    on pacientes.id = historicomedico.paciente_id JOIN prescricoes 
    on historicomedico.id = prescricoes.historico_medico_id JOIN medicamentos
    GROUP BY pacientes.nome;

-- Mostrar os medicamentos de cada prescrição
SELECT prescricoes.id, medicamentos.nome FROM prescricoes JOIN medicamentos
    on prescricoes.medicamento_id = medicamentos.id;