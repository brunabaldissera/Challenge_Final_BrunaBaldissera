Dado('que acessa a Admin Page') do
    @admin_page = Pages::AdminPage.new
    @admin_page.load
end
  
Então('a página do administrador é exibida corretamente') do
    expect(@admin_page.initialize_button.visible?).to be_truthy
end

Quando('limpo o formulário e faço a submissão') do
    @admin_page.set_all_fields_to_empty
end
  
Então('aparece uma mensagem de formulário enviado') do
    expect(@admin_page.database_settings_saved_message.visible?).to be true
end
  
Quando('clico no botão Initialize') do 
    @admin_page.initialize_button.click
end
  
Então('o banco é inicializado corretamente') do
    expect(@admin_page.database_initialized_message.visible?).to be true
    @account_overview = Pages::AccountOverview.new
    @account_overview.load
end