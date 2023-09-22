Dado('que esteja na página inicial') do
    @home = Pages::HomePage.new
    @home.load
end

Então('a página inicial é exibida corretamente') do
    expect(@home.header.visible?).to be_truthy
    expect(@home.footer.visible?).to be_truthy
    expect(@home.login_panel.visible?).to be_truthy
end

Quando('acessar um link {string} do menu esquerdo') do |link_leftmenu|
    @home.header.solutions_menu.public_send(link_leftmenu).click
end

Então('deve ser redirecionado para os links do menu esquerdo {string}') do |expected_url_leftmenu|
    current_url = current_url()
    expect(current_url).to eq(expected_url_leftmenu)
end
  
Quando('acessar um link {string} do header') do |link_buttons|
    @home.header.public_send(link_buttons).click
end

Então('deve ser redirecionado para os links dos botões {string}') do |expected_url_buttons|
    current_url = current_url()
    expect(current_url).to eq(expected_url_buttons)
end

Quando('acessar um link {string} do footer') do |link_footer|
    @home.footer.public_send(link_footer).click
end

Então('deve ser redirecionado para os links do footer {string}') do |expected_url_footer|
    current_url = current_url()
    expect(current_url).to eq(expected_url_footer)
end