--USO DE PROCEDURE
CREATE TABLE FILMES (
  COD_FILME         INTEGER NOT NULL,
  TITULO        	VARCHAR2(100 BYTE),
  GENERO        	VARCHAR2(30 BYTE),
  CLASSIFICACAO    	VARCHAR2(10 BYTE)
);
CREATE OR REPLACE PROCEDURE "SP_FILMES"(
  vCOD_FILME FILMES.COD_FILME%TYPE,
  vTITULO   FILMES.TITULO%TYPE,
  vGENERO   FILMES.GENERO%TYPE,
  vCLASSIFICACAO FILMES.CLASSIFICACAO%TYPE,
  vOPR    	CHAR)
IS
  vEXCEPTION EXCEPTION;
BEGIN
  IF (vOPR = 'I') THEN
	INSERT INTO FILMES(COD_FILME, TITULO, GENERO, CLASSIFICACAO) VALUES (vCOD_FILME, vTITULO, vGENERO, vCLASSIFICACAO);
  ELSE
  IF(vOPR = 'A') THEN
	UPDATE FILMES SET TITULO = vTITULO, GENERO = vGENERO, CLASSIFICACAO = vCLASSIFICACAO WHERE COD_FILME = vCOD_FILME;
  ELSE
  IF(vOPR = 'D')THEN
	DELETE FROM FILMES WHERE COD_FILME = vCOD_FILME;
  ELSE
	RAISE vEXCEPTION;
  END IF;
  END IF;
  END IF;
  EXCEPTION
	WHEN vEXCEPTION THEN
  	RAISE_APPLICATION_ERROR(-20999,'ATENÇÃO! Operação diferente de I, D, A.', FALSE);
END SP_FILMES;
    

CREATE OR REPLACE PACKAGE BODY Sessao AS
FUNCTION get_horario (id_sessao INT)
    RETURN Timestamp 
IS
    horario_filme TIMESTAMP;
    cursor c1 is SELECT horario_dia FROM sessao WHERE cod_sessao = id_sessao;
BEGIN
    open c1;
    fetch c1 into horario_filme;
    close c1;
RETURN horario_filme;
END;
FUNCTION get_sala (id_sessao INT)
    RETURN INT
IS
    numero_sessao INT;
    cursor c1 is SELECT sala FROM sessao WHERE cod_sessao = id_sessao;
BEGIN
    open c1;
    fetch c1 into numero_sessao;
    close c1;
RETURN numero_sessao;
END;
END Sessao;

CREATE OR REPLACE PACKAGE Sessao AS
    FUNCTION get_horario (cod_sessao INT)
        RETURN Timestamp;
    FUNCTION get_sala (cod_sessao INT)
        RETURN INT;
END Sessao

CREATE OR REPLACE Function FindFilme (name_in IN varchar2)
    RETURN varchar2
IS
    nomefilme varchar2(30);
    cursor c1 is Select titulo FROM Filme WHERE titulo = name_in;
    
BEGIN
    open c1;
    fetch c1 into nomefilme;
    
    if c1%notfound then
    nomefilme := 'Nao Encontrado';
    end if;
    
    close c1;
RETURN nomefilme;
END;

-- for loop para printar cpf salario e carteira de trabalho de funcionario
BEGIN
    FOR i IN (SELECT * FROM FUNCIONARIO)
    LOOP
        DBMS_OUTPUT.PUT_LINE(i.Cpf_P || ' ' || i.Salario || ' ' || i.Carteira_Trabalho);
    END LOOP;
END;

SELECT cpf_p , salario ,
CASE
    WHEN salario = 1045 THEN 'salario minimo' 
    WHEN salario >= 3000 THEN 'salario de supervisor'
END AS salario_atribuido
FROM FUNCIONARIO;