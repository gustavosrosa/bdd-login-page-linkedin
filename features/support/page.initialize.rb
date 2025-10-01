Dir[File.join(File.dirname(__FILE__), 'C:\Users\gusta\OneDrive\Documentos\Gustavo Rosa\Roadmap\QA\Projeto QALizando\features\pages\login.page.rb')].each{ |file| require file }

module Page

    def login
        @login ||= LoginPage.new
    end

    def home
        @home ||= HomePage.new
    end

end