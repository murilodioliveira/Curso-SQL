USE LandonHotel;
GO

-- Criando novo Schema no Banco de Dados
CREATE SCHEMA RecursosHumanos;
GO

-- Movendo uma tabela para um novo Schema
ALTER SCHEMA RecursosHumanos TRANSFER dbo.Funcionarios;
GO

-- Elevando as permissões do Marcos dentro do esquema
GRANT INSERT ON SCHEMA :: RecursosHumanos TO Marcos; -- Aqui foi dado permissão ao Marcos para porder inserir dados na tabela, sem poder edita-los.
GO