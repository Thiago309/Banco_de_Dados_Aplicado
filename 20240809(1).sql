--CREATE DATABASE BancoDados;
--GO
--USE BancoDados;
--CREATE TABLE Departamento (
--	DeptNume INTEGER,
--	DeptNome VARCHAR(20),
--	DeptLocal VARCHAR(20),
--	DeptOrcam DECIMAL(12,2)
--	);

SELECT * FROM Departamento;

--ALTER TABLE Departamento ADD DeptSala CHAR(2);
--ALTER TABLE Departamento ALTER COLUMN DeptNome VARCHAR(50);
--ALTER TABLE Departamento DROP COLUMN DeptSala;
--DROP TABLE Departamento;