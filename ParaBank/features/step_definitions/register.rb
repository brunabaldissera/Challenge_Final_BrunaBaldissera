Dado('que esteja na página de cadastro') do
    steps %{
        Dado que esteja na página inicial
        Quando acessa o link para criação de nova conta
    }
    @register = Pages::RegisterPage.new
    @register.load
end
  
Quando('tenta se cadastrar com dados válidos') do

    data_form = Factory::Dynamic.valid_register_data

    @register.register_panel.register_user(
        data_form[:first_name],
        data_form[:last_name],
        data_form[:address],
        data_form[:city],
        data_form[:state],
        data_form[:zip_code],
        data_form[:phone],
        data_form[:ssn],
        data_form[:user],
        data_form[:password],
        data_form[:password]
    )
end
  
Então('exibe a mensagem de conta criada com sucesso') do
    expect(@register.register_panel.success_message).to be_visible
end
  
Quando('tenta se cadastrar com campos vazios') do
    data_form = Factory::Static.empty_register_data

    @register.register_panel.register_user(
        data_form[:first_name],
        data_form[:last_name],
        data_form[:address],
        data_form[:city],
        data_form[:state],
        data_form[:zip_code],
        data_form[:phone],
        data_form[:ssn],
        data_form[:user],
        data_form[:password],
        data_form[:password]
    )
end
  
Então('exibe as mensagens de erro apropriadas para cadastro') do
    
    error_messages = {
        'first_name_required' => 'First name is required.',
        'last_name_required' => 'Last name is required.',
        'address_required' => 'Address is required.',
        'city_required' => 'City is required.',
        'state_required' => 'State is required.',
        'zip_code_required' => 'Zip Code is required.',
        'ssn_required' => 'Social Security Number is required.',
        'username_required' => 'Username is required.',
        'password_required' => 'Password is required.',
    }

    error_messages.each do |field, message|
        expect(page).to have_content(message)
    end
end
  
Quando('tenta se cadastrar com senhas diferentes') do
    data_form = Factory::Dynamic.invalid_register_data

    @register.register_panel.register_user(
        data_form[:first_name],
        data_form[:last_name],
        data_form[:address],
        data_form[:city],
        data_form[:state],
        data_form[:zip_code],
        data_form[:phone],
        data_form[:ssn],
        data_form[:user],
        data_form[:password1],
        data_form[:password2]
    )
end

Então('exibe a mensagem de erro apropriada de senhas diferentes') do
    error_message = 'Password confirmation is required.'
    expect(page).to have_content(error_message)
end

Quando('tenta se cadastrar com dados de usuário já cadastrado') do
    data_form = Factory::Static.existent_user_data

    @register.register_panel.register_user(
        data_form[:first_name],
        data_form[:last_name],
        data_form[:address],
        data_form[:city],
        data_form[:state],
        data_form[:zip_code],
        data_form[:phone],
        data_form[:ssn],
        data_form[:user],
        data_form[:password1],
        data_form[:password2]
    )
end
  
Então('exibe a mensagem de erro de usuário já existente') do
    error_message = 'This username already exists.'
    expect(page).to have_content(error_message)
end
  
