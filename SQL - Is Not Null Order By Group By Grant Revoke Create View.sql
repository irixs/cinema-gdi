SELECT pessoa.cpf , pessoa.nome , telefone.telefone
FROM pessoa
LEFT JOIN TELEFONE  ON pessoa.cpf = telefone.cpf_pessoa 
WHERE telefone.telefone IS NOT NULL;

-- ordena todas as pessoas por nome
SELECT * FROM PESSOA
ORDER BY NOME

-- conta e agrupo a quantidade salario de todos os funcionarios
SELECT COUNT(Cpf_P), Salario
FROM Funcionario
GROUP BY Salario;

--grant revoke

GRANT SELECT, INSERT, UPDATE, DELETE ON Funcionario TO 66593321445;

REVOKE ALL ON Funcionarios FROM 89965414752;

-- USO DE CREATE VIEW
CREATE VIEW [Filmes Livres] AS
SELECT cod_filme, titulo
FROM filmes
WHERE classificação_indicativa = 'Livre';