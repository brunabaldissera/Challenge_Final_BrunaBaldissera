require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/lookup_form_panel'
require_relative '../sections/login_panel'

module Pages
    class CostumerLookup < SitePrism::Page
        set_url '/lookup.htm'

        section :header, Sections::Header, 'div#mainPanel'
        section :footer, Sections::Footer, 'div#footermainPanel'
        section :login_panel, Sections::Login_Panel, 'form#login'
        section :lookup_form_panel, Sections::Lookup_Form, 'form#lookupForm'
    end
end