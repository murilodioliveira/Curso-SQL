SELECT * FROM dbo.ReservaQuartos; /*Sempre fa�a o SELECT para verificar o que voc�
										est� dando o UPDATE */+..........

UPDATE dbo.ReservaQuartos
	SET CheckInData = '2022-05-08'
	WHERE ID_RESERVA = 1;

UPDATE dbo.ReservaQuartos
	SET CheckInData = '2022-05-08'
	WHERE ID_RESERVA = 2 AND NumeroQuarto = 202;