-- DML

USE Exercicio_1_4

INSERT INTO Artistas(Nome)
VALUES('Carti')

INSERT INTO Estilos(Nome)
VALUES('Trap')

INSERT INTO Usuarios(Nome,Email,Senha,Permissão)
VALUES('Carter','Carti@gmail.com','7312','Usuário premium')

INSERT INTO Albuns(IdArtista,Titulo,DataLancamento,Localizacao,QtdMinutos,Ativo)
VALUES(3,'WLR','27/12/2019','Miami','70','SIM')

INSERT INTO AlbunsEstilos(IdAlbum,IdEstilo)
VALUES(3,3)

SELECT * FROM  Artistas
SELECT * FROM  Estilos
SELECT * FROM  Usuarios
SELECT * FROM  Albuns
SELECT * FROM  AlbunsEstilos
