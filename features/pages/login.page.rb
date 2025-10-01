class LoginPage < SitePrism::Page
    element :emailField, :id, "username"
    element :passwordField, :id, "password"
    element :loginButton, :xpath, "//button[@type='submit']"

    def userLogin
        emailField.set "Seu email"
        passwordField.set "Sua senha"
        loginButton.click
    end
end