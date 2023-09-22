module Sections
    class Loan_Request_Form < SitePrism::Section
        element :amount_field, 'input#amount'
        element :down_payment_field, 'input#downPayment'
        element :from_account_select, 'select#fromAccountId'
        element :apply_now_button, 'input.button[value="Apply Now"]'
  
        def fill_loan_request_form(amount, down_payment)
            amount_field.set(amount)
            down_payment_field.set(down_payment)
            from_account_select.find('option', match: :first).select_option
            apply_now_button.click
        end
    end
end