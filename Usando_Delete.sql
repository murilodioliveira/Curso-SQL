SELECT *
	FROM dbo.Hospedes

/* Temos que ter muito cuidado ao usar esse comando, para que n�o seja apagado
   nenhum resgistro que n�o queiramos apagar. 
DELETE FROM dbo.Hospedes
	WHERE ID_HOSPEDE = 2;

	Ao usarmos um delete em um registro que est� em uso em outra tabela, temos um erro:
	" A instru��o DELETE conflitou com a restri��o do REFERENCE "FK_[RELA��O ENTRE AS TABELAS".
	  O conflito ocorreu no banco de dados "[NOME DO BANCO DE DADOS]", 
	  tabela "[TABELA QUE O REGISTRO EST� SENDO USADO]", column '[ATRIBUTO]'."
*/
DELETE FROM dbo.Hospedes
	WHERE ID_HOSPEDE = 3;
/* Nesse caso temos a mensagem:
	"A instru��o DELETE conflitou com a restri��o do 
	  REFERENCE "FK_ReservaQuartos_Hospedes". O conflito ocorreu no banco de 
	  dados "LandonHotel", tabela "dbo.ReservaQuartos", column 'ID_Hospede'."
*/