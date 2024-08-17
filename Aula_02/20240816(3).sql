--USE master;
--IF DB_ID('Exercicios') IS NOT NULL
--DROP DATABASE Exercicios;
--CREATE DATABASE Exercicios;
--GO
--USE Exercicios;
--CREATE TABLE Agenda(
--	Matricula INTEGER NOT NULL UNIQUE,
--	Nome VARCHAR(50) NOT NULL,
--	Nascimento DATE NOT NULL,
--	Sexo DATE NOT NULL,
--	Profissao VARCHAR(20) NOT NULL,
--	Salario Money
--	PRIMARY KEY (Matricula)
--	);

INSERT INTO Agenda(Matricula, Nome, Nascimento, Sexo, Profissao, Salario) 
	VALUES
	(1, 'Maria Jose da Siva', '10/02/1980', 'F', 'Medico', 1235.68),
	(2, 'João Paulo dos Santos', '15/06/1982', 'M', 'Advogado', 1546.50),
	(3, 'Ana Maria das Neves', '05/08/1985', 'F', 'Engenheiro', 2350.25),
	(4, 'Silvana Maria Gonçalves', '01/10/1988', 'F', 'Medico', NULL),
	(5, 'Ana Marisilva do Rego', '11/11/1983', 'F', 'Advogado', 1500.00),
	(6, 'Silva Santos Guedes', '02/03/1984', 'M', 'Engenheiro', 1620.00),
	(7, 'Carlos José dos Santos', '06/04/1986', 'M', 'Medico', NULL),
	(8, 'Pedro Paulo Marques', '17/06/1986', 'M', 'aDVOGADO', 1600.00),
	(9, 'Antonico Carlos da Silva', '08/06/1986', 'M', 'Engenheiro', 1930.00);

--SELECT * FROM Agenda;