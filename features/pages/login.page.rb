class LoginPage < SitePrism::Page
    set_url "login/pt?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin"
    element :emailField, :id, "username"
    element :passwordField, :id, "password"
    element :loginButton, :xpath, "//button[@type='submit']"

    def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end
end