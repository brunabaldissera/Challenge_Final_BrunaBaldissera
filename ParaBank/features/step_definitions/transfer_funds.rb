Dado('que acessa a Transfer Page') do
    @account_overview.account_services_panel.public_send(:transfer_funds_link).click
    @transfer_funds = Pages::TransferPage.new
    @transfer_funds.load
end
  
Então('a página de transferências é exibida corretamente') do
    expect(@transfer_funds.transfer_funds_form.visible?).to be_truthy
end
  
Quando('preencho o valor de transferência com dados válidos') do
    sleep 2
    data_form = Factory::Dynamic.valid_transfer_data

    @transfer_funds.transfer_funds_form.fill_transfer_form(
        data_form[:amount]
    )
end
  
Então('exibe uma mensagem de transferência realizada com sucesso') do
    expect(@transfer_funds.transfer_funds_results.visible?).to be_truthy
    expect(@transfer_funds.transfer_funds_results.transfer_complete_title.visible?).to be_truthy
end
  
Quando('preencho o formulário de transferência {string} com dados inválidos') do |amount|
    sleep 2
    data_form = Factory::Static.invalid_test_data

    @transfer_funds.transfer_funds_form.fill_transfer_form(
        data_form[amount.to_sym]
    )
end
  
Então('exibe a mensagem de valores inválidos para transferência') do
    error_message = 'Please enter a valid amount.'
    expect(page).to have_content(error_message)
end
  
Quando('tenta efetuar transferência com campos vazios') do
    data_form = Factory::Static.empty_transfer_data

    @transfer_funds.transfer_funds_form.fill_transfer_form(
        data_form[:amount]
    )
end
  
Então('exibe as mensagens de campos vazios para transferência') do
    error_message = 'The amount cannot be empty.'
    expect(page).to have_content(error_message)
end