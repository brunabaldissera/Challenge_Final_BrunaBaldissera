Dado('que acessa a Request Loan Page') do
    @account_overview.account_services_panel.public_send(:request_loan_link).click
    @request_loan = Pages::RequestLoanPage.new
    @request_loan.load
end

Então('a página de empréstimos é exibida corretamente') do
    expect(@request_loan.loan_request_form.visible?).to be_truthy
end
  
Quando('preencho o valor do empréstimo {string} e pagamento inicial {string} incorretos') do |value_loan, initial_payment|
    data_form = Factory::Static.invalid_test_data

    @request_loan.loan_request_form.fill_loan_request_form(
        data_form[value_loan.to_sym],
        data_form[initial_payment.to_sym]
    )
end
  
Então('exibe a mensagem {string} de empréstimo não realizado') do |loan_message_key|
    error_loan_message = Factory::Static.static_data_two_args('message', 'error_loan_message')
    invalid_loan_message = Factory::Static.static_data_two_args('message', 'invalid_loan_message')
    insufficient_funds_message = Factory::Static.static_data_two_args('message', 'insufficient_funds_loan_message')
    
    expected_message = case loan_message_key
    when 'error_loan_message'
      error_loan_message
    when 'invalid_loan_message'
      invalid_loan_message
    when 'insufficient_funds_loan_message'
      insufficient_funds_message
    end

    expect(@request_loan.get_error_message_loan).to eq expected_message
end

Quando('preencho o formulário de empréstimo com dados válidos') do
    data_form = Factory::Dynamic.valid_loan_data

    @request_loan.loan_request_form.fill_loan_request_form(
    data_form[:amount],
    data_form[:down_payment]
  )
end
  
Então('exibe uma mensagem de empréstimo realizado com sucesso') do
    expect(@request_loan.loan_request_results.success_message.visible?).to be_truthy
end