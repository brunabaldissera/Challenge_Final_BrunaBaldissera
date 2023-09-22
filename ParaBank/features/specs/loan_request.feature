#language: pt

@regression
@loan_request
Funcionalidade: Empréstimo
    SENDO um usuário do ParaBank
    QUERO preencher os campos corretamente
    PARA ter direito a um empréstimo

    Contexto: 
        Dado que esteja na Home Page e logado no sistema
        E que acessa a Request Loan Page

        @loan_request_page_load
        Cenário: CT_024: Carregamento da página de empréstimos
            Então a página de empréstimos é exibida corretamente

        @valid_loan_request
        Cenário: CT_025: Solicitação de empréstimo bem-sucedida
            Quando preencho o formulário de empréstimo com dados válidos
            Então exibe uma mensagem de empréstimo realizado com sucesso

        @invalid_values_loan_request
        Esquema do Cenário: CT_026: Solicitação de empréstimo com valores inválidos
            Quando preencho o valor do empréstimo "<value_loan>" e pagamento inicial "<initial_payment>" incorretos
            Então exibe a mensagem "<message>" de empréstimo não realizado

            Exemplos:
            | value_loan | initial_payment | message                         |
            | letters    | letters         | error_loan_message              |
            | empty      | empty           | error_loan_message              |
            | big_value  |big_value        | insufficient_funds_loan_message |