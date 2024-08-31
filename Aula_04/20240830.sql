--CREATE DATABASE exercicios;
--USE Exercicios

/*NOT NULL*/

--CREATE TABLE Pessoal(Mt_Pessoal INTEGER,
--	Nm_Pessoal VARCHAR(50) NOT NULL,
--	Sx_Pessoal CHAR(1));

--INSERT INTO Pessoal( Nm_Pessoal)
	--VALUES('Thiago');

--ALTER TABLE Pessoal ALTER COLUMN Mt_Pessoal  INTEGER NOT NULL;
--DELETE FROM Pessoal;


/*DEFAULT*/

--DROP TABLE Pessoal;

--CREATE TABLE Pessoal(Mt_Pessoal INTEGER,
--	Nm_Pessoal VARCHAR(50) NOT NULL,
--	Sx_Pessoal CHAR(1) DEFAULT('M'));

--INSERT INTO Pessoal(Mt_Pessoal, Nm_Pessoal)
--	VALUES (1002, 'Jorge');


/*PRIMARY KEY*/

--CREATE TABLE Cargo(Cd_Cargo INTEGER PRIMARY KEY,
--	Ds_Gargo VARCHAR(50) NOT NULL);

/*FOREIGN KEY*/

--DROP TABLE Pessoal;

--CREATE TABLE Pessoal(Mt_Pessoal INTEGER PRIMARY KEY,
--	Nm_Pessoal VARCHAR(50) NOT NULL,
--	Cd_Cargo INTEGER REFERENCES Cargo(Cd_Cargo));

--SELECT * FROM Cargo;

/*FOREIGN KEY CASCATA*/

/*IDENTITY*/

--CREATE TABLE Pessoal(Mt_Pessoal INTEGER IDENTITY(1000, 1),
--	Nm_Pessoal VARCHAR(50) NOT NULL,
--	Sx_Pessoal CHAR(1));

--INSERT INTO Pessoal(Nm_Pessoal, Sx_Pessoal) 
--	VALUES ('Fred', 'M');

/*SEQUENCE*/

/*UNIQUE*/

/**/
CREATE TABLE DEPENDENTE(Cd_Dependente INTEGER(100, 1) NOT NULL,
			Nome VARCHAR(50) NOT NULL,
			Sexo CHAR(1) 

SELECT * FROM Pessoal;
