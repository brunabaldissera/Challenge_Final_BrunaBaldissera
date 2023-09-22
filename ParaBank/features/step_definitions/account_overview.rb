Dado('que esteja na Home Page e logado no sistema') do
    steps %{
        Dado que esteja na página inicial
        Quando realiza o login com usuário válido
        Então retorna para home com usuário logado
    }
    @account_overview = Pages::AccountOverview.new
    @account_overview.load
end

Quando('acessar o link {string} de serviços da conta') do |link_account_services|
    @account_overview.account_services_panel.public_send(link_account_services).click
end
  
Então('deve ser redirecionado para o link de serviços da conta {string}') do |expected_url_account_services|
    current_url = current_url()
    expect(current_url).to eq(expected_url_account_services)
end
  
Quando('clicar no link Log Out') do
    @account_overview.account_services_panel.public_send(:log_out_link).click
end
  
Então('deve ser desconectado e redirecionado para a Home Page') do
    expect(@home.login_panel.visible?).to be_truthy
end