require_relative '../sections/header'
require_relative '../sections/footer'

module Pages
    class AdminPage < SitePrism::Page
        set_url '/admin.htm'

        section :header, Sections::Header, 'div#topPanel'
        section :footer, Sections::Footer, 'div#footermainPanel'

        element :initialize_button, 'button[value="INIT"]'
        element :clean_button, 'button[value="CLEAN"]'
        element :soap_endpoint_input, 'input#soapEndpoint'
        element :rest_endpoint_input, 'input#restEndpoint'
        element :loan_processor_threshold_input, 'input#loanProcessorThreshold'
        element :submit_button, 'form#adminForm input.button'
        element :init_value_input, 'input#initialBalance'

        element :database_initialized_message, :xpath, '//p[b[contains(text(),"Database Initialized")]]'
        element :database_settings_saved_message, :xpath, '//p[b[contains(text(),"Settings saved successfully.")]]' 

        def set_all_fields_to_empty
            soap_endpoint_input.set('')
            rest_endpoint_input.set('')
            init_value_input.set('10000')
            submit_button.click
        end
    end
end