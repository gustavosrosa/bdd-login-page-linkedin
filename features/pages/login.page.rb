class LoginPage < SitePrism::Page
    set_url "login/pt?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin"
    element :emailField, :id, "username"
    element :passwordField, :id, "password"
    element :loginButton, :xpath, "//button[@type='submit']"
    element :invalidUser, :id, "error-for-username"
    element :emailOrPasswordInvalid, :id, "error-for-password"

    def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end

    def checkInvalidUserMessageShow(message)
        expect(invalidUser.text).to eql (message)
    end

    def checkInvalid(message)
        expect(emailOrPasswordInvalid.text).to eql (message)
    end
end