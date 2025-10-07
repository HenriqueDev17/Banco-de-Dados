--DML

USE db_devconnect1

INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES ('Prefeito Bucha', 'prefeito_bucha_master', 'bucha@gmail.com','Senai@134', 'Foto.Perfil' );

INSERT INTO tb_publicacao (id_usuario, descricao, imagem_url,data_publicacao)
VALUES (1, 'Bem-Vindo a Empresa DevConnect', 'Imagem.DevConnect', '2025-10-02');

INSERT INTO tb_seguidor (id_usuario_seguir, id_usuario_seguida)
VALUES (1, 2);

INSERT INTO tb_comentarios (id_usuario, id_publicacao, texto, data_comentario)
VALUES (1,1, 'Somos uma empresa especializada em tecnologia', '2025-10-02' );

INSERT INTO tb_curtidas (id_usuario, id_publicacao)
VALUES (1, 1);