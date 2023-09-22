require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/account_services_panel'
require_relative '../sections/transfer_funds_form'
require_relative '../sections/transfer_funds_results'

module Pages
    class TransferPage < SitePrism::Page
        set_url '/transfer.htm'
        
        section :header, Sections::Header, 'div#mainPanel'
        section :footer, Sections::Footer, 'div#footermainPanel'
        section :account_services_panel, Sections::Account_Services, 'div#leftPanel'
        section :transfer_funds_form, Sections::Transfer_Funds_Form, 'div[ng-app="TransferApp"]'
        section :transfer_funds_results, Sections::Transfer_Funds_Results, 'div[ng-if="showResult"]'

    end
end