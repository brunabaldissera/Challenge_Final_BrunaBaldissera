require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/account_services_panel'
require_relative '../sections/loan_request_form'
require_relative '../sections/loan_request_results'

module Pages
    class RequestLoanPage < SitePrism::Page
        set_url '/requestloan.htm'

        section :header, Sections::Header, 'div#mainPanel'
        section :footer, Sections::Footer, 'div#footermainPanel'
        section :account_services_panel, Sections::Account_Services, 'div#leftPanel'
        section :loan_request_form, Sections::Loan_Request_Form, 'div[ng-app="RequestLoanApp"]'
        section :loan_request_results, Sections::Loan_Request_Results, 'div[ng-if="showResult"]'
        element :error_message, '.error'

        def get_error_message_loan
            error_message.text
        end  
    end
end