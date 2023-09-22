module Sections
    class Register_Panel < SitePrism::Section
      element :customer_form, 'form#customerForm'
      element :first_name_field, '#customer\\.firstName'
      element :last_name_field, '#customer\\.lastName'
      element :address_street_field, '#customer\\.address\\.street'
      element :city_field, '#customer\\.address\\.city'
      element :state_field, '#customer\\.address\\.state'
      element :zip_code_field, '#customer\\.address\\.zipCode'
      element :phone_number_field, '#customer\\.phoneNumber'
      element :ssn_field, '#customer\\.ssn'
      element :username_field, '#customer\\.username'
      element :password_field, '#customer\\.password'
      element :confirm_password_field, '#repeatedPassword'
      element :register_button, 'input[value="Register"]'

      element :success_message, 'p', text: 'Your account was created successfully. You are now logged in.'
  
      def register_user(first_name, last_name, address, city, state, zip_code, phone, ssn, username, password1, password2)
        first_name_field.set(first_name)
        last_name_field.set(last_name)
        address_street_field.set(address)
        city_field.set(city)
        state_field.set(state)
        zip_code_field.set(zip_code)
        phone_number_field.set(phone)
        ssn_field.set(ssn)
        username_field.set(username)
        password_field.set(password1)
        confirm_password_field.set(password2)
        register_button.click
      end
    end
end