/*Function exemplo 01 - Select*/

--CREATE FUNCTION F_Somar (@Num1 INT , @Num2 INT)
--	RETURNS INT
--AS
--	BEGIN
--		DECLARE @Soma INT
--		SET @Soma = @Num1 + @Num2
--		RETURN(@Soma)
--	END;

--SELECT dbo.F_Somar(10, 2);

--CREATE FUNCTION F_Tabela()
--	RETURNS TABLE
--AS
--	RETURN(SELECT * FROM Cadfun);

--SELECT * FROM F_Tabela();

--ALTER FUNCTION F_Media(@Nota1 FLOAT,@Nota2 FLOAT,@Nota3 FLOAT)
--	RETURNS VARCHAR(11)
--AS
--	BEGIN
--		DECLARE @Media FLOAT = (@Nota1+@Nota2+@Nota3)/3
--		RETURN(CASE
--					WHEN @Media < 5 THEN 'Reprovado'
--					WHEN @Media < 7 THEN 'Recuperação'
--					ELSE 'Aprovado'
--			  END) 
--	END;

--SELECT dbo.F_Media(5,8,7);

--CREATE TABLE ALUNO (
--	NOME VARCHAR(10),
--	NOTA1 DECIMAL(3 ,1),
--	NOTA2 DECIMAL(3 ,1),
--	NOTA3 DECIMAL(3, 1),
--	);

--INSERT INTO ALUNO (NOME, NOTA1, NOTA2, NOTA3) VALUES 
--	('Pedro', 2.0, 7.0, 4.0),
--	('Carlos', 4.0, 9.0, 6.0),
--	('Ana', 6.0, 1.0, 8.0),
--	('Paulo', 8.0, 3.0, 10.0),
--	('Maria', 10.0, 5.0, 9.0),
--	('José', 1.0, 7.0, 8.0),
--	('João', 3.0, 9.0, 7.0),
--	('Cristina', 5.0, 2.0, 6.0);

--SELECT NOME AS 'NOME', 
--	NOTA1 AS 'NOTA1', 
--	NOTA2 AS 'NOTA2', 
--	NOTA3 AS 'NOTA3', 
--	CAST((nota1+nota2+nota3)/3 AS DECIMAL(3,1)) AS 'MÉDIA', 
--	dbo.F_Media(nota1,nota2,nota3) AS 'SITUAÇÃO'
--FROM ALUNO

--CREATE VIEW V_Alunos
--AS
--SELECT NOME AS 'NOME', 
--	NOTA1 AS 'NOTA1', 
--	NOTA2 AS 'NOTA2', 
--	NOTA3 AS 'NOTA3', 
--	CAST((nota1+nota2+nota3)/3 AS DECIMAL(3,1)) AS 'MÉDIA', 
--	dbo.F_Media(nota1,nota2,nota3) AS 'SITUAÇÃO'

--FROM ALUNO

--SELECT * FROM V_Alunos;

/*Tabelas temporarias*/
--CREATE TABLE #Agenda(Telefone CHAR(10),
--					  Nome VARCHAR(50));
--INSERT INTO #Agenda
--	VALUES('1234-5678', 'Pedro'),
--		  ('2345-6789', 'Paulo'),
--		  ('3456-7890', 'Mário');
--SELECT * FROM #Agenda;