#language: pt

Funcionalidade: Login

Contexto:
    Dado que o usuario queira se logar

Cenario: Login com sucesso
Quando ele digitar as credenciais validas
Entao deve acessar o site com sucesso

Cenario: Login com nome e senha vazios
Quando ele deixar nome e senha vazios
Entao deve mostrar erro de insercao de email ou telefone

Cenario: Login com nome de usuario invalido
Quando ele digitar o nome de usuario invalido
Entao deve mostrar erro de usuario invalido

Cenario: Login com senha invalida
Quando ele digitar a senha invalida
Entao deve mostrar erro de senha invalido

Cenario: Login com senha menor de seis caracteres
Quando ele digitar a senha menor de seis caracteres
Entao deve mostrar erro de senha menor de seis caracteres