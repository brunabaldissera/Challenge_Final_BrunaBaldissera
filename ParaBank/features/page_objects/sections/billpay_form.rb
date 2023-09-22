module Sections
    class BillPay_Form < SitePrism::Section
        element :payee_name_input, 'input[ng-model="payee.name"]'
        element :address_input, 'input[ng-model="payee.address.street"]'
        element :city_input, 'input[ng-model="payee.address.city"]'
        element :state_input, 'input[ng-model="payee.address.state"]'
        element :zip_code_input, 'input[ng-model="payee.address.zipCode"]'
        element :phone_number_input, 'input[ng-model="payee.phoneNumber"]'
        element :account_number_input, 'input[ng-model="payee.accountNumber"]'
        element :verify_account_input, 'input[name="verifyAccount"]'
        element :amount_input, 'input[ng-model="amount"]'
        element :from_account_select, 'select[name="fromAccountId"]'
        element :submit_button, 'input[type="submit"]'

        def fill_billpay_form(payee, address, city, state, zip_code, phone, account1, account2, amount)
            payee_name_input.set(payee)
            address_input.set(address)
            city_input.set(city)
            state_input.set(state)
            zip_code_input.set(zip_code)
            phone_number_input.set(phone)
            account_number_input.set(account1)
            verify_account_input.set(account2)
            amount_input.set(amount)
            from_account_select.find('option', match: :first).select_option
            submit_button.click
        end
    end
end