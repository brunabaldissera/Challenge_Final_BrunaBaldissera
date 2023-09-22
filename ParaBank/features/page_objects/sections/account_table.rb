module Sections
    class Account_Table < SitePrism::Section
        element :accounts_overview_heading, 'h1.title'
        elements :account_rows, 'table#accountTable tbody tr'
        element :total_balance, 'table#accountTable tbody tr td.b.ng-binding'
        element :balance_note, 'table#accountTable tfoot tr td'
    end
end