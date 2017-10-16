#language: pt
#utf-8

@daily
Funcionalidade: Realizar o Cadastro, alteração e exclusão de uma Task
Eu como usuário do site suitecrm
Quero realizar o cadastro de uma task
Para logo em seguida altera-lo e exclui-lo
	
	Contexto: Usuario esteja logado no site da suitecrm
	Dado que esteja logado no site do suitecrm
	E esteja na home do site
	Então acesso a opção Activities e depois Tasks	
	
Cenario: Cadastrar uma Task
	E depois acessar a opção Create Tasks
	Então realizo o cadastro de uma Task
	
Cenario: Alterar uma Task
	Quando realizar a busca da task pelo nome
	Então eu realizo a alteração da Task

Cenario: Excluir uma Task
	Quando realizar a busca da task pelo nome novamente
	Então realizo a exclusão da Task com sucesso


