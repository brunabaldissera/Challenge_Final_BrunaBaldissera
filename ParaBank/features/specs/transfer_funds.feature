#language: pt

@regression
@transfer_funds
Funcionalidade: Transferência
    SENDO um usuário do ParaBank
    QUERO preencher os dados de transferência
    PARA efetuar uma transferência corretamente

    Contexto: 
        Dado que esteja na Home Page e logado no sistema
        E que acessa a Transfer Page

        @transfer_page_load
        Cenário: CT_027: Carregamento da página de transferências
            Então a página de transferências é exibida corretamente

        @valid_transfer
        Cenário: CT_028: Transferência bem-sucedida
            Quando preencho o valor de transferência com dados válidos
            Então exibe uma mensagem de transferência realizada com sucesso

        @invalid_transfer
        Esquema do Cenário: CT_029: Transferência com dados da conta inválidos
            Quando preencho o formulário de transferência "<amount>" com dados inválidos
            Então exibe a mensagem de valores inválidos para transferência

            Exemplos:
            | amount     |
            | letters    |
            | symbols    |

        @empty_transfer
        Cenário: CT_030: Pagamento com campos vazios
            Quando tenta efetuar transferência com campos vazios
            Então exibe as mensagens de campos vazios para transferência