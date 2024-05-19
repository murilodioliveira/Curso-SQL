USE LandonHotel;
GO

SELECT * FROM RecursosHumanos.Funcionarios;
GO

-- Adicionando máscara de Dados ao campo de E-mail

ALTER TABLE RecursosHumanos.Funcionarios
	ALTER COLUMN Email ADD MASKED WITH (Function = 'email()');
	/* Com esse parametro da mascaramento de dados, o email mario@gmail.com fica mXXX@XXXX.com */
GO
-- Para remover a mascara fazemos um DROP MASKED
ALTER TABLE RecursosHumanos.Funcionarios
	ALTER COLUMN Email DROP MASKED;
GO