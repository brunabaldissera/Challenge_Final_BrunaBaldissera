require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/login_panel'

module Pages
    class HomePage < SitePrism::Page
        set_url '/'

        section :header, Sections::Header, 'div#mainPanel'
        section :footer, Sections::Footer, 'div#footermainPanel'
        section :login_panel, Sections::Login_Panel, 'div#loginPanel'
        element :error_message, '.error'

        def get_error_message
            error_message.text
        end
    end
end