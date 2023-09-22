#language: pt

@regression
@account_overview
Funcionalidade: Informações da conta
    SENDO um usuário do ParaBank
    QUERO estar logado no sistema
    PARA ver minhas informações

    Contexto: 
        Dado que esteja na Home Page e logado no sistema

        @access_account_services
        Esquema do Cenário: CT_017: Acessar links de serviço da conta
            Quando acessar o link "<link_account_services>" de serviços da conta
            Então deve ser redirecionado para o link de serviços da conta "<expected_url_account_services>"
        
            Exemplos:
            | link_account_services           | expected_url_account_services                            |
            | open_new_account_link           | https://parabank.parasoft.com/parabank/openaccount.htm   |
            | accounts_overview_link          | https://parabank.parasoft.com/parabank/overview.htm      |
            | bill_pay_link                   | https://parabank.parasoft.com/parabank/billpay.htm       |
            | transfer_funds_link             | https://parabank.parasoft.com/parabank/transfer.htm      |
            | find_transactions_link          | https://parabank.parasoft.com/parabank/findtrans.htm     |
            | update_contact_info_link        | https://parabank.parasoft.com/parabank/updateprofile.htm |
            | request_loan_link               | https://parabank.parasoft.com/parabank/requestloan.htm   |

        @log_out_service
        Cenário: CT_018: Desconectar da conta
            Quando clicar no link Log Out
            Então deve ser desconectado e redirecionado para a Home Page 