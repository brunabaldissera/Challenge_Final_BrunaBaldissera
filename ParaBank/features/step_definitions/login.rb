Quando('realiza o login com usuário válido') do
    username = Factory::Static.static_data_two_args('valid_user_data', 'username')
    password = Factory::Static.static_data_two_args('valid_user_data', 'password')
    @home.login_panel.login(username, password)
end
  
Então('retorna para home com usuário logado') do
    @account_overview = Pages::AccountOverview.new
    @account_overview.load

    expect(@account_overview.header.visible?).to be_truthy
    expect(@account_overview.footer.visible?).to be_truthy
    expect(@account_overview.account_services_panel.visible?).to be_truthy
end
  
Quando('realiza o login com usuário e senha inválidos') do
    data_form = Factory::Dynamic.invalid_login_data

    @home.login_panel.login(
        data_form[:username],
        data_form[:password]
    )
end

Então('exibe a mensagem para login inválido') do
    invalid_login_message = Factory::Static.static_data_two_args('message', 'invalid_login_message')
    expect(@home.get_error_message).to eq invalid_login_message
end

Quando('preenche o usuário {string} e preenche a senha {string}') do |username, password|
    username = Factory::Static.static_data_two_args('empty_user_data', 'username')
    password = Factory::Static.static_data_two_args('empty_user_data', 'password')
    @home.login_panel.login(username, password)
end

Então('exibe a mensagem {string} para preencher os campos vazios') do |empty_fields|
    empty_login_message = Factory::Static.static_data_two_args('message', empty_fields)
    expect(@home.get_error_message).to eq empty_login_message
end
 
Quando('esquece dos dados para logar e clica em "Forgot login info?"') do
    @home.login_panel.forgot_login_info_link.click
end
  
Então('é redirecionado para a página de validação da conta') do
    costumer_lookup = Pages::CostumerLookup.new
    costumer_lookup.load
end
  
Quando('acessa o link para criação de nova conta') do
    @home.login_panel.register_link.click
end
  
Então('é redirecionado para a página de cadastro') do
    register = Pages::RegisterPage.new
    register.load
end