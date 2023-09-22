require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/login_panel'
require_relative '../sections/register_panel'

module Pages
    class RegisterPage < SitePrism::Page
        set_url '/register.htm'
        
        section :header, Sections::Header, 'div#mainPanel'
        section :footer, Sections::Footer, 'div#footermainPanel'
        section :login_panel, Sections::Login_Panel, 'div#loginPanel'
        section :register_panel, Sections::Register_Panel, 'div#rightPanel'
        
    end
end