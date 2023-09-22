#language: pt

@regression
@bill_pay
Funcionalidade: Pagamentos
    SENDO um usuário do ParaBank
    QUERO preencher os campos de pagamento
    PARA efetuar um pagamento corretamente

    Contexto: 
        Dado que esteja na Home Page e logado no sistema
        E que acessa a Bill Pay Page

        @bill_pay_page_load
        Cenário: CT_019: Carregamento da página de pagamentos
            Então a página de pagamentos é exibida corretamente

        @valid_bill_pay
        Cenário: CT_020: Pagamento bem-sucedido
            Quando preencho o valor de pagamento com dados válidos
            Então exibe uma mensagem de pagamento realizado com sucesso

        @invalid_bill_pay
        Esquema do Cenário: CT_021: Pagamento com dados da conta inválidos
            Quando preencho o formulário de pagamento "<account>", "<verify_account>" e "<amount>" com dados inválidos
            Então exibe a mensagem de valores inválidos para pagamento

            Exemplos:
            | account     | verify_account | amount     |
            | letters     | letters        | letters    |
            | invalid     | invalid        | invalid    |
            | big_number  | big_number     | big_number |

        @empty_bill_pay
        Cenário: CT_022: Pagamento com campos vazios
            Quando tenta efetuar pagamento com campos vazios
            Então exibe as mensagens de campos vazios para pagamento

        @invalid_account_bill_pay
        Esquema do Cenário: CT_023: Pagamento com contas incompatíveis
            Quando tenta efetuar pagamento para contas que não combinam
            Então exibe a mensagem de contas incompatíveis