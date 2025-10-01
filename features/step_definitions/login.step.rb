Dado('que o usuario queira se logar') do
    login.load
end

Quando('ele digitar as credenciais validas') do
  login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Entao('deve acessar o site com sucesso') do
  home.checkLoginSuccesfull
end

Quando('ele digitar o nome de usuario invalido') do
  login.userLogin(CREDENTIAL[:invalidUser][:email], CREDENTIAL[:user][:invalidUser])
end

Entao('deve mostrar erro de usuario invalido') do
  login.checkInvalidUserMessageShow
end