CREATE DATABASE GUFI

USE GUFI

--> TABELAS PRA INICIAR
-- TIPOUSUARIO
CREATE TABLE tipoUsuario (
 idTipoUsuario SMALLINT PRIMARY KEY IDENTITY,
 tituloTipoUsuario VARCHAR(50) UNIQUE NOT NULL,
);
-- TIPOEVENTO
CREATE TABLE tipoEvento(
 idTipoEvento INT PRIMARY KEY IDENTITY,
 tituloTipoEvento VARCHAR(100) UNIQUE NOT NULL
);
-- SITUACAO
CREATE TABLE SITUACAO (
 idSituacao TINYINT PRIMARY KEY IDENTITY,
 descricao VARCHAR(25) UNIQUE NOT NULL 
);
-- INSTITUICAO
CREATE TABLE INSTITUICAO(
 idInstituicao SMALLINT PRIMARY KEY IDENTITY ,
 CNPJ CHAR(18) UNIQUE NOT NULL,
 nomeFantasia VARCHAR(100) UNIQUE NOT NULL,
 endereco VARCHAR(150) UNIQUE NOT NULL
);
-- USUARIO
CREATE TABLE USUARIO (
 idUsuario INT PRIMARY KEY IDENTITY,
 idTipousuario SMALLINT FOREIGN KEY REFERENCES tipoUsuario(idTipoUsuario),
 nomeUsuario VARCHAR (100) NOT NULL,
 email VARCHAR(254) NOT NULL,
 senha VARCHAR(10) NOT NULL CHECK(senha >=8)
);
-- EVENTO
CREATE TABLE EVENTO(
 idEvento INT PRIMARY KEY IDENTITY,
 idTipoEvento INT FOREIGN KEY REFERENCES tipoEvento(idTipoEvento),
 idInstituicao SMALLINT FOREIGN KEY REFERENCES INSTITUICAO(idInstituicao),
 nomeEvento VARCHAR(50) NOT NULL,
 descricao VARCHAR(300) NOT NULL,
 dataEvento DATETIME NOT NULL,
 acessoLivre BIT DEFAULT (1)
 );
-- PRESENCA
CREATE TABLE PRESENCA(
 idPresenca INT PRIMARY KEY IDENTITY,
 idUsuario INT FOREIGN KEY REFERENCES USUARIO(idUsuario),
 idEvento INT FOREIGN KEY REFERENCES EVENTO(idEvento),
 idSituacao TINYINT FOREIGN KEY REFERENCES SITUACAO(idSituacao)
);

/* RESUMO
 PRIMARY KEY = CHAVE PRIMARIA
 FOREIGN KEY = CHAVE ESTRANGEIRA
 IDENTITY = Define que o campo será auto-incremento e unico e (1,1) 
            inicia do 1 e vai de 1 em 1.
 NOT NULL = Não pode ser nulo, ou seja, é obrigatorio.
 UNIQUE = Campo é unique , ou seja , não se repete.
 DEFAULT = Defineum valor padrão, caso nenhum seja informado.
 GO = Pausa a leitura e executa o bloco de codigo acima.
*/
