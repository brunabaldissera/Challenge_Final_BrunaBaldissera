require_relative '../sections/header'
require_relative '../sections/footer'
require_relative '../sections/account_services_panel'
require_relative '../sections/account_table'

module Pages
    class AccountOverview < SitePrism::Page
        set_url '/overview.htm'
        
        section :header, Sections::Header, 'div#mainPanel'
        section :footer, Sections::Footer, 'div#footermainPanel'
        section :account_services_panel, Sections::Account_Services, 'div#leftPanel'
        section :account_table, Sections::Account_Table, 'table#accountTable'
    end
end