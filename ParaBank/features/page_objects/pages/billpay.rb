require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/account_services_panel'
require_relative '../sections/billpay_form'
require_relative '../sections/billpay_results'

module Pages
    class BillPayPage < SitePrism::Page
        set_url '/billpay.htm'
        
        section :header, Sections::Header, 'div#mainPanel'
        section :footer, Sections::Footer, 'div#footermainPanel'
        section :account_services_panel, Sections::Account_Services, 'div#leftPanel'
        section :billpay_form, Sections::BillPay_Form, 'div[ng-app="BillPayApp"]'
        section :billpay_results, Sections::BillPay_Results, 'div[ng-show="showResult"]'       
    end
end