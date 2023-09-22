module Sections
    class Login_Panel < SitePrism::Section
        element :login_form, 'form[name="login"]'
        element :username_field, 'input[name="username"]'
        element :password_field, 'input[name="password"]'
        element :login_button, 'input[type="submit"][value="Log In"]'

        element :forgot_login_info_link, :xpath, '//a[contains(text(), "Forgot login info?")]'
        element :register_link, :xpath, '//a[contains(text(), "Register")]'
    
        def login username, password
            username_field.set username
            password_field.set password
            login_button.click
        end
    end
end