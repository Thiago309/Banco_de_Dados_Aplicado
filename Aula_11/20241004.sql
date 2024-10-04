--IF DB_ID('Fred') IS NOT NULL
--   BEGIN
--	USE Master
--	DROP DATABASE Fred
--   END
---------------------------------------------------------------------------------   
--CREATE DATABASE Fred
--GO
---------------------------------------------------------------------------------   
--USE Fred
---------------------------------------------------------------------------------   
--CREATE TABLE cadfun (CODFUN  NUMERIC    ,
--                     NOME    VARCHAR(40),
--                     DEPTO   VARCHAR(2) ,
--                     FUNCAO  VARCHAR(20),
--                     SALARIO DECIMAL(10,2));
--GO
---------------------------------------------------------------------------------   
--INSERT INTO cadfun VALUES (1,  'CARLOS ALBERTO',   '3', 'VENDEDOR'   , 1530.00)
--INSERT INTO cadfun VALUES (2,  'MARCOS HENRIQUE',  '2', 'GERENTE'    , 1985.75)   
--INSERT INTO cadfun VALUES (3,  'APARECIDA SILVA',  '3', 'SECRETARIO' , 1200.50)   
--INSERT INTO cadfun VALUES (4,  'SILVANA PACHECO',  '5', 'SUPERVISOR' , 1599.51)   
--INSERT INTO cadfun VALUES (5,  'MARCELO SOUZA',    '3', 'ANALISTA'   , 2250.11)   
--INSERT INTO cadfun VALUES (6,  'MARISILVA NEVES',  '2', 'SECRETARIO' , 1200.50)   
--INSERT INTO cadfun VALUES (7,  'WILSON DE MACEDO', '3', 'PROGRAMADOR', 1050.00)   
--INSERT INTO cadfun VALUES (8,  'AUGUSTO SOUZA',    '3', 'PROGRAMADOR', 1050.00)   
--INSERT INTO cadfun VALUES (9,  'CARLOS BASTOS',    '5', 'VENDEDOR'   , 1530.00)
--INSERT INTO cadfun VALUES (10, 'SILVA SANTOS',     '3', 'SUPERVISOR' , 1599.51)
--INSERT INTO cadfun VALUES (11, 'ANA BASTOS',       '5', 'VENDEDOR'   , 1530.00)   
--INSERT INTO cadfun VALUES (12, 'PAULO DA SILVA',   '2', 'VENDEDOR'   , 1530.00)   
 
---------------------------------------------------------------------------------   
--SELECT * FROM cadfun;

--CREATE OR ALTER TRIGGER Controle 
--ON
--	Cadfun
--FOR
--	INSERT, UPDATE, DELETE
--AS
--	SELECT * FROM Cadfun;

--INSERT INTO Cadfun
--VALUES (98, 'Teste', '99', 'Testador', 9999.99);

--UPDATE cadfun
--SET NOME = 'Novo Teste'
--WHERE codfun = '98';

--DELETE FROM cadfun
--WHERE codfun = '99';



-- Este select retorna todos os objetos criados pelo usuario. 
--SELECT * FROM sysobjects;

-- Este select retorna todos os objetos criados pelo usuario que são triggers. 
--SELECT * 
--FROM sysobjects
--WHERE xtype = 'TR';

-- Desabilitando os Triggers
--DISABLE TRIGGER Controle ON cadfun;

-- Habilitando Triggers
--ENABLE TRIGGER Controle ON cadfun;

--Excluindo um triggers
--DROP TRIGGER mensagemI, mensagemU, mensagemD;

--CREATE TRIGGER mensagemI
--ON
--	cadfun
--FOR
--	INSERT
--AS
--	PRINT 'Registro(s) incluído(s) com sucesso!';

--CREATE TRIGGER mensagemU
--ON
--	cadfun
--FOR
--	UPDATE
--AS
--	PRINT 'Registro(s) atualizado(s) com sucesso!';

--CREATE TRIGGER mensagemD
--ON
--	cadfun
--FOR
--	DELETE
--AS
--	PRINT 'Registro(s) excluído(s) com sucesso!';



/*Tabelas temporárias*/

--CREATE OR ALTER TRIGGER mensagem
--ON
--	cadfun
--FOR
--	INSERT, UPDATE, DELETE
--AS
--	IF	EXISTS(SELECT * FROM inserted)
--		IF	EXISTS(SELECT * FROM deleted)
--			PRINT 'Registro alterado com sucesso!'
--		ELSE	
--			PRINT 'Registro incluido com sucesso!'

--	ELSE
--		PRINT 'Registro excluído com sucesso!';

--INSERT INTO Cadfun
--VALUES (100, 'Teste', '99', 'Testador', 9999.99);

--UPDATE cadfun
--SET NOME = 'Novo Teste 99'
--WHERE codfun = '99';

--DELETE FROM cadfun
--WHERE codfun = '99';

--CREATE OR ALTER TRIGGER controle
--ON
--	cadfun
--FOR
--	DELETE
--AS
--	INSERT INTO morto SELECT * FROM DELETED;

--CREATE TABLE morto (CODFUN  NUMERIC    ,
--                     NOME    VARCHAR(40),
--                     DEPTO   VARCHAR(2) ,
--                     FUNCAO  VARCHAR(20),
--                     SALARIO DECIMAL(10,2));


--SELECT * FROM cadfun;
--DELETE FROM cadfun WHERE codfun = '11';

--INSERT INTO cadfun 
--	SELECT * FROM morto;

--SELECT * FROM morto;

--DELETE FROM cadfun WHERE codfun = '11';

--SELECT * FROM morto;

--INSERT INTO cadfun SELECT * FROM morto;

--SELECT * FROM cadfun;

/*TRIGGER INSTEAD OF*/

--CREATE OR
--ALTER TRIGGER incluir
--ON
--	cadfun INSTEAD OF INSERT
--AS
--	PRINT 'Registro incluído com sucesso.';

--SELECT * FROM cadfun;

--CREATE OR ALTER TRIGGER salariovl
--ON
--	cadfun INSTEAD OF INSERT
--AS
--	IF	EXISTS(SELECT SALARIO FROM inserted WHERE SALARIO < 1000)
--		PRINT 'Inserção não Altorizada!';

--	ELSE
--		INSERT INTO cadfun SELECT * FROM inserted;

--INSERT INTO Cadfun
--VALUES (100, 'Teste', '99', 'Testador', 800.00);

--SELECT * FROM cadfun;
