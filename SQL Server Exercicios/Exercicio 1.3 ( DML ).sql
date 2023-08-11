-- DML

-- USAR O BANCO CRIADO
USE Exercicio_1_3

--INSERIR DADOS NA TABELA 
INSERT INTO Clinica(Endereco)
VALUES('Rua da Liberdade')

INSERT INTO Pet(IdTipoPet,IdRaca,IdDono,Nome,DataNascimento)
VALUES(1, 2, 2, 'Roberto', '15/05/2009')

INSERT INTO Dono(Nome)
VALUES('Ronaldo')

INSERT INTO TipoPet(Descricao)
VALUES('Cachorro de grande porte')

INSERT INTO Raca(Descricao)
VALUES('Golden Retriever')

INSERT INTO Veterinario(IdClinica,Nome,CRMV)
VALUES(1,'Claudio', '1234')

INSERT INTO Atendimentos(IdVeterinario,IdPet,Descricao,Dia)
VALUES(2, 1, 'Banho e tosa', '03/05/2023')

-- CONSULTA DA TABELA
SELECT * FROM Clinica
SELECT * FROM Dono
SELECT * FROM TipoPet
SELECT * FROM Veterinario
SELECT * FROM Raca
SELECT * FROM Pet
SELECT * FROM Atendimentos