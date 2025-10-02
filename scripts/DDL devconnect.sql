--DDL
CREATE DATABASE db_devconnect

USE db_devconnect

--USUARIO
CREATE TABLE tb_usuario(
id				    INT	    IDENTITY(1,1)	PRIMARY KEY,

nome_completo	NVARCHAR(255)			NOT NULL,
nome_usuario	NVARCHAR(50)			NOT NULL,
email			NVARCHAR(255) UNIQUE	NOT NULL,
senha			NVARCHAR(50)  UNIQUE	NOT NULL,
foto_perfil_url	NVARCHAR(150)			NULL
);

SELECT * FROM tb_usuario;

--PUBLICACAO
CREATE TABLE	tb_publicacao(
id					INT		IDENTITY(1,1)	PRIMARY KEY,
descricao			NVARCHAR(255)		NULL,
imagem_url			NVARCHAR(150)		NULL,
data_publicacao		DATE				NOT NULL,
);

SELECT * FROM tb_publicacao;

--CURTIDA
CREATE TABLE	tb_curtida(
id				    INT		IDENTITY(1,1)	PRIMARY KEY,

id_usuario		INT FOREIGN KEY REFERENCES tb_usuario(id),
id_publicacao	INT FOREIGN KEY REFERENCES tb_publicacao(id),
);

SELECT * FROM tb_curtida;

--SEGUIDOR
CREATE TABLE	tb_seguidor(
id				    INT		IDENTITY(1,1)	PRIMARY KEY,

id_usuario		INT FOREIGN KEY REFERENCES tb_usuario(id),
);

SELECT * FROM tb_seguidor;

--COMENTARIO
CREATE TABLE	tb_comentario(
id				    INT		IDENTITY (1,1)	PRIMARY KEY,
texto			NVARCHAR(255)			NULL,
data_comentario	DATE					NOT NULL,

id_usuario		INT FOREIGN KEY REFERENCES tb_usuario(id),
);

SELECT * FROM tb_comentario;

CREATE TABLE  tb_seguidor_usuario(
id_usuario	INT		NOT NULL,
id_seguidor	INT		NOT NULL,
);
SELECT * FROM tb_seguidor_usuario