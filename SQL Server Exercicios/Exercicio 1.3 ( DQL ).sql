-- DQL

USE Exercicio_1_3
 
SELECT 
Clinica.IdClinica, Veterinario.Nome, Veterinario.CRMV
FROM
Clinica
INNER JOIN Veterinario ON Clinica.IdClinica = Veterinario.IdClinica

SELECT 
Raca.Descricao 

From
Raca

-- LIKE: LISTA TODOS COM UMA LETRA ESPECIFICA ( EX: S% ).
WHERE
Raca.Descricao LIKE 'S%';

SELECT
TipoPet.Descricao

FROM
TipoPet

WHERE
TipoPet.Descricao LIKE '%O';

SELECT 
Dono.Nome AS Dono, Pet.Nome

FROM
Pet 

INNER JOIN Dono ON Pet.IdDono = Dono.IdDono


SELECT
IdAtendimento,Veterinario.Nome,Pet.Nome,Raca.Descricao,TipoPet.Descricao,Dono.Nome,Clinica.Endereco

FROM
Atendimentos

INNER JOIN Veterinario ON Atendimentos.IdAtendimento = Veterinario.IdVeterinario
INNER JOIN Pet ON Atendimentos.IdAtendimento = Pet.IdPet
INNER JOIN Raca ON Pet.IdRaca = Raca.IdRaca
INNER JOIN TipoPet ON Pet.IdTipoPet = TipoPet.IdTipoPet
INNER JOIN Dono ON Pet.IdDono = Dono.IdDono
INNER JOIN Clinica ON Veterinario.IdClinica = Clinica.IdClinica


