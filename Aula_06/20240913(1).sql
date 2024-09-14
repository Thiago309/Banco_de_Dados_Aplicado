--SELECT 
--	PED.Nr_Pedido,
--	CONVERT(char, PED.Dt_Pedido, 103),
--	CLI.Nm_Cliente,
--	ITEM.Cd_Produto,
--	ITEM.Quantidade,
--	ITEM.Preco 

--FROM 
--	Pedido AS PED, Cliente AS CLI, PedidoProduto AS ITEM 

--WHERE 
--	CLI.Cd_Cliente = PED.Cd_Cliente AND PED.Nr_Pedido = ITEM.Nr_Pedido;



--CREATE TABLE Empregado(Matricula INTEGER PRIMARY KEY,
--						Nome VARCHAR(50),
--						Cadastrante INTEGER REFERENCES Empregado (Matricula));

--INSERT INTO Empregado(Matricula, Nome, Cadastrante) 
--				VALUES(1, 'PEDRO', 1),
--					  (2, 'PAULO', 1),
--					  (3, 'MAURO', 1),
--					  (4, 'MARIA', 2),
--					  (5, 'KARLA', 2),
--					  (6, 'LAURA', 2);

--SELECT 
--	Emp.Matricula,
--	Emp.Nome, 
--	Emp.Cadastrante

--FROM 
--	Empregado AS Emp

--JOIN Empregado AS CAD ON EMP.Cadastrante = CAD.Matricula;

