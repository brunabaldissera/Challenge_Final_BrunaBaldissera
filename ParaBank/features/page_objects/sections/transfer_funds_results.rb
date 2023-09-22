module Sections
    class Transfer_Funds_Results < SitePrism::Section
        element :transfer_complete_title, :xpath, '//h1[@class="title" and text()="Transfer Complete!"]'
        element :error_message, '.ng-scope .error-message'
    end
end