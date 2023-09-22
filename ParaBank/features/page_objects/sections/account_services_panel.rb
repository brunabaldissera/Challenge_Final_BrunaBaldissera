module Sections
    class Account_Services < SitePrism::Section
      element :open_new_account_link, :xpath, '//a[contains(text(), "Open New Account")]'
      element :accounts_overview_link, :xpath, '//a[contains(text(), "Accounts Overview")]'
      element :transfer_funds_link, :xpath, '//a[contains(text(), "Transfer Funds")]'
      element :bill_pay_link, :xpath, '//a[contains(text(), "Bill Pay")]'
      element :find_transactions_link, :xpath, '//a[contains(text(), "Find Transactions")]'
      element :update_contact_info_link, :xpath, '//a[contains(text(), "Update Contact Info")]'
      element :request_loan_link, :xpath, '//a[contains(text(), "Request Loan")]'
      element :log_out_link, :xpath, '//a[contains(text(), "Log Out")]'
    end
end