--Usar um banco ja criado
USE db_escola_T;


--INSERIR 1 REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estrada das lágrimas, 579 - São José');

SELECT * FROM tb_escola;

INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
VALUES
(2, 'Tarde', 16, 'SEDUC'), 
(2, 'Manhã', 16, 'SEDUC'),
(2, 'Noite', 16, 'SEDUC');

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(nome_professor, materia, duracao, nota, data_prova)
VALUES
('Ana Claudia', 'Educação Física', '13:15:00', 0, '2025-09-25'),
('Rogéria', 'Matemática', '14:20:00', 10, '2025-09-25'),
('Adair', 'Sociologia', '08:30:00', 7.5, '2025-09-25');

SELECT * FROM tb_prova;

--TABELA ALUNO

INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES('Davi', '04920625014', 'Davi77', '2008-10-20', 1);

INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES
('Pedro Enzo', '98115290009', 'Pedro77', '1989/02/10', 1),
('Samuel', '71652930000', 'Samuel77', '1995/03/22', 1),
('Bruno', '42204156027', 'Bruno77', '1990/02/24', 1),
('Henrique', '93437342045', 'Henrique77', '1997/06/12', 1);

SELECT * FROM tb_aluno;

--APAGAR UM REGISTRO PELO SEU IDENTIFICADOR


--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR
UPDATE tb_aluno
SET
WHERE 