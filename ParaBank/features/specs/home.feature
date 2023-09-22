#language: pt

@regression
@home
Funcionalidade: Home Page
    SENDO um usuário do ParaBank
    QUERO navegar na Home Page
    PARA acessar as funcionalidades da aplicação

    Contexto: Estar na Home Page
        Dado que esteja na página inicial

        @home_page_load
        Cenário: CT_001: Carregamento da página inicial
            Então a página inicial é exibida corretamente

        @access_options_leftmenu
        Esquema do Cenário: CT_002: Acessar links do menu esquerdo
            Quando acessar um link "<link_leftmenu>" do menu esquerdo
            Então deve ser redirecionado para os links do menu esquerdo "<expected_url_leftmenu>"
        
            Exemplos:
            | link_leftmenu       | expected_url_leftmenu                                |
            | about_us_link_menu  | https://parabank.parasoft.com/parabank/about.htm     |
            | services_link_menu  | https://parabank.parasoft.com/parabank/services.htm  |
            | products_link_menu  | https://www.parasoft.com/products/                   |
            | locations_link_menu | https://www.parasoft.com/solutions/                  |
            | admin_page_link_menu| https://parabank.parasoft.com/parabank/admin.htm     |

        @access_options_buttons
        Esquema do Cenário: CT_003: Acessar links de botões no header
            Quando acessar um link "<link_buttons>" do header
            Então deve ser redirecionado para os links dos botões "<expected_url_buttons>"

            Exemplos:
            | link_buttons    | expected_url_buttons                               |
            | home_button     | https://parabank.parasoft.com/parabank/index.htm   |
            | about_us_button | https://parabank.parasoft.com/parabank/about.htm   |
            | contact_button  | https://parabank.parasoft.com/parabank/contact.htm |

        @access_options_footer
        Esquema do Cenário: CT_004: Acessar links do footer
            Quando acessar um link "<link_footer>" do footer
            Então deve ser redirecionado para os links do footer "<expected_url_footer>"

            Exemplos:
            | link_footer            | expected_url_footer                                 |
            | home_link_footer       | https://parabank.parasoft.com/parabank/index.htm    |
            | about_us_link_footer   | https://parabank.parasoft.com/parabank/about.htm    |
            | services_link_footer   | https://parabank.parasoft.com/parabank/services.htm |
            | products_link_footer   | https://www.parasoft.com/products/                  |
            | locations_link_footer  | https://www.parasoft.com/solutions/                 |
            | forum_link_footer      | https://forums.parasoft.com/                        |
            | site_map_link_footer   | https://parabank.parasoft.com/parabank/sitemap.htm  |
            | contact_us_link_footer | https://parabank.parasoft.com/parabank/contact.htm  |