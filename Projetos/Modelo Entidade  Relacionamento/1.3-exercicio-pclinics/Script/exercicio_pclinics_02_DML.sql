USE CLINICA;
GO

SELECT * FROM ATENDIMENTO;
GO

--DELETE FROM RACA
--WHERE idRaca in(7,8,9,10,11,12,13,14,15,16,17,18);
--GO

INSERT INTO CLINICA (nomeClinica, enderecoClinica)
VALUES ('PetShower','00000111');
GO

INSERT INTO VETERINARIO (nomeVeterinario)
VALUES ('Paulo'),('Brandão'),('Daniel');
GO

INSERT INTO ESPECIEPET (nomeEspecie)
VALUES ('Cachorro'),('Gato'),('Passaro'),('Peixe');
GO

INSERT INTO RACA (nomeRaca,idEspecie)
VALUES ('Siâmes',2),('Chiuaua',1),('Azul Russo',2),('Kinguio',4),
('Pastor Alemão',1),('Platy',4);
GO

INSERT INTO DONO (nomeDono)
VALUES ('Ademil'),('Jose'),('Ayde'),('Bruno');
GO

INSERT INTO PET (nomePet, idRaca, idDono)
VALUES ('AAA-AAA',19,1),('BBB-BBB',20,1),('CCC-CCC',20,4);
GO

INSERT INTO ATENDIMENTO (idVeterinario, idPet, dataConsulta, idClinica)
VALUES (3,9,'20210801 1:30 AM',1), (2,10,'20210806 1:52 AM',1),(1,11,'20210815 2:11 AM',1);
GO