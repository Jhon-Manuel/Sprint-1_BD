USE CONCESSIONARIA;

INSERT INTO LOCADORA(nomeEmpresa)
VALUES ('Saulo Automoveis');

INSERT INTO VEICULO(idEmpresa,idModelo,placa)
VALUES ('1','2','AAA'),('1','1','BBB'),('1','3','CCC'),('1','2','DDD');

INSERT INTO MARCA(nomeEmpresa)
VALUES ('GM'),('Ford'),('Fiat');

INSERT INTO MODELO(idMarca,nomeModelo)
VALUES (1,'Onix'),(2,'Fiesta'),(1,'Argo');

INSERT INTO CLIENTE(nomeCliente)
VALUES ('Paulo'),('Gustavo'),('Rafa');

INSERT INTO ALUGUEL(idVeiculo,idCliente,dataRetirada,dataDev)
VALUES (1,1,'20210801 15:03 PM','20210802 08:00 AM'),(1,2,'20210803 13:02 PM','20210804 09:01 AM'),(3,2,'20210805 16:44 PM','20210806 09:35 AM');

SELECT * FROM MARCA
SELECT * FROM MODELO
SELECT * FROM CLIENTE
SELECT * FROM VEICULO