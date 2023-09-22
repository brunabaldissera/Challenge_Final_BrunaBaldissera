module Sections
    class Transfer_Funds_Form < SitePrism::Section
      element :amount_field, 'input#amount'
      element :from_account_select, 'select#fromAccountId'
      element :to_account_select, 'select#toAccountId'
      element :transfer_button, 'input.button[value="Transfer"]'
  
        def fill_transfer_form(amount)
            amount_field.set(amount)
            from_account_select.find('option', match: :first).select_option
            to_account_select.find('option', match: :first).select_option
            transfer_button.click
        end
    end
end