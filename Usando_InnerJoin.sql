SELECT * FROM Hospedes
SELECT * FROM ReservaQuartos
SELECT * FROM Quartos

SELECT
	Hospedes.NOME,
	Hospedes.SOBRENOME,
	ReservaQuartos.CheckInData,
	ReservaQuartos.CheckOutData,
	ReservaQuartos.NumeroQuarto,
	Quartos.Tipo_Cama,
	Quartos.Tarifa
	FROM Hospedes
		INNER JOIN ReservaQuartos ON ReservaQuartos.ID_Hospede = Hospedes.ID_HOSPEDE
		INNER JOIN Quartos ON Quartos.Numero_Quarto = ReservaQuartos.NumeroQuarto;