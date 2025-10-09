USE db_escola_T;

--Listar os 3 primeiros alunos
SELECT TOP 3 matricula FROM tb_aluno;

--Lista as matriculas dos alunos em ordem crescente
SELECT matricula 
FROM tb_aluno
ORDER BY id ASC;

--Listar os 3 primeiros alunos
SELECT TOP 1 matricula
FROM tb_aluno
ORDER BY id DESC;

--Listar todos os alunos
SELECT * FROM tb_aluno;

--Lista todos os alunos que tem o nome Davi
SELECT nome, cpf
FROM tb_aluno
WHERE nome = 'Davi';

--Lista o nome da escola torloni
SELECT nome
FROM tb_escola
WHERE nome = 'Torloni';

--Mostre as turmas que tem o nome SEDUC
SELECT nome_turma
FROM tb_turma
WHERE nome_turma = 'SEDUC';

--Exiba somente 2 alunos em ordem do mais recente para o menos recente
SELECT TOP 2 *
FROM tb_aluno
ORDER BY id DESC

--Mostre quantos alunos existe na base

SELECT COUNT(*) AS qtd_alunos FROM tb_aluno;

--Mostre os alunos mais novs
SELECT MAX(data_nasc) AS idade_mais_nova FROM tb_aluno;


--Mostre os alunos mais velhos
SELECT MIN(data_nasc) AS idade_mais_velha FROM tb_aluno;

--Exiba a idade mais velha e a idade mais nova em uma unica consulta
SELECT MIN(data_nasc) AS idade_mais_velha, MAX(data_nasc) AS idade_mais_novo
FROM tb_aluno;

--Exibe a media aritmetica de notas nas provas
SELECT AVG(nota) AS media_nota FROM tb_prova;

--Exiba a soma dos id's de turma
SELECT SUM(id) FROM tb_aluno;

--Mostre os nomes dos alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novo, nome
FROM tb_aluno
GROUP BY nome
ORDER BY idade_mais_novo DESC;

--Exibir quantas turmas tem no periodo da tarde
SELECT COUNT(id)
FROM tb_turma
WHERE periodo = 'Tarde';