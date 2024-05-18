/* O RIGHT define a dire��o da consulta para a direita, neste caso ele vai consultar 
	quais registros tem reserva registrada e s� mostra os registros que possuem reserva
	os que n�o tem s�o mostrados como NULL*/
SELECT
	Hospedes.NOME,
	Hospedes.SOBRENOME,
	ReservaQuartos.CheckInData,
	ReservaQuartos.CheckOutData,
	ReservaQuartos.NumeroQuarto,
	Quartos.Tipo_Cama,
	Quartos.Tarifa
	FROM Hospedes
		RIGHT JOIN ReservaQuartos ON ReservaQuartos.ID_Hospede = Hospedes.ID_HOSPEDE
		RIGHT JOIN Quartos ON Quartos.Numero_Quarto = ReservaQuartos.NumeroQuarto;
		
/* O LEFT define a dire��o da consulta para a esquerda, neste caso ele vai consultar 
	os registros de Hospedes e vai mostrar se eles tem reserva registrada e os que n�o
	tem reservas mostram os resultados como NULL */
SELECT
	Hospedes.NOME,
	Hospedes.SOBRENOME,
	ReservaQuartos.CheckInData,
	ReservaQuartos.CheckOutData,
	ReservaQuartos.NumeroQuarto,
	Quartos.Tipo_Cama,
	Quartos.Tarifa
	FROM Hospedes
		LEFT JOIN ReservaQuartos ON ReservaQuartos.ID_Hospede = Hospedes.ID_HOSPEDE
		LEFT JOIN Quartos ON Quartos.Numero_Quarto = ReservaQuartos.NumeroQuarto;