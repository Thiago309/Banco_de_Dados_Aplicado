--USE master;
--CREATE DATABASE Banco2;
--USE Banco2;

--CREATE TABLE Departamento(
--	Numero INTEGER,
--	Nome VARCHAR(50),
--	Local VARCHAR(20),
--	Orcamento DECIMAL(12,2),
--	);

--INSERT INTO Departamento (Numero, Nome, Local, Orcamento) VALUES 
--(70, 'Producao', 'Recife', 10000);

--UPDATE Departamento SET Nome = 'Pessoal' WHERE Nome = 'Producao';
--DELETE FROM Departamento WHERE Nome = 'Pessoal';

--INSERT INTO Departamento (Numero, Nome, Local, Orcamento) VALUES
--(10, 'Produ��o', 'Recife', 15000),
--(20, 'Cont�bil', 'Olinda', 30000),
--(30, 'Cont�bil', 'Olinda', 40000),
--(40, 'Cont�bil', 'Recife', 50000);

--UPDATE Departamento SET Nome = 'Estoque' WHERE 
--	Nome = 'Cont�bil' AND Orcamento >= 35000;

--DELETE FROM Departamento WHERE 
--	Local = 'Recife' OR Orcamento >= 40000;

SELECT * FROM Departamento;