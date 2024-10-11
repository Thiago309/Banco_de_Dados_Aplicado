--CREATE OR ALTER PROCEDURE SP_Escrever
--AS
--	PRINT 'Olá Pernambuco';

--EXECUTE SP_Escrever;

--CREATE OR ALTER PROCEDURE SP_Escrever
--	@Texto VARCHAR(35)
--AS
--	PRINT @Texto;

--EXECUTE SP_Escrever 'Olá Recife';

--CREATE OR ALTER PROCEDURE SP_Calcular
--	@Valor1 INTEGER, @Valor2 INTEGER
--AS
-- String com espaço;
--	PRINT 'Resultado = ' + STR(@Valor1 + @Valor2);

--PRINT 'Resultado = ' + LTRIM(STR(@Valor1 + @Valor2));

--CREATE OR ALTER PROCEDURE SP_Calcular
--@Valor1 INTEGER, @Valor2 INTEGER
--AS
--PRINT 'Resultado = ' + CAST(@Valor1 + @Valor2 AS VARCHAR);
---------------------------------------------------------------

--EXECUTE SP_Calcular 10, 5;

---------------------------------------------------------------
--CREATE OR ALTER PROCEDURE SP_ConsultarFuncao
--	@funcao VARCHAR(35) = NULL
--AS
--	IF @funcao IS NULL
--		SELECT * FROM cadfun;

--	ELSE
--		SELECT * FROM cadfun WHERE funcao = @funcao;

----------------------------------------------------------------
--EXECUTE SP_ConsultarFuncao;
-- ou
--EXECUTE SP_ConsultarFuncao 'VENDEDOR';

--CREATE OR ALTER PROCEDURE SP_ConsultarFuncao
--AS
--	DECLARE @funcao VARCHAR(35)
--	SET @funcao = 'Vendedor'
--	SELECT * FROM cadfun WHERE funcao = @funcao;

--CREATE OR ALTER PROCEDURE SP_IF
--	@nome VARCHAR(35), @sexo CHAR(1)
--AS
--	DECLARE @tratamento CHAR(5)
--	IF @sexo = 'M'
--		SET @tratamento = 'Sr. '
--	ELSE
--		SET @tratamento = 'Sra. '
--	PRINT 'Prazer ' + @tratamento + @nome;

--EXECUTE SP_IF Rafael, M;

--CREATE OR ALTER PROCEDURE SP_Contar
--	@Limite INT
--AS
--	DECLARE @x INT
--	SET @x = 1
--	WHILE (@x < = @Limite)
--		BEGIN 
--			PRINT @x
--			SET @x += 1
--		END

--CREATE OR ALTER PROCEDURE SP_Contar
--	@Limite INT
--AS
--	DECLARE @x INT
--	SET @x = 1
--	WHILE (@x < = @Limite)
--		BEGIN 
--			IF(@x % 2) = 0
--				PRINT @x
--			SET @x += 1
--		END

--CREATE OR ALTER PROCEDURE SP_Contar
--	@Limite INT, @Paridade CHAR(1)
--AS
--	IF (@Paridade != 'P' AND @Paridade != 'I')
--		PRINT 'Parâmetro desconhecido!'
--	ELSE
--		BEGIN 
--			DECLARE @x INT
--			SET @x=1
--			WHILE(@x <= @Limite)
--				BEGIN
--					IF (@Paridade='P' AND (@x % 2)=0 ) OR
--					   (@Paridade='I' AND (@x % 2)!=0)
--						PRINT @x 
--					SET @x += 1
--				END;
--		END; 

--EXECUTE SP_Contar 100, 'P'; 

--CREATE OR ALTER PROCEDURE SP_Inserir
--	@Limite INT
--AS
--	DECLARE @x INT = 1
--		WHILE (@x <= @Limite)
--			BEGIN
--				INSERT INTO TESTE
--				VALUES ('Nome ' + CAST(@x AS VARCHAR))
--				SET @x += 1
--			ENDEXECUTE SP_Inserir 