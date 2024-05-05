SELECT *
	FROM dbo.Quartos
	WHERE tipo_cama = 'Luxo'

SELECT Numero_Quarto,
	Tarifa
	FROM dbo.Quartos
	WHERE Tipo_Cama  = 'Luxo'

SELECT Numero_Quarto,
	Tarifa
	FROM dbo.Quartos
	WHERE Tarifa > 120;

/*
**** OPERADORES COMPARATIVOS SQL *****
	> MAIOR
	< MENOR
	>= MAIOR OU IGUAL
	<= MENOR OU IGUAL
	!= DIFERENTE
*/

SELECT Numero_Quarto,
	Tarifa
	FROM dbo.Quartos
	WHERE Tipo_Cama != 'Luxo'
	and Tarifa = 100;