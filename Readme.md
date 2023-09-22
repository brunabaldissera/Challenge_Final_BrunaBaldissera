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
   cucumber -p default --retry 2
```

- Para abrir sem a interface gráfica, basta adicionar o argumento headless:

```
   cucumber -p default -p headless
```

### Por funcionalidade

- Também é possível executar cada um dos testes individualmente, através das tags:

@home - Página Inicial
- @home_page_load
- @access_options_leftmenu
- @access_options_buttons
- @access_options_footer

@initialize_database - Página do Administrador
- @admin_page_load
- @admin_clean_fields
- @admin_database_initialize
  
@login - Login
- @valid_login
- @invalid_login
- @empty_login_fields
- @redirect_to_forgot_login_info
- @redirect_to_register

@register - Registrar
- @valid_register
- @empty_register_data
- @existent_user_register
- @invalid_register

@account_overview - Serviços da Conta
- @access_account_services
- @log_out_service

@bill_pay - Pagamentos
- @bill_pay_page_load
- @valid_bill_pay
- @invalid_bill_pay
- @empty_bill_pay
- @invalid_account_bill_pay

@loan_request - Empréstimos
- @loan_request_page_load
- @valid_loan_request
- @invalid_values_loan_request

@transfer_funds
- @transfer_page_load
- @valid_transfer
- @invalid_transfer
- @empty_transfer

OBS.: Devido a um problema com o servidor, o site tende a cair quando executa todos os teste simultaneamente, por isso é recomendável que sejam executados de forma individual.

## 📃 Relatórios

Após a execução de cada teste, um relatório será gerado e poderá ser encontrado na pasta 'reports'.

## 🔧 Ferramentas

- Ruby
- Cucumber
- Capybara
- Selenium
- Faker
- SitePrism


Sinta-se à vontade para usar e modificar este programa de acordo com suas necessidades. Se encontrar falhas ou tiver sugestões de melhoria, por favor, entre em contato comigo.