#language: pt

@regression
@register
Funcionalidade: Registrar conta
    SENDO um usuário do ParaBank
    QUERO cadastrar uma conta na aplicação
    PARA acessar as funcionalidades de usuário com conta

    Contexto: Estar na página de cadastro
        Dado que esteja na página de cadastro

        @valid_register
        Cenário: CT_013: Registro válido
            Quando tenta se cadastrar com dados válidos
            Então exibe a mensagem de conta criada com sucesso

        @empty_register_data
        Cenário: CT_014: Registro inválido por campos vazios
            Quando tenta se cadastrar com campos vazios
            Então exibe as mensagens de erro apropriadas para cadastro

        @existent_user_register
        Cenário: CT_015: Registro inválido por usuário já cadastrado
            Quando tenta se cadastrar com dados de usuário já cadastrado
            Então exibe a mensagem de erro de usuário já existente

        @invalid_register
        Cenário: CT_016: Registro inválido por senhas diferentes
            Quando tenta se cadastrar com senhas diferentes
            Então exibe a mensagem de erro apropriada de senhas diferentes