-- DML

-- USAR O BANCO CRIADO
USE Exercicio_1_2

--INSERIR DADOS NA TABELA 
INSERT INTO Cliente(Nome,CPF)
VALUES('Ronaldo','098765432')

INSERT INTO Empresa(Nome)
VALUES('Carros.com')

INSERT INTO Modelo(Nome)
VALUES('Celta')

INSERT INTO Marca(Nome)
VALUES('Crevrolet')

INSERT INTO Veiculo(IdEmpresa,IdModelo,IdMarca,Placa)
VALUES(2,2,2,'GSI7896')

INSERT INTO Aluguel(IdVeiculo,IdCliente,Protocolo,DataRetirada,DataDevolucao)
VALUES(3,1,'1233435','21/04/2023','25/04/2023')

SELECT * FROM Cliente
SELECT * FROM Empresa
SELECT * FROM Modelo
SELECT * FROM Marca
SELECT * FROM Veiculo
SELECT * FROM Aluguel