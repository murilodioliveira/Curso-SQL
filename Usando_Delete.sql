SELECT *
	FROM dbo.Hospedes

/* Temos que ter muito cuidado ao usar esse comando, para que não seja apagado
   nenhum resgistro que não queiramos apagar. 
DELETE FROM dbo.Hospedes
	WHERE ID_HOSPEDE = 2;

	Ao usarmos um delete em um registro que está em uso em outra tabela, temos um erro:
	" A instrução DELETE conflitou com a restrição do REFERENCE "FK_[RELAÇÂO ENTRE AS TABELAS".
	  O conflito ocorreu no banco de dados "[NOME DO BANCO DE DADOS]", 
	  tabela "[TABELA QUE O REGISTRO ESTÁ SENDO USADO]", column '[ATRIBUTO]'."
*/
DELETE FROM dbo.Hospedes
	WHERE ID_HOSPEDE = 3;
/* Nesse caso temos a mensagem:
	"A instrução DELETE conflitou com a restrição do 
	  REFERENCE "FK_ReservaQuartos_Hospedes". O conflito ocorreu no banco de 
	  dados "LandonHotel", tabela "dbo.ReservaQuartos", column 'ID_Hospede'."
*/