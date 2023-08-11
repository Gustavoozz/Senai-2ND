-- DQL

USE Exercicio_1_2

-- SELECT Aluguel.Protocolo AS A, Cliente.Nome AS C, Modelo.Nome AS M
-- FROM Aluguel,Cliente,Modelo
-- WHERE P.IdAluguel = Email.IdPessoa AND P.IdPessoa = Telefone.IdPessoa 
-- GO


--SELECT 
-- FROM Aluguel, Cliente, Modelo
-- WHERE Pessoa.IdPessoa = Email.IdPessoa AND Pessoa.IdPessoa = Telefone.IdPessoa 
-- GO

-- ORDER: ORDENAR EM ORDEM ALFABÉTICA.
-- DESC: ORDENAR DE FORMA REVERSA.



-- DQL ( JOIN )
SELECT
Aluguel.IdAluguel,
Cliente.Nome, 
Modelo.Nome

FROM
Aluguel 

INNER JOIN Cliente on Aluguel.IdCliente = Cliente.IdCliente 
INNER JOIN Veiculo on Aluguel.IdVeiculo = Veiculo.IdVeiculo
INNER JOIN Modelo on Modelo.IdModelo = Veiculo.IdModelo


SELECT * FROM Cliente
SELECT * FROM Empresa
SELECT * FROM Marca
SELECT * FROM Modelo
SELECT * FROM Veiculo
SELECT * FROM Aluguel
