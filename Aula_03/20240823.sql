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

--INSERT INTO Agenda(Matricula, Nome, Nascimento, Sexo, Profissao, Salario) 
--	VALUES
--	(1, 'Maria Jose da Siva', '10/02/1980', 'F', 'Medico', 1235.68),
--	(2, 'João Paulo dos Santos', '15/06/1982', 'M', 'Advogado', 1546.50),
--	(3, 'Ana Maria das Neves', '05/08/1985', 'F', 'Engenheiro', 2350.25),
--	(4, 'Silvana Maria Gonçalves', '01/10/1988', 'F', 'Medico', NULL),
--	(5, 'Ana Marisilva do Rego', '11/11/1983', 'F', 'Advogado', 1500.00),
--	(6, 'Silva Santos Guedes', '02/03/1984', 'M', 'Engenheiro', 1620.00),
--	(7, 'Carlos José dos Santos', '06/04/1986', 'M', 'Medico', NULL),
--	(8, 'Pedro Paulo Marques', '17/06/1986', 'M', 'aDVOGADO', 1600.00),
--	(9, 'Antonico Carlos da Silva', '08/06/1986', 'M', 'Engenheiro', 1930.00);

--USE Exercicios;
--SELECT * FROM Agenda;
--SELECT DISTINCT Profissao AS Profissão FROM Agenda;
--SELECT Nome AS NOME, Profissao AS PROFISSÃO FROM Agenda;
--SELECT * FROM Agenda WHERE Sexo = 'F';
--SELECT Matricula, Nome FROM Agenda ORDER BY Nome ASC;
--SELECT Matricula, Nome FROM Agenda ORDER BY Nome DESC;
--SELECT Profissao, Nome FROM Agenda ORDER BY Profissao, Nome ASC;

--Operadores Relacionais:

--SELECT * FROM Agenda WHERE Salario < 2000;
--SELECT * FROM Agenda WHERE Salario <= 2000;
--SELECT * FROM Agenda WHERE Salario > 2000;
--SELECT * FROM Agenda WHERE Salario >= 2000;
--SELECT * FROM Agenda WHERE Salario = 2000;
--SELECT * FROM Agenda WHERE Salario <> 2000;

--Operadores Logicos:

--SELECT Matricula, Nome FROM Agenda WHERE Matricula = 1 OR Matricula = 3 OR Matricula = 5 OR Matricula = 7 OR Matricula = 8;
--SELECT Matricula, Nome FROM Agenda WHERE Matricula <> 1 AND Matricula <> 3 OR Matricula <> 5 OR Matricula <> 7 OR Matricula <> 8;
--SELECT Matricula, Nome FROM Agenda WHERE Matricula IN (1, 3, 5, 7, 8);
--SELECT Matricula, Nome FROM Agenda WHERE Matricula NOT IN (1, 3, 5, 7, 8);

--Claúsula WHERE BETWEEN:

--SELECT Nome, Salario FROM Agenda WHERE Salario >= 1500 AND Salario <=2000;
--SELECT Nome, Salario FROM Agenda WHERE Salario BETWEEN 1500 AND 2000; -- BETWEEN é uma função entre faixa de valores.
--SELECT Nome, Salario FROM Agenda WHERE Salario NOT BETWEEN 1500 AND 2000;

--Claúsula Like

--SELECT Nome FROM Agenda WHERE Nome LIKE 'Silva %'; --Testa todos que tem Silva no inicio do nome
--SELECT Nome FROM Agenda WHERE Nome LIKE '% Silva %'; --Testa todos que tem Silva no meio do nome
--SELECT Nome FROM Agenda WHERE Nome LIKE '% Silva'; -- Testa todos que tem Silva no final do nome
--SELECT Nome FROM Agenda WHERE Nome LIKE 'Silva %' OR Nome LIKE '% Silva %' OR Nome LIKE '% Silva';
--SELECT Nome FROM Agenda WHERE ' ' + Nome + ' ' LIKE '% Silva %'; --concatena espaços em branco e Filtra onde o valor tiver espaço em branco entre os nomes da coluna;
--SELECT Nome, Salario FROM Agenda WHERE Salario IS NULL;
--SELECT Nome, Salario FROM Agenda WHERE Salario IS NOT NULL;

--Claúsula GROUP BY

--SELECT * FROM Agenda;
--SELECT Sexo, COUNT(*) As 'Qtd' FROM Agenda GROUP BY Sexo;
--SELECT Profissao, Sexo, COUNT(*) As 'Qtd' FROM Agenda GROUP BY Profissao, Sexo;

--SELECT Profissao, COUNT(*) As 'Qtd' FROM Agenda 
--	WHERE Profissao = 'Engenheiro'
--	GROUP BY Profissao;

--Claúsula HAVING

--SELECT Profissao, COUNT(*) As 'Qtd' FROM Agenda 
--	GROUP BY Profissao
--	HAVING Profissao = 'Engenheiro';

--Claúsula ORDER BY

--SELECT Nome, Salario FROM Agenda
--	ORDER BY Salario DESC;

--SELECT TOP(3) Nome, Salario FROM Agenda -- O valor 3 pode alternar entre a quantidade de TOP's que você deseja verificar.
--	ORDER BY Salario DESC;

--SELECT MIN(Salario), MAX(Salario) FROM Agenda;
--SELECT MIN(Salario) AS MINIMO, MAX(Salario) AS SALARIO FROM Agenda;

--SELECT Nome, Salario FROM Agenda	-- Apresentando o nome do individuo.
--	WHERE Salario = (SELECT MIN(Salario) FROM Agenda);

--SELECT Nome, Salario FROM Agenda	-- Apresentando o nome do individuo.
--	WHERE Salario = (SELECT MIN(Salario) FROM Agenda) OR
--		Salario = (SELECT MAX(Salario) FROM Agenda);

