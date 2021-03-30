-- UNION cpfs de funcionario com de cliente
SELECT Cpf_P FROM FUNCIONARIO
UNION
SELECT Cpf_P FROM CLIENTE

-- Having agrupa os clientes por ponto de fidelidade com a condicao having de ser maior que 25
SELECT pontos_fidelidade
FROM Cliente
GROUP BY pontos_fidelidade
HAVING pontos_fidelidade > 25


-- criando e deletando table teste
CREATE TABLE TESTE(
    atributo1 int
);
DROP TABLE TESTE;

-- alter table
ALTER TABLE Funcionario
ADD Email varchar(255);


--  Subconsulta com operador relacional(Mostra os clientes que tem pontos de fidelidade maior que um cliente X)
SELECT a.Cpf, a.nome, b.PONTOS_FIDELIDADE
FROM Pessoa a, Cliente  b
WHERE a.Cpf = b.Cpf_P and b.PONTOS_FIDELIDADE > 
(SELECT PONTOS_FIDELIDADE
FROM Cliente
WHERE Cpf_P = '14557863669');


-- Subconsulta com IN(Mostra os funcionarios que são pessoas e começam com a letra V)
SELECT Nome 
FROM Pessoa 
WHERE Nome
IN (SELECT Nome
FROM Funcionario
WHERE Nome Like 'V%')

-- Subconsulta com Any(Retorna qualquer pessoa que tem pontos de fidelidade igual a 10)
SELECT Nome
FROM Pessoa 
WHERE Cpf = ANY
(SELECT Cpf_P
FROM Cliente
WHERE PONTOS_FIDELIDADE = 10); 

-- Subconsulta com All(Retorna Falso por que tem outros valores em pontos de fidelidade além de 10)
SELECT Nome
FROM Pessoa 
WHERE Cpf = ALL
(SELECT Cpf_P
FROM Cliente
WHERE PONTOS_FIDELIDADE = 10); 

SELECT MAX(salario)
FROM funcionario;

SELECT MIN(salario)
FROM funcionario;

SELECT AVG(salario)
FROM funcionario;