#language: pt

@regression
@initialize_database
Funcionalidade: Inicializar banco de dados
    SENDO um usuário do ParaBank
    QUERO inicializar o banco de dados
    PARA meus dados ficarem devidamente salvos

    Contexto: 
        Dado que esteja na página inicial
        E que acessa a Admin Page

        @admin_page_load
        Cenário: CT_005: Carregamento da página do administrador
            Então a página do administrador é exibida corretamente

        @admin_clean_fields
        Cenário: CT_006: Limpeza e submissão de formulário
            Quando limpo o formulário e faço a submissão
            Então aparece uma mensagem de formulário enviado

        @admin_database_initialize
        Cenário: CT_007: Inicializar banco de dados
            Quando clico no botão Initialize
            Então o banco é inicializado corretamente

    