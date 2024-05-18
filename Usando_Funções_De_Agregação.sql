USE WideWorldImporters;

SELECT *
	FROM Application.StateProvinces;

-- Contar Registros

SELECT COUNT(*)
	FROM Application.StateProvinces;

-- Alias pode ser usado para dar nome a algo através de AS
SELECT COUNT(*) AS CountOfStates
	FROM Application.StateProvinces;

SELECT COUNT(*) AS CountOfStates
	FROM Application.StateProvinces
		WHERE SalesTerritory = 'Southwest';

SELECT COUNT(*) AS CountOfStates
	FROM Application.StateProvinces
		WHERE LatestRecordedPopulation > 5000000;

-- Agrupando Registos

SELECT SalesTerritory, StateProvinceName
	FROM Application.StateProvinces
		ORDER BY SalesTerritory;

SELECT SalesTerritory, COUNT(StateProvinceName) AS NumberOfStates
	FROM Application.StateProvinces
		GROUP BY SalesTerritory
		ORDER BY SalesTerritory;

-- Máximo, Mínimo e Média

SELECT MAX(*)
	FROM Application.StateProvinces;

SELECT MAX(LatestRecordedPopulation) AS MaxPopulation,
	MIN(LatestRecordedPopulation) AS MinPopulation,
	AVG(LatestRecordedPopulation) AS AvgPopulation
		FROM Application.StateProvinces;

-- Subquery ou Subconsulta

SELECT StateProvinceName, LatestRecordedPopulation
	FROM Application.StateProvinces
		WHERE LatestRecordedPopulation =
			(SELECT MAX(LatestRecordedPopulation) FROM Application.StateProvinces);

SELECT StateProvinceName, LatestRecordedPopulation
	FROM Application.StateProvinces
		WHERE LatestRecordedPopulation >=
			(SELECT AVG(LatestRecordedPopulation) FROM Application.StateProvinces);