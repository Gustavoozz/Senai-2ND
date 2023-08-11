-- DQL

USE Exercicio_1_4

SELECT
Usuarios.IdUsuario,Usuarios.Permissão,Usuarios.Nome,Usuarios.Email

FROM
Usuarios 

Where
Usuarios.Permissão = 'Usuário Premium';

SELECT
Albuns.IdAlbum, Albuns.DataLancamento

FROM
Albuns

Where
Albuns.DataLancamento = '27/12/2019';


SELECT  
Usuarios.IdUsuario, Usuarios.Permissão, Usuarios.Nome, Usuarios.Email, Usuarios.Senha

FROM
Usuarios 

Where
Usuarios.Email = 'Carti@gmail.com' AND Usuarios.Senha = '7312'

SELECT 
Albuns.IdAlbum,Artistas.Nome,AlbunsEstilos.IdEstilo,Albuns.ativo
FROM
Albuns AS A

INNER JOIN AlbunsEstilos ON A.IdAlbum = AlbunsEstilos.IdEstilo
INNER JOIN Albuns ON Albuns.Ativo = Albuns.IdAlbum
INNER JOIN Artistas ON Albuns.IdArtista = Artistas.IdArtista

SELECT * FROM Usuarios
SELECT * FROM Albuns
SELECT * FROM Estilos
SELECT * FROM Artistas
SELECT * FROM AlbunsEstilos

