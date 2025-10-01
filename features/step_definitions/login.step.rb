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
  login.checkInvalidUserMessageShow("Insira um nome de usuário válido")
end

Quando('ele digitar a senha invalida') do
  login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:invalidUser][:password])
end

Entao('deve mostrar erro de senha invalido') do
  login.checkInvalid("E-mail ou senha incorreta. Tente novamente ou crie uma conta .")
end

Quando('ele digitar a senha menor de seis caracteres') do
  login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:invalidUser][:passwordMinus6Characters])
end

Entao('deve mostrar erro de senha menor de seis caracteres') do
  login.checkInvalid("A senha deve ter no mínimo 6 caracteres.")
end

Quando('ele deixar nome e senha vazios') do
  login.userLogin('', '')
end

Entao('deve mostrar erro de insercao de email ou telefone') do
  login.checkInvalidUserMessageShow("Insira um e-mail ou telefone.")
end