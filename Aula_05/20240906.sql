--USE Juncao;

/*Produto Cartesiano*/
--CREATE TABLE Cargo( 
--		Cd_Cargo CHAR(3) PRIMARY KEY,
--		Cargo VARCHAR(50) NOT NULL);

--INSERT INTO Cargo(Cd_Cargo, Cargo) VALUES 
--			('C01', 'Presidente'),
--			('C02', 'Diretor'),
--			('C03', 'Gerente');

--CREATE TABLE Empregado(
--		Matricula CHAR(3) PRIMARY KEY,
--		Nome VARCHAR(50) NOT NULL,
--		Cd_Cargo CHAR(3) NOT NULL
--		REFERENCES Cargo(Cd_Cargo));

--INSERT INTO Empregado(Matricula, Nome, Cd_Cargo) VALUES
--			('E01', 'Pedro', 'C01'),
--			('E02', 'Paulo', 'C02');

--DROP TABLE Empregado;

--CREATE TABLE Empregado2(
--		Matricula CHAR(3) PRIMARY KEY,
--		Nome VARCHAR(50) NOT NULL,
--		Cd_Cargo CHAR(3) NOT NULL
--		REFERENCES Cargo(Cd_Cargo));

--INSERT INTO Empregado2(Matricula, Nome, Cd_Cargo) VALUES
--			('E02', 'Paulo', 'C02'),
--			('E03', 'Don Diego', 'C01'),
--			('E04', 'Zorro' , 'C02');


--SELECT * FROM Empregado2;

--SELECT * FROM Empregado, Cargo WHERE Empregado.Cd_Cargo = Cargo.Cd_Cargo;



/*União Parcial*/
-- Filtra os valores iguais de cada tabela.

--SELECT * FROM Empregado UNION SELECT * FROM Empregado2;

/*União Total*/
-- Junta todos os valores das tabelas A e B;

--SELECT * FROM Empregado UNION ALL SELECT * FROM Empregado2;


/*Interseção (Inerjoin)*/
--Filtra os valores que existem entra as duas tabelas A e B;

--SELECT * FROM Empregado INTERSECT SELECT * FROM Empregado2;


/*Diferença*/
-- Filtra os elementos que existem somente na tabela A.

--SELECT * FROM Empregado EXCEPT SELECT * FROM Empregado2;


/*Junção*/

--CREATE TABLE marcas(marca VARCHAR(50),
--					nome VARCHAR(50));

--DROP TABLE marcas;

--INSERT INTO marcas(marca, nome) VALUES
--			('VW','Volkswagem'),
--			('Ford','Ford'),
--			('GM','General Motors'),
--			('Fiat','Fiat'),
--			('Renault',' Renault'),
--			('MB','Mercedes-Benz');


--SELECT * FROM marcas;

--CREATE TABLE carros ( modelo VARCHAR (100),
--					  marca VARCHAR (50),
--					  ano INTEGER,
--			          cor VARCHAR (20));

--INSERT INTO carros( modelo, marca, ano, cor ) VALUES
--				( 'Fox' ,'VW' ,2005 ,'preto' ),
--				( 'Ecosport','Ford' ,2009 ,'verde' ),
--				( 'KA' ,'Ford' ,2008 ,'prata' ),
--				( 'Punto' ,'Fiat' ,2008 ,'branco'),
--				( 'Uno' ,'Fiat' ,2007 ,'preto' ),
--				( 'Stilo' ,'Fiat' ,2004 ,'prata' ),
--				( 'Uno' ,'Fiat' ,2009 ,'branco'),
--				( '207' ,'Peugeot' ,2010 ,'prata' ),
--				( '300 C' ,'Chrysler',2008 ,'verde' );--SELECT * FROM carros;/*Tipos de Junção*//*INNER JOIN*/--SELECT marcas.nome, carros.modelo FROM marcas INNER JOIN carros ON carros.marca = marcas.marca;/*LEFT [OUTER] JOIN*/--SELECT m.nome, c.modelo --FROM marcas AS m --LEFT JOIN carros AS c ON c.marca = m.marca;/*RIGHT [OUTER] JOIN*/--SELECT m.nome, c.modelo
--FROM marcas AS m
--RIGHT JOIN carros AS c ON c.marca = m.marca;/*FULL [OUTER] JOIN*/--SELECT m.nome, c.modelo
--FROM marcas AS m
--FULL JOIN carros AS c ON c.marca = m.marca;/*CROSS JOIN*/--SELECT m.nome, c.modelo
--FROM marcas AS m
--CROSS JOIN carros AS c;

