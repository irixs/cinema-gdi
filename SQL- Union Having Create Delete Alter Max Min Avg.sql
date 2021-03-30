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

SELECT MAX(salario)
FROM funcionario;

SELECT MIN(salario)
FROM funcionario;

SELECT AVG(salario)
FROM funcionario;
