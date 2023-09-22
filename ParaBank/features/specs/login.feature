#language: pt

@regression
@login
Funcionalidade: Login
    SENDO um usuário do ParaBank
    QUERO logar na aplicação
    PARA acessar as funcionalidades de usuário logado

    Contexto: Estar na Home Page
        Dado que esteja na página inicial

        @valid_login
        Cenário: CT_008: Login convencional válido
            Quando realiza o login com usuário válido
            Então retorna para home com usuário logado

        @invalid_login
        Cenário: CT_009: Login convencional inválido
            Quando realiza o login com usuário e senha inválidos
            Então exibe a mensagem para login inválido

        @empty_login_fields
        Esquema do Cenário: CT_010: Login com campos vazios
            Quando preenche o usuário "<user>" e preenche a senha "<password>"
            Então exibe a mensagem "<message>" para preencher os campos vazios

            Exemplos:
            | user         | password         | message       |
            | empty_user   | valid_password   | empty_login_message  |
            | valid_user   | empty_password   | empty_login_message  |

        @redirect_to_forgot_login_info
        Cenário: CT_011: Esquecer campos do login
            Quando esquece dos dados para logar e clica em "Forgot login info?"
            Então é redirecionado para a página de validação da conta
        
        @redirect_to_register
        Cenário: CT_012: Redirecionamento para a página de cadastro
            Quando acessa o link para criação de nova conta
            Então é redirecionado para a página de cadastro