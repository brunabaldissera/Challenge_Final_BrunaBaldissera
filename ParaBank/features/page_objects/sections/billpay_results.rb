module Sections
    class BillPay_Results < SitePrism::Section
        element :payment_complete_title, :xpath, '//h1[@class="title" and text()="Bill Payment Complete"]'
        element :payee_name_result, 'span#payeeName'
        element :amount_result, 'span#amount'
        element :from_account_result, 'span#fromAccountId'

        element :error_message, 'p.error'
        element :success_message, :xpath, '//h1[contains(text(), "Bill Payment Complete")]'
    end
end