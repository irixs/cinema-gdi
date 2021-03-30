SELECT COUNT(pontos_fidelidade)
FROM cliente
WHERE pontos_fidelidade >= 30;

SELECT pessoa.cpf , pessoa.nome , telefone.telefone
FROM pessoa
LEFT JOIN TELEFONE  ON pessoa.cpf = telefone.cpf_pessoa ;

SELECT pessoa.cpf , pessoa.nome , cliente.pontos_fidelidade
FROM pessoa
INNER JOIN cliente  ON pessoa.cpf = cliente.cpf_p;

DELETE FROM filme WHERE titulo = 'Coringa';

SELECT * FROM cliente 
WHERE pontos_fidelidade BETWEEN 10 AND 20;

SELECT * FROM filme
WHERE classificação_indicativa IN ('12','14','16') ;

SELECT * FROM pessoa
WHERE nome LIKE '%Silva%';

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

