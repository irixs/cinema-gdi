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