Dado('que acessa a Bill Pay Page') do
    @account_overview.account_services_panel.public_send(:bill_pay_link).click
    @bill_pay = Pages::BillPayPage.new
    @bill_pay.load
end
  
Então('a página de pagamentos é exibida corretamente') do
    expect(@bill_pay.billpay_form.visible?).to be_truthy
end
  
Quando('preencho o valor de pagamento com dados válidos') do
    data_form = Factory::Dynamic.valid_billpay_data

    @bill_pay.billpay_form.fill_billpay_form(
        data_form[:payee],
        data_form[:address],
        data_form[:city],
        data_form[:state],
        data_form[:zip_code],
        data_form[:phone],
        data_form[:account],
        data_form[:verify_account],
        data_form[:amount]
    )
end
  
Então('exibe uma mensagem de pagamento realizado com sucesso') do
    expect(@bill_pay.billpay_results.visible?).to be_truthy
    expect(@bill_pay.billpay_results.payment_complete_title.visible?).to be_truthy
end
  
Quando('preencho o formulário de pagamento {string}, {string} e {string} com dados inválidos') do |account, verify_account, amount|
    data_form1 = Factory::Dynamic.valid_billpay_data
    data_form2 = Factory::Static.invalid_test_data

    @bill_pay.billpay_form.fill_billpay_form(
        data_form1[:payee],
        data_form1[:address],
        data_form1[:city],
        data_form1[:state],
        data_form1[:zip_code],
        data_form1[:phone],
        data_form2[account.to_sym],
        data_form2[verify_account.to_sym],
        data_form2[amount.to_sym]
    )
end
  
Então('exibe a mensagem de valores inválidos para pagamento') do
    error_messages = [
        'Please enter a valid number.',
        'Please enter a valid number.',
        'Please enter a valid amount.'
    ]
end
  
Quando('tenta efetuar pagamento com campos vazios') do
    data_form = Factory::Static.empty_billpay_data

    @bill_pay.billpay_form.fill_billpay_form(
        data_form[:payee],
        data_form[:address],
        data_form[:city],
        data_form[:state],
        data_form[:zip_code],
        data_form[:phone],
        data_form[:account],
        data_form[:verify_account],
        data_form[:amount]
    )
end
  
Então('exibe as mensagens de campos vazios para pagamento') do
    error_messages = [
        'Payee name is required.',
        'Address is required.',
        'City is required.',
        'State is required.',
        'Zip Code is required.',
        'Phone number is required.',
        'Account number is required.',
        'Account number is required.',
        'The amount cannot be empty.'
    ]
    
    error_messages.each do |message|
        expect(@bill_pay.billpay_form).to have_content(message)
    end
end

Quando('tenta efetuar pagamento para contas que não combinam') do
    data_form = Factory::Dynamic.invalid_billpay_data

    @bill_pay.billpay_form.fill_billpay_form(
        data_form[:payee],
        data_form[:address],
        data_form[:city],
        data_form[:state],
        data_form[:zip_code],
        data_form[:phone],
        data_form[:account],
        data_form[:verify_account],
        data_form[:amount]
    )
end
  
Então('exibe a mensagem de contas incompatíveis') do
    error_message = 'The account numbers do not match.'
    expect(@bill_pay.billpay_form).to have_content(error_message)
end
