-- USE Fred;
/*
SELECT * FROM cadfun;

DECLARE cursor1 SCROLL CURSOR
		FOR SELECT NOME, FUNCAO FROM cadfun

OPEN cursor1
FETCH FIRST FROM cursor1	-- BUSCA A PRIMEIRA POSICAO DA TABELA 
		FETCH ABSOLUTE 2 FROM cursor1	-- Pesquisa um posição especifica
		FETCH RELATIVE 5 FROM cursor1	-- Se move 5 casas a frente
		FETCH RELATIVE -2 FROM cursor1	-- Move 2 casas para tras
		FETCH PRIOR FROM cursor1		
CLOSE cursor1	-- Fecha o Cursor da consulta

DEALLOCATE cursor1	-- Desaloca o cursor 
*/

-- Exemplo II
/*
DECLARE @Nome CHAR(40), @fUNCAO varchar(20)
DECLARE cursor1 CURSOR	
	FOR SELECT Nome, Funcao FROM cadfun
OPEN cursor1
	FETCH NEXT FROM cursor1 INTO @Nome, @Funcao
	WHILE @@FETCH_STATUS = 0
		BEGIN
			PRINT @Nome + ' - ' + @Funcao
			FETCH NEXT FROM cursor1 INTO @Nome, @Funcao
		END
CLOSE cursor1
DEALLOCATE cursor1
*/

-- Exemplo III
/*
DECLARE @nome VARCHAR(90)
DECLARE cursor1 CURSOR
		FOR SELECT nome FROM cadfun
OPEN cursor1
	FETCH FROM cursor1 INTO @nome
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		IF CHARINDEX(' Silva ', ' '+@nome+' ')>0
			PRINT @nome

		FETCH NEXT FROM cursor1 INTO @nome
	END
CLOSE cursor1
DEALLOCATE cursor1
*/

-- Exemplo IV
/*
DECLARE @nome VARCHAR(90)
DECLARE cursor1 CURSOR
		FOR SELECT nome FROM cadfun
OPEN cursor1
	FETCH FROM cursor1 INTO @nome
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		IF LEFT(@nome, 1) = 'C'
			PRINT @nome

		FETCH NEXT FROM cursor1 INTO @nome
	END
CLOSE cursor1
DEALLOCATE cursor1
*/

-- Exemplo V
/*
DECLARE @nome VARCHAR(90)
DECLARE cursor1 CURSOR
		FOR SELECT nome FROM cadfun
OPEN cursor1
	FETCH FROM cursor1 INTO @nome
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		IF LEFT(@nome, 1) = 'C' AND right(@nome, 1) = 'S'
			PRINT @nome

		FETCH NEXT FROM cursor1 INTO @nome
	END
CLOSE cursor1
DEALLOCATE cursor1
*/

DECLARE @nome VARCHAR(90)
DECLARE cursor1 CURSOR
		FOR SELECT nome FROM cadfun
OPEN cursor1
	FETCH FROM cursor1 INTO @nome
	WHILE @@FETCH_STATUS = 0
	BEGIN 
		IF SUBSTRING(@nome, 3, 1) = 'R'
			PRINT @nome

		FETCH NEXT FROM cursor1 INTO @nome
	END
CLOSE cursor1
DEALLOCATE cursor1