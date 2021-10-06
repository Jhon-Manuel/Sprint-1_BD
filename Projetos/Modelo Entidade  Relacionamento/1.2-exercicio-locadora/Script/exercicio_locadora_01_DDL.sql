CREATE DATABASE CONCESSIONARIA;
GO

USE CONCESSIONARIA;
GO

CREATE TABLE LOCADORA(
	idEmpresa TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeEmpresa VARCHAR(100) NOT NULL
);
GO

CREATE TABLE VEICULO(
	idVeiculo SMALLINT PRIMARY KEY IDENTITY(1,1),
	idEmpresa TINYINT FOREIGN KEY REFERENCES LOCADORA(idEmpresa),
	idModelo TINYINT FOREIGN KEY REFERENCES MODELO(idModelo),
	placa VARCHAR(6) NOT NULL
);
GO

CREATE TABLE MARCA(
	idMarca TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeEmpresa VARCHAR(100) NOT NULL
);
GO

CREATE TABLE MODELO(
	idModelo TINYINT PRIMARY KEY IDENTITY(1,1),
	idMarca TINYINT FOREIGN KEY REFERENCES MARCA(idMarca),
	nomeModelo VARCHAR(20) NOT NULL,
);
GO

CREATE TABLE CLIENTE(
	idCliente SMALLINT PRIMARY KEY IDENTITY(1,1),
	nomeCliente VARCHAR(50) NOT NULL,
);
GO

CREATE TABLE ALUGUEL(
	idAluguel SMALLINT PRIMARY KEY IDENTITY(1,1),
	idCliente SMALLINT FOREIGN KEY REFERENCES CLIENTE(idCliente),
	idVeiculo SMALLINT FOREIGN KEY REFERENCES VEICULO(idVeiculo),
	dataRetirada DATE,
	dataDev DATE
);
GO