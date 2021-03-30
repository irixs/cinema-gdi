DECLARE 
contador NUMBER;
cursor c1 is SELECT COUNT (*) FROM pessoa;
BEGIN
    open c1;
    fetch c1 into contador;
    WHILE (TRUE) LOOP
        dbms_output.put_line(contador);
        contador := contador-1;
        EXIT WHEN contador=0;
    END LOOP;
END;

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

--uso de record

DECLARE
   type pessoas is record
      (cpf INT,
      nome varchar(30),
      email varchar(30)
    );
   pessoa1 pessoas;

BEGIN
   -- especificacao pessoa
   pessoa1.cpf  := '12345678900';
   pessoa1.nome := 'Bob Paulson';
   pessoa1.email := 'bob@cin.ufpe.br';
END;
/


--Uso de rowtype

CREATE TABLE funcionario(
   cpf   INT NOT NULL,
   nome  VARCHAR (30),
   carteira_trabalho INT NOT NULL,
   salario   DECIMAL (18, 2),
   PRIMARY KEY (cpf)
);

INSERT INTO funcionario (cpf, nome, carteira_trabalho, salario)
VALUES (12341231234, 'Drake', 33333333333, 2000.00 );

DECLARE
   funcionario_rec funcionario%rowtype;
BEGIN
   SELECT * into funcionario_rec
   FROM funcionario
   WHERE cpf = 12341231234;
   dbms_output.put_line('CPF Funcionario: ' || funcionario_rec.cpf);
   dbms_output.put_line('Nome Funcionario: ' || funcionario_rec.nome);
   dbms_output.put_line('Carteira de Trabalho: ' || funcionario_rec.carteira_trabalho);
   dbms_output.put_line('Salario Funcionario: ' || funcionario_rec.salario);
END; 
/

-- bloco anonimo

BEGIN
   DBMS_OUTPUT.PUT_LINE('Output:' || CHR(10) || TO_CHAR(SYSDATE,'DAY'));
END;
		--mostra a data do sistema


--USO DE ESTRUTURA DE DADOS DO TIPO TABLE

DECLARE TYPE cpf_pessoa IS TABLE OF NUMBER INDEX BY VARCHAR2(64);
cpf  cpf_pessoa;    	-- variavel do array associativo
  i            	VARCHAR2(64);

BEGIN
  -- adiciona elementos ao array associativo:

  cpf('Andrey')  := 11538806444;
  cpf('Caio') 	:= 11111111111;
  cpf('Jorge') := 12456345434;

  --troca o cpf

  cpf('Caio') := 20202020202;

  -- Printa o array associativo:

  i := cpf.FIRST;

  WHILE i IS NOT NULL LOOP
	DBMS_Output.PUT_LINE
  	('CPF de ' || i || ' é ' || TO_CHAR(cpf(i)));
	i := cpf.NEXT(i);
  END LOOP;
END;
/