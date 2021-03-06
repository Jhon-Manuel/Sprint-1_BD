USE CLINICA;
GO
CREATE TABLE CLINICA(
	idClinica TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeClinica VARCHAR(30) NOT NULL,
	enderecoClinica VARCHAR(8) NOT NULL
);
GO

CREATE TABLE VETERINARIO(
	idVeterinario TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeVeterinario VARCHAR(50) NOT NULL,
);
GO

DELETE FROM VETERINARIO
WHERE idVeterinario in(9)

CREATE TABLE ESPECIEPET(
	idEspecie TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeEspecie VARCHAR(20) NOT NULL,
);
GO

CREATE TABLE RACA(
	idRaca TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeRaca VARCHAR(20) NOT NULL,
	idEspecie TINYINT FOREIGN KEY REFERENCES ESPECIEPET(idEspecie),
);
GO

CREATE TABLE DONO(
	idDono SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomeDono VARCHAR(50) NOT NULL
);
GO

CREATE TABLE PET (
	idPet SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomePet VARCHAR(25) NOT NULL,
	idRaca TINYINT FOREIGN KEY REFERENCES RACA(idRaca),
);
GO

CREATE TABLE ATENDIMENTO(
	idAtendimento SMALLINT PRIMARY KEY IDENTITY(1,1),
	idVeterinario TINYINT FOREIGN KEY REFERENCES VETERINARIO(idVeterinario),
	idPet SMALLINT FOREIGN KEY REFERENCES PET(idPet),
	dataConsulta DATE,
	idClinica TINYINT FOREIGN KEY REFERENCES CLINICA(idClinica)
);
GO


