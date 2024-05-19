-- Função de Conversão - Graus Celsius por Fahrenheit

USE WideWorldImporters;

SELECT 
	vt.VehicleTemperatureID,
	vt.temperature AS Celsius,
	vt.temperature * 1.8 + 32 AS Fahrenheit
	FROM Warehouse.VehicleTemperatures VT;

-- Criando uma função personalizada para converter graus celcius em graus Fahrenheit

CREATE FUNCTION Warehouse.ParaFahrenheit (@Celsius DECIMAL(10,2))
	RETURNS DECIMAL(10,2)
	AS
		BEGIN
			DECLARE @Fahrenheit DECIMAL(10,2);
			SET @Fahrenheit = (@Celsius * 1.8 + 32);
			RETURN @Fahrenheit
		END

-- Utiliza a função personalizada em um Select
SELECT TOP 100 VehicleTemperatureID,
	Temperature AS Celsius,
	Warehouse.ParaFahrenheit(Temperature) AS Fahrenheit
		FROM Warehouse.VehicleTemperatures;