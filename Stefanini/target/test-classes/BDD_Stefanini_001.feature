# language: pt
Funcionalidade: Cadastrar usuário
	Como usuário do sistema
	Quero efetuar o cadastro de novos usuários
	Para que seja possível gerenciar e armazenar seus dados.
	
Contexto:
	Dado que tenho o endereço da página
	Dado que tenho os nomes dos usuários
	Dado que tenho os emails dos usuários
	Dado que tenho as senha dos usuários
	
Cenário: Acessar a página de cadastro
	Quando acesso a página
	E a página carrega
	Então apresenta modal pra preenchimento de nome, email e senha.
	
Cenário: Não preencher o nome
	Quando acesso a página
	E preencho o email e senha
	E não preencho o nome
	E clico em cadastrar
	Então a mensagem "O campo NOME é obrigatório" é informado.
	
Cenário: Não preencher o email
	Quando acesso a página
	E preencho o nome e senha
	E não preencho o email
	E clico em cadastrar
	Então a mensagem "O campo EMAIL é obrigatório" é informado.
	
Cenário: Não preencher a senha
	Quando acesso a página
	E preencho o nome e email
	E não preencho a senha
	E clico em cadastrar
	Então a mensagem "O campo SENHA é obrigatório" é informado.
	
Cenário: Não preencher nenhum campo
	Quando acesso a página
	E clico em cadastrar, sem preencher nenhum campo
	Então as mensagens "O campo NOME é obrigatório", "O campo EMAIL é obrigatório" e "O campo SENHA é obrigatório" são informados.
	
Cenário: Não preencher o nome completo
	Quando acesso a página
	E preencho o email e senha
	E não preencho o nome completo
	E clico em cadastrar
	Então a mensagem "Por favor, insira um NOME completo" é informado.
		
Cenário: Não preencher o email corretamente
	Quando acesso a página
	E preencho o nome e senha
	E não preencho o email corretamente
	E clico em cadastrar
	Então a mensagem "Por favor, insira um EMAIL valido" é informado.
	
Cenário: Não preencher a senha corretamente
	Quando acesso a página
	E preencho o nome e email
	E não preencho a senha corretamente
	E clico em cadastrar
	Então a mensagem "A senha deve conter ao menos 8 caracteres" é informado.
	
Cenário: Cadastrar um usuário
	Quando acesso a página
	E preencho o nome <João da Silva>
	E preencho o email <joao.silva@email.com>
	E preencho a senha <12345>
	E clico em cadastrar
	Então o usuário recém cadastrado é informado na base do formulário.	
	
Cenário: Deletar um usuário
	Quando acesso a página
	E a página carrega os nomes dos usuários
	E clico em "excluir"
	Então o usuário selecionado será deletado