USE WideWorldImporters;
GO

CREATE PROCEDURE Warehouse.usp_SelecionarProdutosPorCor
	@paramColor char(20)
	AS
	SELECT Warehouse.StockItems.StockItemID,
		Warehouse.StockItems.StockItemName,
		Warehouse.StockItemHoldings.QuantityOnHand,
		Warehouse.StockItems.RecommendedRetailPrice,
		Warehouse.Colors.ColorName
		FROM Warehouse.Colors
			INNER JOIN Warehouse.StockItems ON Warehouse.Colors.ColorID = Warehouse.StockItems.ColorID
			INNER JOIN Warehouse.StockItemHoldings ON Warehouse.StockItems.StockItemID = Warehouse.StockItemHoldings.StockItemID
		WHERE ColorName = @paramColor;
GO

-- Podemos usar EXEC como EXECUTE

EXEC Warehouse.usp_SelecionarProdutosPorCor 'Black';
GO

EXEC Warehouse.usp_SelecionarProdutosPorCor 'Blue';
GO

-- Alterando o procedimento para incluir um valor padrão e tratamento de erros
ALTER PROCEDURE Warehouse.usp_SelecionarProdutosPorCor
	@paramColor char(20) = NULL
	AS
	IF @paramColor IS NULL
		BEGIN
			PRINT 'Uma cor válida de produto é necessária!'
			RETURN
		END
	SELECT Warehouse.StockItems.StockItemID,
		Warehouse.StockItems.StockItemName,
		Warehouse.StockItemHoldings.QuantityOnHand,
		Warehouse.StockItems.RecommendedRetailPrice,
		Warehouse.Colors.ColorName
		FROM Warehouse.Colors
			INNER JOIN Warehouse.StockItems ON Warehouse.Colors.ColorID = Warehouse.StockItems.ColorID
			INNER JOIN Warehouse.StockItemHoldings ON Warehouse.StockItems.StockItemID = Warehouse.StockItemHoldings.StockItemID
		WHERE ColorName = @paramColor;
GO

EXEC Warehouse.usp_SelecionarProdutosPorCor;
GO

EXEC Warehouse.usp_SelecionarProdutosPorCor 'Red';
GO

DROP PROCEDURE Warehouse.usp_SelecionarProdutosPorCor;
GO
