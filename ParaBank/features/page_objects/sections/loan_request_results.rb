module Sections
    class Loan_Request_Results < SitePrism::Section
        element :loan_provider_name, :xpath, '//td[@id="loanProviderName"]'
        element :response_date, :xpath, '//td[@id="responseDate"]'
        element :loan_status, :xpath, '//td[@id="loanStatus"]'
        element :new_account_number_link, :xpath, '//a[@id="newAccountId"]'

        element :success_message, :xpath, '//*[@id="loanStatus" and contains(text(), "Approved")]'   
    end
end