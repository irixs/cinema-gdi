CREATE OR REPLACE TRIGGER horario_comercial_trigger 
 
BEFORE UPDATE ON funcionario 
DECLARE
excecao_comercial EXCEPTION;
excecao_empregados EXCEPTION;
BEGIN 
IF (TO_CHAR (SYSDATE,'HH24') NOT BETWEEN '08' AND '18') THEN 
    IF UPDATING('salario') THEN RAISE excecao_comercial; 
    ELSE RAISE excecao_comercial; 
    END IF; 
END IF; 
EXCEPTION
    WHEN excecao_comercial THEN
    RAISE_APPLICATION_ERROR(-20000,'Alterações no salário apenas no horario comercial'); 
    
    WHEN excecao_empregados THEN
    RAISE_APPLICATION_ERROR(-20001,'Alterações nos empregados apenas no horario comercial'); 
END horario_comercial_trigger;

CREATE OR REPLACE TRIGGER historico_filme_trigger
BEFORE DELETE ON filme
FOR EACH ROW
BEGIN
INSERT INTO historico_filme
VALUES (:old.cod_filme, :old.titulo, :old.genero, :old.classificação_indicativa);
END historico_filme_trigger;