# Programa de Bolsas - RealityStone - Compass

## 🚀 Sobre o projeto

Este projeto de automação da aplicação ParaBank foi desenvolvido durante a última Sprint do programa de bolsas da Compass.UOL. Ele envolveu a criação de cenários de teste com base em um mapa mental do site, utilizando Gherkin, Ruby, Cucumber, Capybara, SitePrism e Selenium. Além disso, utilizamos massa de dados estática e dinâmica (Faker).

## 🏗️ Estrutura do repositório 

O repositório está organizado de forma a facilitar a navegação e o acesso ao conhecimento adquirido ao longo da Sprint. A estrutura do repositório é a seguinte:

- /ParaBank: Contém todos os testes e arquivos necessários para execução do projeto
- /Mapa Mental: Trata-se do mapa mental da aplicação que foi testada
- Plano de Testes.pdf: É a base do projeto, onde todos os testes foram estruturados para serem automatizados

## 🔨 Preparando o ambiente para execução de testes

1. Certifique-se de ter o Ruby instalado em seu sistema. Caso não o tenha, você pode obtê-lo no site oficial [Ruby Lang](https://www.ruby-lang.org/en/documentation/installation/).
   
2. Crie uma pasta para armazenar os arquivos e abra um terminal do Git Bash a partir dessa pasta. Certifique-se de ter o Git instalado em seu computador.
   
3. Use os seguintes comandos no terminal para clonar os arquivos:

```
   git clone https://github.com/brunabaldissera/Challenge_Final_BrunaBaldissera
```
    
- Você também pode baixar o arquivo zip e descompactar em sua pasta.

4. No terminal de comando, navegue até a pasta "./ParaBank/" e execute o seguinte comando para instalar as gems necessárias:

```
   bundle install
```
- Além disso, você precisará do navegador Google Chrome e do ChromeDriver na versão compatível com seu navegador.

## 💻 Executando os testes

### Todos de uma vez

- Você pode executar todos os testes simultaneamente com o comando a seguir:

```
   cucumber -p default
```

- Para abrir sem a interface gráfica, basta adicionar o argumento headless:

```
   cucumber -p default -p headless
```

### Por funcionalidade

- Os testes podem ser realizados utilizando as tags das funcionalidades:

```
   cucumber -p default -t@home
```

<div>
    <table border="1" align="center">
        <thead>
            <tr><th>TAG</th><th>FUNCIONALIDADE</th></tr>
        </thead>
        <tbody>
            <tr><td>@home</td><td>Página Inicial</td></tr>
            <tr><td>@initialize_database</td><td>Página do Administrador</td></tr>
            <tr><td>@login</td><td>Login</td></tr>
            <tr><td>@register</td><td>Registro</td></tr>
            <tr><td>@account_overview</td><td>Serviços da Conta</td></tr>
            <tr><td>@bill_pay</td><td>Pagamentos</td></tr>
            <tr><td>@loan_request</td><td>Empréstimos</td></tr>
            <tr><td>@transfer_funds</td><td>Transferências</td></tr>
        </tbody>
    </table>
</div>

### Por cenário

- Também é possível realizar os testes por cenário:

```
   cucumber -p default -t@home_page_load
```

<div>
    <table border="1" align="center">
        <thead>
            <tr><th colspan="2" style="text-align:center">PÁGINA INICIAL</th></tr>
            <tr><th style="text-align:center" width="280">TAG</th><th style="text-align:center" width="500">CENÁRIO</th></tr>
        </thead>
        <tbody>
            <tr><td>@home_page_load</td><td>CT_001: Carregamento da Página Inicial</td></tr>
            <tr><td>@access_options_leftmenu</td><td>CT_002: Acessar Links do Menu Esquerdo</td></tr>
            <tr><td>@access_options_buttons</td><td>CT _003: Acessar Links de Botões no Header</td></tr>
            <tr><td>@access_options_footer</td><td>CT_004: Acessar Links do Footer</td></tr>
        </tbody>
    </table>
</div>

<div>
    <table border="1" align="center">
        <thead>
            <tr><th colspan="2" style="text-align:center">PÁGINA ADMINISTRADOR</th></tr>
            <tr><th style="text-align:center" width="280">TAG</th><th style="text-align:center" width="500">CENÁRIO</th></tr>
        </thead>
        <tbody>
            <tr><td>@admin_page_load</td><td>CT_005: Carregamento da Página do Administrador</td></tr>
            <tr><td>@admin_clean_fields</td><td>CT_006: Limpeza e Submissão de Formulário</td></tr>
            <tr><td>@admin_database_initialize</td><td>CT_007: Inicialização do Banco de Dados</td></tr>
        </tbody>
    </table>
</div>

<div>
    <table border="1" align="center">
        <thead>
            <tr><th colspan="2" style="text-align:center">LOGIN</th></tr>
            <tr><th style="text-align:center" width="280">TAG</th><th style="text-align:center" width="500">CENÁRIO</th></tr>
        </thead>
        <tbody>
            <tr><td>@valid_login</td><td>CT_008: Login Convencional Válido</td></tr>
            <tr><td>@invalid_login</td><td>CT_009: Login Convencional Inválido</td></tr>
            <tr><td>@empty_login_fields</td><td>CT_010: Login com Campos Vazios</td></tr>
            <tr><td>@redirect_to_forgot_login_info</td><td>CT_011: Redirecionamento para a Página de Validação da Conta</td></tr>
            <tr><td>@redirect_to_register</td><td>CT_012: Redirecionamento para a Página de Cadastro</td></tr>
        </tbody>
    </table>
</div>

<div>
    <table border="1" align="center">
        <thead>
            <tr><th colspan="2" style="text-align:center">REGISTRO</th></tr>
            <tr><th style="text-align:center" width="280">TAG</th><th style="text-align:center" width="500">CENÁRIO</th></tr>
        </thead>
        <tbody>
            <tr><td>@valid_register</td><td>CT_013: Registro Válido</td></tr>
            <tr><td>@empty_register_data</td><td>CT_014: Registro Inválido por Campos Vazios</td></tr>
            <tr><td>@existent_user_register</td><td>CT_015: Registro Inválido por Usuário Já Cadastrados</td></tr>
            <tr><td>@invalid_register</td><td>CT_016: Registro Inválido por Senhas Diferentes</td></tr>
        </tbody>
    </table>
</div>

<div>
    <table border="1" align="center">
        <thead>
            <tr><th colspan="2" style="text-align:center">SERVIÇOS DA CONTA</th></tr>
            <tr><th style="text-align:center" width="280">TAG</th><th style="text-align:center" width="500">CENÁRIO</th></tr>
        </thead>
        <tbody>
            <tr><td> @access_account_services</td><td>CT_017: Acessar Links de Serviço da Conta</td></tr>
            <tr><td>@log_out_service</td><td>CT_018: Desconectar da Conta</td></tr>
        </tbody>
    </table>
</div>

<div>
    <table border="1" align="center">
        <thead>
            <tr><th colspan="2" style="text-align:center">PAGAMENTOS</th></tr>
            <tr><th style="text-align:center" width="280">TAG</th><th style="text-align:center" width="500">CENÁRIO</th></tr>
        </thead>
        <tbody>
            <tr><td>@bill_pay_page_load</td><td>CT_019: Carregamento da Página de Pagamentos</td></tr>
            <tr><td>@valid_bill_pay</td><td>CT_020: Pagamento Bem-Sucedido</td></tr>
            <tr><td>@invalid_bill_pay</td><td>CT_021: Pagamento com Dados da Conta Inválidos</td></tr>
            <tr><td>@empty_bill_pay</td><td>CT_022: Pagamento com Campos Vazios</td></tr>
            <tr><td>@invalid_account_bill_pay</td><td>CT_023: Pagamento com Contas Incompatíveis</td></tr>
        </tbody>
    </table>
</div>

<div>
    <table border="1" align="center">
        <thead>
            <tr><th colspan="2" style="text-align:center">EMPRÉSTIMOS</th></tr>
            <tr><th style="text-align:center" width="280">TAG</th><th style="text-align:center" width="500">CENÁRIO</th></tr>
        </thead>
        <tbody>
            <tr><td>@loan_request_page_load</td><td>CT_024: Carregamento da Página de Empréstimos</td></tr>
            <tr><td>@valid_loan_request</td><td>CT_025: Solicitação de Empréstimo Bem-Sucedida</td></tr>
            <tr><td>@invalid_values_loan_request</td><td>CT_026: Solicitação de Empréstimo com Valores Inválidos</td></tr>
        </tbody>
    </table>
</div>

<div>
    <table border="1" align="center">
        <thead>
            <tr><th colspan="2" style="text-align:center">TRANSFERÊNCIAS</th></tr>
            <tr><th style="text-align:center" width="280">TAG</th><th style="text-align:center" width="500">CENÁRIO</th></tr>
        </thead>
        <tbody>
            <tr><td>@transfer_page_load</td><td>CT_027: Carregamento da Página de Transferências</td></tr>
            <tr><td>@valid_transfer</td><td>CT_028: Transferência Bem-Sucedida</td></tr>
            <tr><td>@invalid_transfer</td><td>CT_029: Transferência com Dados da Conta Inválidos</td></tr>
            <tr><td>@empty_transfer</td><td>CT_030: Transferência com Campos Vazios</td></tr>
        </tbody>
    </table>
</div>

- OBS.: Devido a um problema com o servidor, o site tende a cair quando executa todos os testes simultaneamente, por isso é recomendável que sejam executados de forma individual.

## 📃 Relatórios

Após a execução de cada teste, um relatório será gerado e poderá ser encontrado na pasta 'reports'.

## 🔧 Ferramentas e Documentação

- Ruby
  * https://www.ruby-lang.org/pt/
- Cucumber
  * https://github.com/cucumber
- Capybara
  * https://github.com/teamcapybara/capybara
- Selenium
  * https://github.com/SeleniumHQ/selenium
- Faker
  * https://github.com/faker-ruby/faker
- SitePrism
  * https://github.com/site-prism/site_prism


## 📬 Contato
### Bruna Baldissera, [enviar e-mail](mailto:bruna.baldissera.pb@compasso.com.br).

Sinta-se à vontade para usar e modificar este programa de acordo com suas necessidades. Se encontrar falhas ou tiver sugestões de melhoria, por favor, entre em contato comigo.