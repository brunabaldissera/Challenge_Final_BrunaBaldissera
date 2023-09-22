module Sections
    class Lookup_Form < SitePrism::Section
        element :first_name_field, '#firstName'
        element :last_name_field, '#lastName'
        element :address_street_field, '#address\\.street'
        element :city_field, '#address\\.city'
        element :state_field, '#address\\.state'
        element :zip_code_field, '#address\\.zipCode'
        element :ssn_field, '#ssn'
        element :find_login_info_button, 'input[value="Find My Login Info"]'
    end
end