/*Exercicio_01*/

--CREATE TABLE cliente(Cd_Cliente INT IDENTITY(1001, 1) PRIMARY KEY NOT NULL,
--					Nm_Cliente VARCHAR(50) NOT NULL);

--SELECT * FROM cliente;

--CREATE TABLE pedido
--			(Nr_Pedido INTEGER NOT NULL IDENTITY,
--			Dt_Pedido DATE NOT NULL,
--			Cd_Cliente INTEGER NOT NULL,
--			CONSTRAINT PK_Pedido PRIMARY KEY(Nr_Pedido),
--			CONSTRAINT FK_Cliente  FOREIGN KEY(Cd_Cliente) 
--			REFERENCES Cliente(Cd_Cliente));


--SELECT * FROM pedido;


--CREATE TABLE produto( Cd_Produto INT IDENTITY PRIMARY KEY,
					--Ds_Produto VARCHAR(50) NOT NULL,
					--Preco DECIMAL(5,2) NOT NULL );
----------------------------------------------------------------------
--CREATE TABLE pedidoproduto( Nr_Pedido INT REFERENCES pedido(Nr_Pedido) NOT NULL, 
--							Cd_Produto INT REFERENCES produto(Cd_Produto) NOT NULL ,
--							Quantidade INT,
--							Preco DECIMAL(5,2) NOT NULL,
--							PRIMARY KEY (Nr_Pedido,Cd_Produto));

--INSERT INTO cliente ( Nm_Cliente ) VALUES
--				( 'PEDRO' ),
--				( 'CARLOS' ),
--				( 'MARIA' );
------------------------------------------------------------
--INSERT INTO pedido ( Dt_Pedido, Cd_Cliente ) VALUES
--				( '02/11/2010',1001 ),
--				( '05/11/2010',1001 ),
--				( '07/11/2010',1001 ),
--				( '08/11/2010',1002 );

--INSERT INTO produto( Ds_Produto, Preco) VALUES
--				( 'MOUSE' ,180 ),
--				( 'TECLADO',120 ),
--				( 'MONITOR',550 );

--INSERT INTO pedidoproduto(Nr_Pedido, Cd_Produto, Quantidade, Preco ) VALUES
--						( 1, 1, 10, 150 ),
--						( 1, 2, 15, 120 ),
--						( 1, 3, 20, 530 ),
--						( 2, 1, 5 , 140 ),
--						( 2, 2, 8 , 130 ),
--						( 3, 1, 3 , 150 ),
--						( 3, 2, 7 , 130 ),
--						( 3, 3, 11, 570 ),
--						( 4, 1, 13, 145 ),
--						( 4, 2, 17, 135 );

--SELECT CLI.Cd_Cliente, CLI.Nm_Cliente, PED.Nr_Pedido, PED.Dt_Pedido FROM CLIENTE AS CLI, PEDIDO AS PED WHERE CLI.Cd_Cliente = PED.Cd_Cliente;
--SELECT CLI.Cd_Cliente, CLI.Nm_Cliente, PED.Nr_Pedido, PED.Dt_Pedido FROM CLIENTE AS CLI INNER JOIN PEDIDO AS PED ON CLI.Cd_Cliente = PED.Cd_Cliente;
--SELECT PED.Nr_Pedido, CONVERT(char, PED.Dt_Pedido, 103), CLI.Nm_Cliente, ITEM.Cd_Produto, ITEM.Quantidade, ITEM.Preco FROM Pedido AS PED, Cliente AS CLI, PedidoProduto AS ITEM WHERE CLI.Cd_Cliente = PED.Cd_Cliente AND PED.Nr_Pedido = ITEM.Nr_Pedido;

--SELECT 
--	PED.Nr_Pedido, 
--	CONVERT(char,PED.Dt_Pedido,103), 
--	CLI.Nm_Cliente,
--	ITEM.Cd_Produto, 
--	ITEM.Quantidade,
--	ITEM.Preco
--	FROM Pedido AS PED
--INNER JOIN Cliente AS CLI ON PED.Cd_Cliente = CLI.Cd_Cliente
--INNER JOIN PedidoProduto AS ITEM ON PED.Nr_Pedido = ITEM.Nr_Pedido;