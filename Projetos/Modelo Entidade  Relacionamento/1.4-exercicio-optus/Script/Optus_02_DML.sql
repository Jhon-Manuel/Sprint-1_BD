USE OPTUS;

INSERT INTO GRAVADORA(nomeFantasia,CNPJ,endereco)
VALUES ('Optus','74009028/0001-26
','Alameda Barão de Limeira, 539 - Santa Cecilia, São Paulo - SP, 01202-001			
');

INSERT INTO TIPOUSUARIO(tipoUsuario)
VALUES ('Administrador'),('Comum');

INSERT INTO USUARIO(idGravadora,idTipoUsuario,nomeUsuario,email,senha)
VALUES (3,2,'Alexandre Tavares','alexandre@gmail.com','TAv1964'),(3,1,'Melissa Maral','melissamaral@gmail.com','maSsa38'),(3,2,'Lara Nonato','laranonato@outlook.com','laranato');

INSERT INTO ARTISTA(idUsuario,nomeArtista)
VALUES(7,'DasMaral'),(8,'MayeLara'),(6,'Alê Tavares');

INSERT INTO CONDICAO(tipoCondicao)
VALUES ('Ativo'),('Inativo');

INSERT INTO ALBUM(idArtista,idCondicao,titulo,dataLancamento,localizacao,tempo)
VALUES (6,1,'AAA','20210823 11:30 PM','São Paulo - SP','05:10'),(7,1,'BBB','20210826 10:45 AM','Rio de Janeiro - RJ','03:25'),(7,2,'CCC','20210825 15:55 PM','Curitiba - SC','03:45');

INSERT INTO TIPOESTILO(nomeEstilo)
VALUES ('Indie'),('Flok'),('Funk'),('Sertanejo');

DELETE FROM ARTISTA 
WHERE idArtista = 5;

DELETE FROM ALBUM 
WHERE idAlbum in (10,11,12);