--DML
USE db_devconnect
INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url)

VALUES ('Dantas da silva', 'Dantaszzx', 'dantasbucha@gmail.com', '1234', 'url.https');
SELECT * FROM tb_usuario;


--TABELA PUBLICACAO
INSERT INTO tb_publicacao (descricao, imagem_url, data_publicacao)
VALUES ('Olá pessoal', 'url.httpss', '12/08/2025');

SELECT * FROM tb_publicacao;

--TABELA CURTIDA
INSERT INTO tb_curtida (id_usuario, id_publicacao)
VALUES ('Curtidas', 'Publicacoes' 1, 2);

SELECT * FROM tb_curtida;

--TABELA COMENTARIO
INSERT INTO tb_comentario (texto, data_comentario, id_usuario)
VALUES ('Otima foto', '12/08/2025', 1);


SELECT * FROM tb_comentario;


--TABELA SEGUIDOR
INSERT INTO tb_seguidor_usuario (id_usuario, id_seguidor)
VALUES (1);

SELECT * FROM tb_seguidor_usuario;

