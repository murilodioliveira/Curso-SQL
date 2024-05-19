-- Altera para a base de dados WideWorldImporters

USE WideWorldImporters;
GO

-- Visualiza todas as procedures em um Schema especifico

SELECT SCHEMA_NAME(SCHEMA_ID) AS NomeSchema,
	name AS NomeProcedure
	FROM sys.procedures
	ORDER BY NomeSchema;
GO

-- Criar uma procedure para identificar invent�rio
CREATE PROCEDURE Warehouse.usp_BaixoEstoque
	AS
		SELECT Warehouse.StockItems.StockItemID AS ID,
			Warehouse.StockItems.StockItemName AS 'Nome Item',
			Warehouse.StockItemHoldings.QuantityOnHand AS 'Em m�os',
			Warehouse.StockItemHoldings.ReorderLevel AS 'N�vel'
			FROM Warehouse.StockItems INNER JOIN
				Warehouse.StockItemHoldings ON Warehouse.StockItems.StockItemID = Warehouse.StockItemHoldings.StockItemID
		ORDER BY 'Em M�os'
GO

-- Executando a procedure

EXECUTE Warehouse.usp_BaixoEstoque
GO


-- Para alterar uma procedure use ALTER PROCEDURE

ALTER PROCEDURE Warehouse.usp_BaixoEstoque
	AS
	SELECT Warehouse.StockItems.StockItemID AS ID,
	Warehouse.StockItems.StockItemName AS 'Nome Item',
	Warehouse.StockItemHoldings.QuantityOnHand AS 'Em m�os',
	Warehouse.StockItemHoldings.ReorderLevel AS 'N�vel'
	FROM Warehouse.StockItems INNER JOIN
		Warehouse.StockItemHoldings ON Warehouse.StockItems.StockItemID = Warehouse.StockItemHoldings.StockItemID
WHERE ReorderLevel > QuantityOnHand
ORDER BY 'Em M�os'
GO

-- Para apagar uma procedure usamos DROP PROCEDURE

DROP PROCEDURE Warehouse.usp_BaixoEstoque
GO