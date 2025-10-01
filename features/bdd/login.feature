#language: pt

Funcionalidade: Login

Contexto:
    Dado que o usuario queira se logar

Cenario: Login com sucesso
Quando ele digitar as credenciais validas
Entao deve acessar o site com sucesso

Cenario: Login com nome de usuario invalido
Quando ele digitar o nome de usuario invalido
Entao deve mostrar erro de usuario invalido

Cenario: Login com senha invalida
Quando ele digitar a senha invalida
Entao deve mostrar erro de senha invalido