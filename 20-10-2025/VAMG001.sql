USE cadastro;

DELIMITER $$

CREATE FUNCTION preferem_o_curso(nome_curso VARCHAR(60)) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE quantidade INT;
    SET quantidade = (SELECT COUNT(*) FROM estudante JOIN curso ON estudante.cursopreferido = curso.idcurso WHERE curso.nome = nome_curso);

    RETURN quantidade;
END$$

DELIMITER ;

SELECT cursopreferido as "Estudantes", curso.nome as "Curso" FROM estudante
    JOIN curso on curso.idcurso=estudante.cursopreferido;

SELECT preferem_o_curso("MySQL");