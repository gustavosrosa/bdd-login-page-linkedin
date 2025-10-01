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
  login.userLogin(CREDENTIAL[:invalidUser][:email], CREDENTIAL[:invalidUser][:password])
end

Entao('deve mostrar erro de usuario invalido') do
  login.checkInvalidUserMessageShow
end

Quando('ele digitar a senha invalida') do
  login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:invalidUser][:password])
end

Entao('deve mostrar erro de senha invalido') do
  login.checkPasswordInvalid
end