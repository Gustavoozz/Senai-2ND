
-- DDL

-- CRIAR UM BANCO
CREATE DATABASE Exercicio_1_3;

-- USAR O BANCO CRIADO
USE Exercicio_1_3;

-- CRIAR TABELAS
-- UNIQUE ( CAMPO EXCLUSIVO QUE N�O PODE SER REPETIDO. EX: CPF, CNH, EMAIL ).
-- NOT NULL ( CAMPO QUE DEVE SER PREENCHIDO OBRIGATORIAMENTE ).
CREATE TABLE Clinica
(
	IdClinica INT PRIMARY KEY IDENTITY,
	Endereco VARCHAR(30) NOT NULL,
)

CREATE TABLE Dono
(
	IdDono INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20) NOT NULL
)

CREATE TABLE TipoPet
(
	IdTipoPet INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(30) NOT NULL
)

CREATE TABLE Raca
(
	IdRaca INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(30) NOT NULL
)

CREATE TABLE Veterinario
(
	IdVeterinario INT PRIMARY KEY IDENTITY,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica) NOT NULL,
	Nome VARCHAR(20) NOT NULL,
	CRMV INT NOT NULL
)

CREATE TABLE Atendimentos
(
	IdAtendimento INT PRIMARY KEY IDENTITY,
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario) NOT NULL,
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet) NOT NULL,
	Descricao VARCHAR(30) NOT NULL,
	Dia VARCHAR(15) NOT NULL
)

CREATE TABLE Pet
(
	IdPet INT PRIMARY KEY IDENTITY,
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet) NOT NULL,
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca) NOT NULL,
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono) NOT NULL,
	Nome VARCHAR(20) NOT NULL,
	DataNascimento VARCHAR(15) NOT NULL,
)

-- CONFERIR A TABELA
SELECT * FROM Clinica
SELECT * FROM Veterinario
SELECT * FROM Atendimentos
SELECT * FROM Pet
SELECT * FROM TipoPet
SELECT * FROM Raca
SELECT * FROM Dono


