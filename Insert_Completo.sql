CREATE TABLE Quartos(
	ID_Quarto int IDENTITY(1,1) NOT NULL,
	Numero_Quarto char(3) NOT NULL,
	Tipo_Cama varchar(15) NOT NULL,
	Tarifa smallmoney NOT NULL
);


INSERT INTO Quartos(Numero_Quarto, Tipo_Cama, Tarifa)
VALUES
	('101', 'Luxo', 110),
	('102', 'Standart', 100),
	('103', 'Duplo', 90),
	('201', 'Luxo', 110),
	('202', 'Standart', 100),
	('203', 'Duplo', 90)

