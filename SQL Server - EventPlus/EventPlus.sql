-- DDL = Data Definition Language

-- Criar o banco de dados
CREATE DATABASE [EventPlus];

USE [EventPlus];


-- Criar as tabelas
CREATE TABLE TiposDeUsuario 
(
IdTipoDeUsuario INT PRIMARY KEY IDENTITY,
TituloTipoUsuario VARCHAR(50) NOT NULL	
)


CREATE TABLE TiposDeEvento
(
IdTipoDeEvento INT PRIMARY KEY IDENTITY,
TituloTipoEvento VARCHAR(50) NOT NULL UNIQUE
)


CREATE TABLE Instituicao
(
IdInstituicao INT PRIMARY KEY IDENTITY,
CNPJ CHAR(14) NOT NULL UNIQUE,
Endereco VARCHAR(200) NOT NULL,
NomeFantasia VARCHAR(200) NOT NULL
)


CREATE TABLE Usuario
(
IdUsuario INT PRIMARY KEY IDENTITY,
IdTipoDeUsuario INT FOREIGN KEY REFERENCES TiposDeUsuario(IdTipoDeUsuario) NOT NULL,
Nome VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL UNIQUE,
Senha VARCHAR(50) NOT NULL
)


CREATE TABLE Evento
(
IdEvento INT PRIMARY KEY IDENTITY,
IdTipoDeEvento INT FOREIGN KEY REFERENCES TiposDeEvento(IdTipoDeEvento) NOT NULL,
IdInstituicao INT FOREIGN KEY REFERENCES Instituicao(IdInstituicao) NOT NULL,
Nome VARCHAR(100) NOT NULL,
Descricao VARCHAR(100) NOT NULL,
DataEvento DATE NOT NULL,
HorarioEvento TIME NOT NULL
)


CREATE TABLE PresencasEvento
(
IdPresencasEvento INT PRIMARY KEY IDENTITY,
IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento) NOT NULL,
Situacao BIT DEFAULT(0)
)


CREATE TABLE Comentario 
(
IdComentario INT PRIMARY KEY IDENTITY,
IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento) NOT NULL,
Descricao VARCHAR(256) NOT NULL,
Exibe BIT
)


-- Select:
SELECT * FROM Comentario
SELECT * FROM TiposDeUsuario
SELECT * FROM TiposDeEvento
SELECT * FROM Instituicao
SELECT * FROM Usuario
SELECT * FROM Evento
SELECT * FROM PresencasEvento

-- DML = Data Manipulation Language

INSERT INTO TiposDeUsuario (TituloTipoUsuario) 
VALUES('Administrador'),('Comum');

INSERT INTO TiposDeEvento (TituloTipoEvento)
VALUES('SQL Server');

INSERT INTO Instituicao (CNPJ,Endereco,NomeFantasia)
VALUES('80665111000156', 'Rua Nitéroi 180 São Caetano do Sul', 'DevSchool')

INSERT INTO Usuario (IdTipoDeUsuario,Nome,Email,Senha)
VALUES(2,'Giba', 'giba@gmail.com','1234')

INSERT INTO Evento (IdTipoDeEvento,IdInstituicao,Nome,Descricao,DataEvento,HorarioEvento)
VALUES(1,1,'SQL Server Event','Evento com foco no tema SQL SERVER','11-08-2023','10:30:00')

INSERT INTO PresencasEvento (IdUsuario,IdEvento,Situacao)
VALUES(2,1,'true')

INSERT INTO Comentario (IdUsuario,IdEvento,Descricao,Exibe)
VALUES(2,1,'Estou ansioso para o evento, tenho grandes expectativas!','true')

-- DQL = Data Query Language

-- Criar script para consulta exibindo os seguintes dados
-- Usar JOIN

/*Nome do usuário
Tipo do usuário
Data do evento
Local do evento (Instituição)
Titulo do evento
Nome do evento
Descrição do evento
Situação do evento
Comentário do evento
*/

SELECT 
Usuario.Nome, 
TiposDeUsuario.TituloTipoUsuario, 
Evento.DataEvento, 
Instituicao.Endereco, 
TiposDeEvento.TituloTipoEvento, 
Evento.Nome, 
Evento.Descricao, 
PresencasEvento.Situacao, 
Comentario.Descricao


FROM
Usuario 
INNER JOIN TiposDeUsuario ON Usuario.IdUsuario = TiposDeUsuario.IdTipoDeUsuario
INNER JOIN Evento ON TiposDeUsuario.IdTipoDeUsuario = Evento.IdEvento
INNER JOIN Instituicao ON Evento.IdEvento = Instituicao.IdInstituicao
INNER JOIN TiposDeEvento ON Instituicao.IdInstituicao = TiposDeEvento.IdTipoDeEvento
INNER JOIN PresencasEvento ON TiposDeEvento.IdTipoDeEvento = PresencasEvento.IdPresencasEvento
INNER JOIN Comentario ON PresencasEvento.IdPresencasEvento = Comentario.IdComentario


