class HomePage < SitePrism::Page
    set_url ""
    element :message, :xpath, "//*[@id='app__container']/main/h1"

    def checkLoginSuccesfull
        expect(message.text).to eql "Vamos fazer uma verificação rápida"    
    end
end